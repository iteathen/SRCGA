.class public final Ljava/time/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/time/temporal/TemporalAmount;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/TemporalAmount;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/Duration;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final ZERO:Ljava/time/Duration;

.field private static final serialVersionUID:J = 0x2aba9d02d1c4f832L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 99
    new-instance v0, Ljava/time/Duration;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljava/time/Duration;-><init>(JI)V

    sput-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    .line 115
    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    .line 119
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    const/4 v1, 0x2

    .line 120
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/time/Duration;->PATTERN:Ljava/util/regex/Pattern;

    .line 119
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 9

    .prologue
    .line 487
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-wide v2, p1

    .local v2, "seconds":J
    move v4, p3

    .local v4, "nanos":I
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 488
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Ljava/time/Duration;->seconds:J

    .line 489
    move-object v5, v1

    move v6, v4

    iput v6, v5, Ljava/time/Duration;->nanos:I

    .line 490
    return-void
.end method

.method public static between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;
    .locals 14

    .prologue
    .line 326
    move-object v1, p0

    .local v1, "startInclusive":Ljava/time/temporal/Temporal;
    move-object v2, p1

    .local v2, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v10, v1

    move-object v11, v2

    sget-object v12, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v10, v11, v12}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v10

    move-wide v3, v10

    .line 327
    .local v3, "secs":J
    const-wide/16 v10, 0x0

    move-wide v5, v10

    .line 328
    .local v5, "nanos":J
    move-object v10, v1

    sget-object v11, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/time/temporal/Temporal;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v2

    sget-object v11, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/time/temporal/Temporal;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 330
    move-object v10, v1

    :try_start_0
    sget-object v11, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    move-wide v7, v10

    .line 331
    .local v7, "startNos":J
    move-object v10, v2

    sget-object v11, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v10

    move-wide v12, v7

    sub-long/2addr v10, v12

    move-wide v5, v10

    .line 332
    move-wide v10, v3

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    move-wide v10, v5

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 333
    move-wide v10, v5

    const-wide/32 v12, 0x3b9aca00

    add-long/2addr v10, v12

    move-wide v5, v10

    .line 345
    .line 347
    .end local v7    # "startNos":J
    :cond_0
    :goto_0
    move-wide v10, v3

    move-wide v12, v5

    invoke-static {v10, v11, v12, v13}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v10

    move-object v1, v10

    .end local v1    # "startInclusive":Ljava/time/temporal/Temporal;
    return-object v1

    .line 334
    .restart local v1    # "startInclusive":Ljava/time/temporal/Temporal;
    .restart local v7    # "startNos":J
    :cond_1
    move-wide v10, v3

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    move-wide v10, v5

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    .line 335
    move-wide v10, v5

    const-wide/32 v12, 0x3b9aca00

    sub-long/2addr v10, v12

    move-wide v5, v10

    goto :goto_0

    .line 336
    :cond_2
    move-wide v10, v3

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    move-wide v10, v5

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 338
    move-object v10, v2

    :try_start_1
    sget-object v11, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide v12, v7

    invoke-interface {v10, v11, v12, v13}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v10

    move-object v9, v10

    .line 339
    .local v9, "adjustedEnd":Ljava/time/temporal/Temporal;
    move-object v10, v1

    move-object v11, v9

    sget-object v12, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v10, v11, v12}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    move-wide v3, v10

    goto :goto_0

    .line 341
    .end local v7    # "startNos":J
    .end local v9    # "adjustedEnd":Ljava/time/temporal/Temporal;
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 345
    goto :goto_0

    .line 343
    :catch_1
    move-exception v10

    move-object v7, v10

    goto :goto_0
.end method

.method private static create(JI)Ljava/time/Duration;
    .locals 10

    .prologue
    .line 474
    move-wide v1, p0

    .local v1, "seconds":J
    move v3, p2

    .local v3, "nanoAdjustment":I
    move-wide v4, v1

    move v6, v3

    int-to-long v6, v6

    or-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 475
    sget-object v4, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    move-object v1, v4

    .line 477
    .end local v1    # "seconds":J
    :goto_0
    return-object v1

    .restart local v1    # "seconds":J
    :cond_0
    new-instance v4, Ljava/time/Duration;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-wide v6, v1

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljava/time/Duration;-><init>(JI)V

    move-object v1, v4

    goto :goto_0
.end method

.method private static create(Ljava/math/BigDecimal;)Ljava/time/Duration;
    .locals 9

    .prologue
    .line 934
    move-object v1, p0

    .local v1, "seconds":Ljava/math/BigDecimal;
    move-object v4, v1

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v4

    move-object v2, v4

    .line 935
    .local v2, "nanos":Ljava/math/BigInteger;
    move-object v4, v2

    sget-object v5, Ljava/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    move-object v3, v4

    .line 936
    .local v3, "divRem":[Ljava/math/BigInteger;
    move-object v4, v3

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/16 v5, 0x3f

    if-le v4, v5, :cond_0

    .line 937
    new-instance v4, Ljava/lang/ArithmeticException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exceeds capacity of Duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 939
    :cond_0
    move-object v4, v3

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    move-object v6, v3

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "seconds":Ljava/math/BigDecimal;
    return-object v1
.end method

.method private static create(ZJJJJI)Ljava/time/Duration;
    .locals 21

    .prologue
    .line 459
    move/from16 v0, p0

    .local v0, "negate":Z
    move-wide/from16 v1, p1

    .local v1, "daysAsSecs":J
    move-wide/from16 v3, p3

    .local v3, "hoursAsSecs":J
    move-wide/from16 v5, p5

    .local v5, "minsAsSecs":J
    move-wide/from16 v7, p7

    .local v7, "secs":J
    move/from16 v9, p9

    .local v9, "nanos":I
    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    move-wide v10, v12

    .line 460
    .local v10, "seconds":J
    move v12, v0

    if-eqz v12, :cond_0

    .line 461
    move-wide v12, v10

    move v14, v9

    int-to-long v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/Duration;->negated()Ljava/time/Duration;

    move-result-object v12

    move-object v0, v12

    .line 463
    .end local v0    # "negate":Z
    :goto_0
    return-object v0

    .restart local v0    # "negate":Z
    :cond_0
    move-wide v12, v10

    move v14, v9

    int-to-long v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v12

    move-object v0, v12

    goto :goto_0
.end method

.method public static from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Duration;
    .locals 9

    .prologue
    .line 298
    move-object v1, p0

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v5, v1

    const-string v6, "amount"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 299
    sget-object v5, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    move-object v2, v5

    .line 300
    .local v2, "duration":Ljava/time/Duration;
    move-object v5, v1

    invoke-interface {v5}, Ljava/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/temporal/TemporalUnit;

    move-object v4, v5

    .line 301
    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v2

    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalAmount;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v5

    move-object v2, v5

    .line 302
    goto :goto_0

    .line 303
    .end local v4    # "unit":Ljava/time/temporal/TemporalUnit;
    :cond_0
    move-object v5, v2

    move-object v1, v5

    .end local v1    # "amount":Ljava/time/temporal/TemporalAmount;
    return-object v1
.end method

.method public static of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .locals 8

    .prologue
    .line 275
    move-wide v0, p0

    .local v0, "amount":J
    move-object v2, p2

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    sget-object v3, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    move-wide v4, v0

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "amount":J
    return-object v0
.end method

.method public static ofDays(J)Ljava/time/Duration;
    .locals 6

    .prologue
    .line 147
    move-wide v0, p0

    .local v0, "days":J
    move-wide v2, v0

    const v4, 0x15180

    invoke-static {v2, v3, v4}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "days":J
    return-object v0
.end method

.method public static ofHours(J)Ljava/time/Duration;
    .locals 6

    .prologue
    .line 162
    move-wide v0, p0

    .local v0, "hours":J
    move-wide v2, v0

    const/16 v4, 0xe10

    invoke-static {v2, v3, v4}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "hours":J
    return-object v0
.end method

.method public static ofMillis(J)Ljava/time/Duration;
    .locals 10

    .prologue
    .line 228
    move-wide v1, p0

    .local v1, "millis":J
    move-wide v6, v1

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    move-wide v3, v6

    .line 229
    .local v3, "secs":J
    move-wide v6, v1

    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    long-to-int v6, v6

    move v5, v6

    .line 230
    .local v5, "mos":I
    move v6, v5

    if-gez v6, :cond_0

    .line 231
    add-int/lit16 v5, v5, 0x3e8

    .line 232
    move-wide v6, v3

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-wide v3, v6

    .line 234
    :cond_0
    move-wide v6, v3

    move v8, v5

    const v9, 0xf4240

    mul-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "millis":J
    return-object v1
.end method

.method public static ofMinutes(J)Ljava/time/Duration;
    .locals 6

    .prologue
    .line 177
    move-wide v0, p0

    .local v0, "minutes":J
    move-wide v2, v0

    const/16 v4, 0x3c

    invoke-static {v2, v3, v4}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "minutes":J
    return-object v0
.end method

.method public static ofNanos(J)Ljava/time/Duration;
    .locals 10

    .prologue
    .line 246
    move-wide v1, p0

    .local v1, "nanos":J
    move-wide v6, v1

    const-wide/32 v8, 0x3b9aca00

    div-long/2addr v6, v8

    move-wide v3, v6

    .line 247
    .local v3, "secs":J
    move-wide v6, v1

    const-wide/32 v8, 0x3b9aca00

    rem-long/2addr v6, v8

    long-to-int v6, v6

    move v5, v6

    .line 248
    .local v5, "nos":I
    move v6, v5

    if-gez v6, :cond_0

    .line 249
    move v6, v5

    const v7, 0x3b9aca00

    add-int/2addr v6, v7

    move v5, v6

    .line 250
    move-wide v6, v3

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-wide v3, v6

    .line 252
    :cond_0
    move-wide v6, v3

    move v8, v5

    invoke-static {v6, v7, v8}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "nanos":J
    return-object v1
.end method

.method public static ofSeconds(J)Ljava/time/Duration;
    .locals 6

    .prologue
    .line 190
    move-wide v0, p0

    .local v0, "seconds":J
    move-wide v2, v0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "seconds":J
    return-object v0
.end method

.method public static ofSeconds(JJ)Ljava/time/Duration;
    .locals 14

    .prologue
    .line 213
    move-wide v1, p0

    .local v1, "seconds":J
    move-wide/from16 v3, p2

    .local v3, "nanoAdjustment":J
    move-wide v8, v1

    move-wide v10, v3

    const-wide/32 v12, 0x3b9aca00

    invoke-static {v10, v11, v12, v13}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v8

    move-wide v5, v8

    .line 214
    .local v5, "secs":J
    move-wide v8, v3

    const v10, 0x3b9aca00

    invoke-static {v8, v9, v10}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v8

    move v7, v8

    .line 215
    .local v7, "nos":I
    move-wide v8, v5

    move v10, v7

    invoke-static {v8, v9, v10}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v8

    move-object v1, v8

    .end local v1    # "seconds":J
    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/Duration;
    .locals 32

    .prologue
    .line 396
    move-object/from16 v2, p0

    .local v2, "text":Ljava/lang/CharSequence;
    move-object/from16 v21, v2

    const-string v22, "text"

    invoke-static/range {v21 .. v22}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    .line 397
    sget-object v21, Ljava/time/Duration;->PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    move-object/from16 v3, v21

    .line 398
    .local v3, "matcher":Ljava/util/regex/Matcher;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->matches()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 400
    const-string v21, "T"

    move-object/from16 v22, v3

    const/16 v23, 0x3

    invoke-virtual/range {v22 .. v23}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 401
    const-string v21, "-"

    move-object/from16 v22, v3

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v4, v21

    .line 402
    .local v4, "negate":Z
    move-object/from16 v21, v3

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v5, v21

    .line 403
    .local v5, "dayMatch":Ljava/lang/String;
    move-object/from16 v21, v3

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v6, v21

    .line 404
    .local v6, "hourMatch":Ljava/lang/String;
    move-object/from16 v21, v3

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v7, v21

    .line 405
    .local v7, "minuteMatch":Ljava/lang/String;
    move-object/from16 v21, v3

    const/16 v22, 0x6

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v8, v21

    .line 406
    .local v8, "secondMatch":Ljava/lang/String;
    move-object/from16 v21, v3

    const/16 v22, 0x7

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v9, v21

    .line 407
    .local v9, "fractionMatch":Ljava/lang/String;
    move-object/from16 v21, v5

    if-nez v21, :cond_0

    move-object/from16 v21, v6

    if-nez v21, :cond_0

    move-object/from16 v21, v7

    if-nez v21, :cond_0

    move-object/from16 v21, v8

    if-eqz v21, :cond_3

    .line 408
    :cond_0
    move-object/from16 v21, v2

    move-object/from16 v22, v5

    const v23, 0x15180

    const-string v24, "days"

    invoke-static/range {v21 .. v24}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v10, v21

    .line 409
    .local v10, "daysAsSecs":J
    move-object/from16 v21, v2

    move-object/from16 v22, v6

    const/16 v23, 0xe10

    const-string v24, "hours"

    invoke-static/range {v21 .. v24}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v12, v21

    .line 410
    .local v12, "hoursAsSecs":J
    move-object/from16 v21, v2

    move-object/from16 v22, v7

    const/16 v23, 0x3c

    const-string v24, "minutes"

    invoke-static/range {v21 .. v24}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v14, v21

    .line 411
    .local v14, "minsAsSecs":J
    move-object/from16 v21, v2

    move-object/from16 v22, v8

    const/16 v23, 0x1

    const-string v24, "seconds"

    invoke-static/range {v21 .. v24}, Ljava/time/Duration;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v16, v21

    .line 412
    .local v16, "seconds":J
    move-object/from16 v21, v8

    if-eqz v21, :cond_1

    move-object/from16 v21, v8

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/16 v21, 0x1

    :goto_0
    move/from16 v18, v21

    .line 413
    .local v18, "negativeSecs":Z
    move-object/from16 v21, v2

    move-object/from16 v22, v9

    move/from16 v23, v18

    if-eqz v23, :cond_2

    const/16 v23, -0x1

    :goto_1
    invoke-static/range {v21 .. v23}, Ljava/time/Duration;->parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v21

    move/from16 v19, v21

    .line 415
    .local v19, "nanos":I
    move/from16 v21, v4

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    move-wide/from16 v28, v16

    move/from16 v30, v19

    :try_start_0
    invoke-static/range {v21 .. v30}, Ljava/time/Duration;->create(ZJJJJI)Ljava/time/Duration;
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    move-object/from16 v2, v21

    .end local v2    # "text":Ljava/lang/CharSequence;
    return-object v2

    .line 412
    .end local v18    # "negativeSecs":Z
    .end local v19    # "nanos":I
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    .line 413
    .restart local v18    # "negativeSecs":Z
    :cond_2
    const/16 v23, 0x1

    goto :goto_1

    .line 416
    .restart local v19    # "nanos":I
    :catch_0
    move-exception v21

    move-object/from16 v20, v21

    .line 417
    .local v20, "ex":Ljava/lang/ArithmeticException;
    new-instance v21, Ljava/time/format/DateTimeParseException;

    move-object/from16 v31, v21

    move-object/from16 v21, v31

    move-object/from16 v22, v31

    const-string v23, "Text cannot be parsed to a Duration: overflow"

    move-object/from16 v24, v2

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object/from16 v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v21

    check-cast v21, Ljava/time/format/DateTimeParseException;

    throw v21

    .line 422
    .end local v4    # "negate":Z
    .end local v5    # "dayMatch":Ljava/lang/String;
    .end local v6    # "hourMatch":Ljava/lang/String;
    .end local v7    # "minuteMatch":Ljava/lang/String;
    .end local v8    # "secondMatch":Ljava/lang/String;
    .end local v9    # "fractionMatch":Ljava/lang/String;
    .end local v10    # "daysAsSecs":J
    .end local v12    # "hoursAsSecs":J
    .end local v14    # "minsAsSecs":J
    .end local v16    # "seconds":J
    .end local v18    # "negativeSecs":Z
    .end local v19    # "nanos":I
    .end local v20    # "ex":Ljava/lang/ArithmeticException;
    :cond_3
    new-instance v21, Ljava/time/format/DateTimeParseException;

    move-object/from16 v31, v21

    move-object/from16 v21, v31

    move-object/from16 v22, v31

    const-string v23, "Text cannot be parsed to a Duration"

    move-object/from16 v24, v2

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v21
.end method

.method private static parseFraction(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 10

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "parsed":Ljava/lang/String;
    move v2, p2

    .local v2, "negate":I
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 446
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 450
    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 449
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "000000000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x9

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 450
    move-object v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    move v5, v2

    mul-int/2addr v4, v5

    move v0, v4

    goto :goto_0

    .line 451
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 452
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/time/format/DateTimeParseException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Text cannot be parsed to a Duration: fraction"

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/time/format/DateTimeParseException;

    throw v4

    .line 453
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 454
    .local v3, "ex":Ljava/lang/ArithmeticException;
    new-instance v4, Ljava/time/format/DateTimeParseException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Text cannot be parsed to a Duration: fraction"

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/time/format/DateTimeParseException;

    throw v4
.end method

.method private static parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)J
    .locals 12

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "parsed":Ljava/lang/String;
    move v2, p2

    .local v2, "multiplier":I
    move-object v3, p3

    .local v3, "errorText":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 428
    const-wide/16 v6, 0x0

    move-wide v0, v6

    .line 435
    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-wide v0

    .line 431
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    move-object v6, v1

    :try_start_0
    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 432
    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 434
    :cond_1
    move-object v6, v1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v4, v6

    .line 435
    .local v4, "val":J
    move-wide v6, v4

    move v8, v2

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    move-wide v0, v6

    goto :goto_0

    .line 436
    .end local v4    # "val":J
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 437
    .local v4, "ex":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/time/format/DateTimeParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Text cannot be parsed to a Duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/time/format/DateTimeParseException;

    throw v6

    .line 438
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 439
    .local v4, "ex":Ljava/lang/ArithmeticException;
    new-instance v6, Ljava/time/format/DateTimeParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Text cannot be parsed to a Duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/time/format/DateTimeParseException;

    throw v6
.end method

.method private plus(JJ)Ljava/time/Duration;
    .locals 17

    .prologue
    .line 749
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-wide/from16 v2, p1

    .local v2, "secondsToAdd":J
    move-wide/from16 v4, p3

    .local v4, "nanosToAdd":J
    move-wide v10, v2

    move-wide v12, v4

    or-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 750
    move-object v10, v1

    move-object v1, v10

    .line 756
    .end local v1    # "this":Ljava/time/Duration;
    :goto_0
    return-object v1

    .line 752
    .restart local v1    # "this":Ljava/time/Duration;
    :cond_0
    move-object v10, v1

    iget-wide v10, v10, Ljava/time/Duration;->seconds:J

    move-wide v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v10

    move-wide v6, v10

    .line 753
    .local v6, "epochSec":J
    move-wide v10, v6

    move-wide v12, v4

    const-wide/32 v14, 0x3b9aca00

    div-long/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v10

    move-wide v6, v10

    .line 754
    move-wide v10, v4

    const-wide/32 v12, 0x3b9aca00

    rem-long/2addr v10, v12

    move-wide v4, v10

    .line 755
    move-object v10, v1

    iget v10, v10, Ljava/time/Duration;->nanos:I

    int-to-long v10, v10

    move-wide v12, v4

    add-long/2addr v10, v12

    move-wide v8, v10

    .line 756
    .local v8, "nanoAdjustment":J
    move-wide v10, v6

    move-wide v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v10

    move-object v1, v10

    goto :goto_0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/Duration;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1260
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    move-wide v1, v4

    .line 1261
    .local v1, "seconds":J
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v4

    move v3, v4

    .line 1262
    .local v3, "nanos":I
    move-wide v4, v1

    move v6, v3

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

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
    .line 1251
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toSeconds()Ljava/math/BigDecimal;
    .locals 5

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-object v1, v0

    iget-wide v1, v1, Ljava/time/Duration;->seconds:J

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/Duration;->nanos:I

    int-to-long v2, v2

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1242
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method


# virtual methods
.method public abs()Ljava/time/Duration;
    .locals 2

    .prologue
    .line 970
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/Duration;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/Duration;->negated()Ljava/time/Duration;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0

    .restart local v0    # "this":Ljava/time/Duration;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    .prologue
    .line 1000
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v0

    iget-wide v2, v2, Ljava/time/Duration;->seconds:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1001
    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Ljava/time/Duration;->seconds:J

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v1, v2

    .line 1003
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljava/time/Duration;->nanos:I

    if-eqz v2, :cond_1

    .line 1004
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Duration;->nanos:I

    int-to-long v3, v3

    sget-object v5, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v1, v2

    .line 1006
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/Duration;

    invoke-virtual {v2, v3}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/Duration;
    return v0
.end method

.method public compareTo(Ljava/time/Duration;)I
    .locals 8

    .prologue
    .line 1134
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v2, p1

    .local v2, "otherDuration":Ljava/time/Duration;
    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Duration;->seconds:J

    move-object v6, v2

    iget-wide v6, v6, Ljava/time/Duration;->seconds:J

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v4

    move v3, v4

    .line 1135
    .local v3, "cmp":I
    move v4, v3

    if-eqz v4, :cond_0

    .line 1136
    move v4, v3

    move v1, v4

    .line 1138
    .end local v1    # "this":Ljava/time/Duration;
    :goto_0
    return v1

    .restart local v1    # "this":Ljava/time/Duration;
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljava/time/Duration;->nanos:I

    move-object v5, v2

    iget v5, v5, Ljava/time/Duration;->nanos:I

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_0
.end method

.method public dividedBy(J)Ljava/time/Duration;
    .locals 9

    .prologue
    .line 907
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-wide v2, p1

    .local v2, "divisor":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 908
    new-instance v4, Ljava/lang/ArithmeticException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Cannot divide by zero"

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 910
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 911
    move-object v4, v1

    move-object v1, v4

    .line 913
    .end local v1    # "this":Ljava/time/Duration;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljava/time/Duration;
    :cond_1
    move-object v4, v1

    invoke-direct {v4}, Ljava/time/Duration;->toSeconds()Ljava/math/BigDecimal;

    move-result-object v4

    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v4}, Ljava/time/Duration;->create(Ljava/math/BigDecimal;)Ljava/time/Duration;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 1152
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v2, p1

    .local v2, "otherDuration":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 1153
    const/4 v4, 0x1

    move v1, v4

    .line 1160
    .end local v1    # "this":Ljava/time/Duration;
    :goto_0
    return v1

    .line 1155
    .restart local v1    # "this":Ljava/time/Duration;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljava/time/Duration;

    if-eqz v4, :cond_2

    .line 1156
    move-object v4, v2

    check-cast v4, Ljava/time/Duration;

    move-object v3, v4

    .line 1157
    .local v3, "other":Ljava/time/Duration;
    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Duration;->seconds:J

    move-object v6, v3

    iget-wide v6, v6, Ljava/time/Duration;->seconds:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget v4, v4, Ljava/time/Duration;->nanos:I

    move-object v5, v3

    iget v5, v5, Ljava/time/Duration;->nanos:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1160
    .end local v3    # "other":Ljava/time/Duration;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public get(Ljava/time/temporal/TemporalUnit;)J
    .locals 7

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_0

    .line 501
    move-object v2, v0

    iget-wide v2, v2, Ljava/time/Duration;->seconds:J

    move-wide v0, v2

    .line 504
    .end local v0    # "this":Ljava/time/Duration;
    :goto_0
    return-wide v0

    .line 503
    .restart local v0    # "this":Ljava/time/Duration;
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_1

    .line 504
    move-object v2, v0

    iget v2, v2, Ljava/time/Duration;->nanos:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 506
    :cond_1
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

.method public getNano()I
    .locals 2

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-object v1, v0

    iget v1, v1, Ljava/time/Duration;->nanos:I

    move v0, v1

    .end local v0    # "this":Ljava/time/Duration;
    return v0
.end method

.method public getSeconds()J
    .locals 3

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-object v1, v0

    iget-wide v1, v1, Ljava/time/Duration;->seconds:J

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/Duration;
    return-wide v0
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
    .line 495
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/time/temporal/ChronoUnit;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    sget-object v4, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    sget-object v4, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 1170
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljava/time/Duration;->seconds:J

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Duration;->seconds:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    const/16 v3, 0x33

    move-object v4, v1

    iget v4, v4, Ljava/time/Duration;->nanos:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move v1, v2

    .end local v1    # "this":Ljava/time/Duration;
    return v1
.end method

.method public isNegative()Z
    .locals 6

    .prologue
    .line 533
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljava/time/Duration;->seconds:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljava/time/Duration;
    return v1

    .restart local v1    # "this":Ljava/time/Duration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 6

    .prologue
    .line 520
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljava/time/Duration;->seconds:J

    move-object v4, v1

    iget v4, v4, Ljava/time/Duration;->nanos:I

    int-to-long v4, v4

    or-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljava/time/Duration;
    return v1

    .restart local v1    # "this":Ljava/time/Duration;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .locals 9

    .prologue
    .line 794
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
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

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v5

    const-wide/16 v6, 0x1

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .end local v1    # "this":Ljava/time/Duration;
    return-object v1

    .restart local v1    # "this":Ljava/time/Duration;
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    neg-long v6, v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v5

    goto :goto_0
.end method

.method public minus(Ljava/time/Duration;)Ljava/time/Duration;
    .locals 10

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-object v1, p1

    .local v1, "duration":Ljava/time/Duration;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v5

    move-wide v2, v5

    .line 771
    .local v2, "secsToSubtract":J
    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/Duration;->getNano()I

    move-result v5

    move v4, v5

    .line 772
    .local v4, "nanosToSubtract":I
    move-wide v5, v2

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 773
    move-object v5, v0

    const-wide v6, 0x7fffffffffffffffL

    move v8, v4

    neg-int v8, v8

    int-to-long v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v5

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v5

    move-object v0, v5

    .line 775
    .end local v0    # "this":Ljava/time/Duration;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Duration;
    :cond_0
    move-object v5, v0

    move-wide v6, v2

    neg-long v6, v6

    move v8, v4

    neg-int v8, v8

    int-to-long v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public minusDays(J)Ljava/time/Duration;
    .locals 7

    .prologue
    .line 808
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "daysToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0

    .restart local v0    # "this":Ljava/time/Duration;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusDays(J)Ljava/time/Duration;

    move-result-object v3

    goto :goto_0
.end method

.method public minusHours(J)Ljava/time/Duration;
    .locals 7

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "hoursToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0

    .restart local v0    # "this":Ljava/time/Duration;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusHours(J)Ljava/time/Duration;

    move-result-object v3

    goto :goto_0
.end method

.method public minusMillis(J)Ljava/time/Duration;
    .locals 7

    .prologue
    .line 860
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "millisToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0

    .restart local v0    # "this":Ljava/time/Duration;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v3

    goto :goto_0
.end method

.method public minusMinutes(J)Ljava/time/Duration;
    .locals 7

    .prologue
    .line 834
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "minutesToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0

    .restart local v0    # "this":Ljava/time/Duration;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusMinutes(J)Ljava/time/Duration;

    move-result-object v3

    goto :goto_0
.end method

.method public minusNanos(J)Ljava/time/Duration;
    .locals 7

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "nanosToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0

    .restart local v0    # "this":Ljava/time/Duration;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v3

    goto :goto_0
.end method

.method public minusSeconds(J)Ljava/time/Duration;
    .locals 7

    .prologue
    .line 847
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "secondsToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0

    .restart local v0    # "this":Ljava/time/Duration;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v3

    goto :goto_0
.end method

.method public multipliedBy(J)Ljava/time/Duration;
    .locals 9

    .prologue
    .line 887
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-wide v2, p1

    .local v2, "multiplicand":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 888
    sget-object v4, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    move-object v1, v4

    .line 893
    .end local v1    # "this":Ljava/time/Duration;
    :goto_0
    return-object v1

    .line 890
    .restart local v1    # "this":Ljava/time/Duration;
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 891
    move-object v4, v1

    move-object v1, v4

    goto :goto_0

    .line 893
    :cond_1
    move-object v4, v1

    invoke-direct {v4}, Ljava/time/Duration;->toSeconds()Ljava/math/BigDecimal;

    move-result-object v4

    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v4}, Ljava/time/Duration;->create(Ljava/math/BigDecimal;)Ljava/time/Duration;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public negated()Ljava/time/Duration;
    .locals 4

    .prologue
    .line 955
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-object v1, v0

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;
    .locals 11

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "amountToAdd":J
    move-object v3, p3

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v3

    const-string v6, "unit"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 637
    move-object v5, v3

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne v5, v6, :cond_0

    .line 638
    move-object v5, v0

    move-wide v6, v1

    const v8, 0x15180

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v5

    move-object v0, v5

    .line 656
    .end local v0    # "this":Ljava/time/Duration;
    :goto_0
    return-object v0

    .line 640
    .restart local v0    # "this":Ljava/time/Duration;
    :cond_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/time/temporal/TemporalUnit;->isDurationEstimated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 641
    new-instance v5, Ljava/time/DateTimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Unit must not have an estimated duration"

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 643
    :cond_1
    move-wide v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 644
    move-object v5, v0

    move-object v0, v5

    goto :goto_0

    .line 646
    :cond_2
    move-object v5, v3

    instance-of v5, v5, Ljava/time/temporal/ChronoUnit;

    if-eqz v5, :cond_3

    .line 647
    sget-object v5, Ljava/time/Duration$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v6, v3

    check-cast v6, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v6}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 653
    move-object v5, v0

    move-object v6, v3

    invoke-interface {v6}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v6

    iget-wide v6, v6, Ljava/time/Duration;->seconds:J

    move-wide v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 648
    :pswitch_0
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 649
    :pswitch_1
    move-object v5, v0

    move-wide v6, v1

    const-wide/32 v8, 0x3b9aca00

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v5

    move-wide v6, v1

    const-wide/32 v8, 0x3b9aca00

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 650
    :pswitch_2
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/Duration;->plusMillis(J)Ljava/time/Duration;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 651
    :pswitch_3
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 655
    :cond_3
    move-object v5, v3

    invoke-interface {v5}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v5

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/Duration;->multipliedBy(J)Ljava/time/Duration;

    move-result-object v5

    move-object v4, v5

    .line 656
    .local v4, "duration":Ljava/time/Duration;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/Duration;->plusSeconds(J)Ljava/time/Duration;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/Duration;->getNano()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/Duration;->plusNanos(J)Ljava/time/Duration;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public plus(Ljava/time/Duration;)Ljava/time/Duration;
    .locals 8

    .prologue
    .line 617
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v2, p1

    .local v2, "duration":Ljava/time/Duration;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/Duration;->getNano()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljava/time/Duration;
    return-object v1
.end method

.method public plusDays(J)Ljava/time/Duration;
    .locals 9

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "daysToAdd":J
    move-object v3, v0

    move-wide v4, v1

    const v6, 0x15180

    invoke-static {v4, v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method public plusHours(J)Ljava/time/Duration;
    .locals 9

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "hoursToAdd":J
    move-object v3, v0

    move-wide v4, v1

    const/16 v6, 0xe10

    invoke-static {v4, v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method public plusMillis(J)Ljava/time/Duration;
    .locals 11

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "millisToAdd":J
    move-object v3, v0

    move-wide v4, v1

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    move-wide v6, v1

    const-wide/16 v8, 0x3e8

    rem-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method public plusMinutes(J)Ljava/time/Duration;
    .locals 9

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "minutesToAdd":J
    move-object v3, v0

    move-wide v4, v1

    const/16 v6, 0x3c

    invoke-static {v4, v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method public plusNanos(J)Ljava/time/Duration;
    .locals 9

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "nanosToAdd":J
    move-object v3, v0

    const-wide/16 v4, 0x0

    move-wide v6, v1

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method public plusSeconds(J)Ljava/time/Duration;
    .locals 9

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-wide v1, p1

    .local v1, "secondsToAdd":J
    move-object v3, v0

    move-wide v4, v1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Duration;->plus(JJ)Ljava/time/Duration;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method public subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    .prologue
    .line 1035
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v0

    iget-wide v2, v2, Ljava/time/Duration;->seconds:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1036
    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Ljava/time/Duration;->seconds:J

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v1, v2

    .line 1038
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljava/time/Duration;->nanos:I

    if-eqz v2, :cond_1

    .line 1039
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Duration;->nanos:I

    int-to-long v3, v3

    sget-object v5, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v1, v2

    .line 1041
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method public toDays()J
    .locals 6

    .prologue
    .line 1057
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljava/time/Duration;->seconds:J

    const-wide/32 v4, 0x15180

    div-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljava/time/Duration;
    return-wide v1
.end method

.method public toHours()J
    .locals 6

    .prologue
    .line 1071
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljava/time/Duration;->seconds:J

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljava/time/Duration;
    return-wide v1
.end method

.method public toMillis()J
    .locals 8

    .prologue
    .line 1102
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Duration;->seconds:J

    const/16 v6, 0x3e8

    invoke-static {v4, v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v4

    move-wide v2, v4

    .line 1103
    .local v2, "result":J
    move-wide v4, v2

    move-object v6, v1

    iget v6, v6, Ljava/time/Duration;->nanos:I

    const v7, 0xf4240

    div-int/2addr v6, v7

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v4

    move-wide v2, v4

    .line 1104
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Ljava/time/Duration;
    return-wide v1
.end method

.method public toMinutes()J
    .locals 6

    .prologue
    .line 1085
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v2, v1

    iget-wide v2, v2, Ljava/time/Duration;->seconds:J

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljava/time/Duration;
    return-wide v1
.end method

.method public toNanos()J
    .locals 8

    .prologue
    .line 1117
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Duration;->seconds:J

    const v6, 0x3b9aca00

    invoke-static {v4, v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v4

    move-wide v2, v4

    .line 1118
    .local v2, "result":J
    move-wide v4, v2

    move-object v6, v1

    iget v6, v6, Ljava/time/Duration;->nanos:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v4

    move-wide v2, v4

    .line 1119
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Ljava/time/Duration;
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 1198
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v8, v1

    sget-object v9, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    if-ne v8, v9, :cond_0

    .line 1199
    const-string v8, "PT0S"

    move-object v1, v8

    .line 1237
    .end local v1    # "this":Ljava/time/Duration;
    .local v2, "hours":J
    .local v4, "minutes":I
    .local v5, "secs":I
    .local v6, "buf":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    .line 1201
    .end local v2    # "hours":J
    .end local v4    # "minutes":I
    .end local v5    # "secs":I
    .end local v6    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "this":Ljava/time/Duration;
    :cond_0
    move-object v8, v1

    iget-wide v8, v8, Ljava/time/Duration;->seconds:J

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    move-wide v2, v8

    .line 1202
    .restart local v2    # "hours":J
    move-object v8, v1

    iget-wide v8, v8, Ljava/time/Duration;->seconds:J

    const-wide/16 v10, 0xe10

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    long-to-int v8, v8

    move v4, v8

    .line 1203
    .restart local v4    # "minutes":I
    move-object v8, v1

    iget-wide v8, v8, Ljava/time/Duration;->seconds:J

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    long-to-int v8, v8

    move v5, v8

    .line 1204
    .restart local v5    # "secs":I
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x18

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v8

    .line 1205
    .restart local v6    # "buf":Ljava/lang/StringBuilder;
    move-object v8, v6

    const-string v9, "PT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1206
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 1207
    move-object v8, v6

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x48

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1209
    :cond_1
    move v8, v4

    if-eqz v8, :cond_2

    .line 1210
    move-object v8, v6

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x4d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1212
    :cond_2
    move v8, v5

    if-nez v8, :cond_3

    move-object v8, v1

    iget v8, v8, Ljava/time/Duration;->nanos:I

    if-nez v8, :cond_3

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_3

    .line 1213
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_0

    .line 1215
    :cond_3
    move v8, v5

    if-gez v8, :cond_5

    move-object v8, v1

    iget v8, v8, Ljava/time/Duration;->nanos:I

    if-lez v8, :cond_5

    .line 1216
    move v8, v5

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 1217
    move-object v8, v6

    const-string v9, "-0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1224
    :goto_1
    move-object v8, v1

    iget v8, v8, Ljava/time/Duration;->nanos:I

    if-lez v8, :cond_8

    .line 1225
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move v7, v8

    .line 1226
    .local v7, "pos":I
    move v8, v5

    if-gez v8, :cond_6

    .line 1227
    move-object v8, v6

    const v9, 0x77359400

    move-object v10, v1

    iget v10, v10, Ljava/time/Duration;->nanos:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1231
    :goto_2
    move-object v8, v6

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_7

    .line 1232
    move-object v8, v6

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 1219
    .end local v7    # "pos":I
    :cond_4
    move-object v8, v6

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_1

    .line 1222
    :cond_5
    move-object v8, v6

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_1

    .line 1229
    .restart local v7    # "pos":I
    :cond_6
    move-object v8, v6

    move-object v9, v1

    iget v9, v9, Ljava/time/Duration;->nanos:I

    const v10, 0x3b9aca00

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_2

    .line 1234
    :cond_7
    move-object v8, v6

    move v9, v7

    const/16 v10, 0x2e

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1236
    .end local v7    # "pos":I
    :cond_8
    move-object v8, v6

    const/16 v9, 0x53

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1237
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto/16 :goto_0
.end method

.method public withNanos(I)Ljava/time/Duration;
    .locals 5

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Ljava/time/Duration;
    move v1, p1

    .local v1, "nanoOfSecond":I
    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    .line 603
    move-object v2, v0

    iget-wide v2, v2, Ljava/time/Duration;->seconds:J

    move v4, v1

    invoke-static {v2, v3, v4}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Duration;
    return-object v0
.end method

.method public withSeconds(J)Ljava/time/Duration;
    .locals 7

    .prologue
    .line 586
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-wide v2, p1

    .local v2, "seconds":J
    move-wide v4, v2

    move-object v6, v1

    iget v6, v6, Ljava/time/Duration;->nanos:I

    invoke-static {v4, v5, v6}, Ljava/time/Duration;->create(JI)Ljava/time/Duration;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/Duration;
    return-object v1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1255
    move-object v1, p0

    .local v1, "this":Ljava/time/Duration;
    move-object v2, p1

    .local v2, "out":Ljava/io/DataOutput;
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Duration;->seconds:J

    invoke-interface {v3, v4, v5}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1256
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Ljava/time/Duration;->nanos:I

    invoke-interface {v3, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1257
    return-void
.end method
