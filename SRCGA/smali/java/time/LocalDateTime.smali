.class public final Ljava/time/LocalDateTime;
.super Ljava/time/chrono/ChronoLocalDateTime;
.source "LocalDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoLocalDateTime",
        "<",
        "Ljava/time/LocalDate;",
        ">;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/LocalDateTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Ljava/time/LocalDateTime;

.field public static final MIN:Ljava/time/LocalDateTime;

.field private static final serialVersionUID:J = 0x56266aa6a95fff2eL


# instance fields
.field private final date:Ljava/time/LocalDate;

.field private final time:Ljava/time/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 107
    sget-object v0, Ljava/time/LocalDate;->MIN:Ljava/time/LocalDate;

    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    .line 114
    sget-object v0, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    sget-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    .line 118
    new-instance v0, Ljava/time/LocalDateTime$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/LocalDateTime$1;-><init>()V

    sput-object v0, Ljava/time/LocalDateTime;->FROM:Ljava/time/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V
    .locals 5

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "date":Ljava/time/LocalDate;
    move-object v2, p2

    .local v2, "time":Ljava/time/LocalTime;
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/chrono/ChronoLocalDateTime;-><init>()V

    .line 455
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    .line 456
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    .line 457
    return-void
.end method

.method private compareTo0(Ljava/time/LocalDateTime;)I
    .locals 5

    .prologue
    .line 1668
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/LocalDateTime;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v3

    move v2, v3

    .line 1669
    .local v2, "cmp":I
    move v3, v2

    if-nez v3, :cond_0

    .line 1670
    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v3

    move v2, v3

    .line 1672
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return v0
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .locals 8

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v3, v0

    instance-of v3, v3, Ljava/time/LocalDateTime;

    if-eqz v3, :cond_0

    .line 403
    move-object v3, v0

    check-cast v3, Ljava/time/LocalDateTime;

    move-object v0, v3

    .line 410
    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    .local v1, "date":Ljava/time/LocalDate;
    .local v2, "time":Ljava/time/LocalTime;
    :goto_0
    return-object v0

    .line 404
    .end local v1    # "date":Ljava/time/LocalDate;
    .end local v2    # "time":Ljava/time/LocalTime;
    .restart local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Ljava/time/ZonedDateTime;

    if-eqz v3, :cond_1

    .line 405
    move-object v3, v0

    check-cast v3, Ljava/time/ZonedDateTime;

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 408
    :cond_1
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v3

    move-object v1, v3

    .line 409
    .restart local v1    # "date":Ljava/time/LocalDate;
    move-object v3, v0

    invoke-static {v3}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v3

    move-object v2, v3

    .line 410
    .restart local v2    # "time":Ljava/time/LocalTime;
    new-instance v3, Ljava/time/LocalDateTime;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 411
    .end local v1    # "date":Ljava/time/LocalDate;
    .end local v2    # "time":Ljava/time/LocalTime;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 412
    .local v1, "ex":Ljava/time/DateTimeException;
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to obtain LocalDateTime from TemporalAccessor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    .line 413
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static now()Ljava/time/LocalDateTime;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/LocalDateTime;
    .locals 8

    .prologue
    .line 182
    move-object v1, p0

    .local v1, "clock":Ljava/time/Clock;
    move-object v4, v1

    const-string v5, "clock"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 183
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v4

    move-object v2, v4

    .line 184
    .local v2, "now":Ljava/time/Instant;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/bp/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v3, v4

    .line 185
    .local v3, "offset":Ljava/time/ZoneOffset;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/Instant;->getNano()I

    move-result v6

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "clock":Ljava/time/Clock;
    return-object v1
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/LocalDateTime;->now(Ljava/time/Clock;)Ljava/time/LocalDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(IIIII)Ljava/time/LocalDateTime;
    .locals 12

    .prologue
    .line 275
    move v0, p0

    .local v0, "year":I
    move v1, p1

    .local v1, "month":I
    move v2, p2

    .local v2, "dayOfMonth":I
    move v3, p3

    .local v3, "hour":I
    move/from16 v4, p4

    .local v4, "minute":I
    move v7, v0

    move v8, v1

    move v9, v2

    invoke-static {v7, v8, v9}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v7

    move-object v5, v7

    .line 276
    .local v5, "date":Ljava/time/LocalDate;
    move v7, v3

    move v8, v4

    invoke-static {v7, v8}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v7

    move-object v6, v7

    .line 277
    .local v6, "time":Ljava/time/LocalTime;
    new-instance v7, Ljava/time/LocalDateTime;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v5

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    move-object v0, v7

    .end local v0    # "year":I
    return-object v0
.end method

.method public static of(IIIIII)Ljava/time/LocalDateTime;
    .locals 13

    .prologue
    .line 298
    move v0, p0

    .local v0, "year":I
    move v1, p1

    .local v1, "month":I
    move v2, p2

    .local v2, "dayOfMonth":I
    move/from16 v3, p3

    .local v3, "hour":I
    move/from16 v4, p4

    .local v4, "minute":I
    move/from16 v5, p5

    .local v5, "second":I
    move v8, v0

    move v9, v1

    move v10, v2

    invoke-static {v8, v9, v10}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v8

    move-object v6, v8

    .line 299
    .local v6, "date":Ljava/time/LocalDate;
    move v8, v3

    move v9, v4

    move v10, v5

    invoke-static {v8, v9, v10}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v8

    move-object v7, v8

    .line 300
    .local v7, "time":Ljava/time/LocalTime;
    new-instance v8, Ljava/time/LocalDateTime;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    move-object v11, v7

    invoke-direct {v9, v10, v11}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    move-object v0, v8

    .end local v0    # "year":I
    return-object v0
.end method

.method public static of(IIIIIII)Ljava/time/LocalDateTime;
    .locals 14

    .prologue
    .line 321
    move v0, p0

    .local v0, "year":I
    move v1, p1

    .local v1, "month":I
    move/from16 v2, p2

    .local v2, "dayOfMonth":I
    move/from16 v3, p3

    .local v3, "hour":I
    move/from16 v4, p4

    .local v4, "minute":I
    move/from16 v5, p5

    .local v5, "second":I
    move/from16 v6, p6

    .local v6, "nanoOfSecond":I
    move v9, v0

    move v10, v1

    move v11, v2

    invoke-static {v9, v10, v11}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v9

    move-object v7, v9

    .line 322
    .local v7, "date":Ljava/time/LocalDate;
    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static {v9, v10, v11, v12}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v9

    move-object v8, v9

    .line 323
    .local v8, "time":Ljava/time/LocalTime;
    new-instance v9, Ljava/time/LocalDateTime;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    move-object v12, v8

    invoke-direct {v10, v11, v12}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    move-object v0, v9

    .end local v0    # "year":I
    return-object v0
.end method

.method public static of(ILjava/time/Month;III)Ljava/time/LocalDateTime;
    .locals 12

    .prologue
    .line 206
    move v0, p0

    .local v0, "year":I
    move-object v1, p1

    .local v1, "month":Ljava/time/Month;
    move v2, p2

    .local v2, "dayOfMonth":I
    move v3, p3

    .local v3, "hour":I
    move/from16 v4, p4

    .local v4, "minute":I
    move v7, v0

    move-object v8, v1

    move v9, v2

    invoke-static {v7, v8, v9}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v7

    move-object v5, v7

    .line 207
    .local v5, "date":Ljava/time/LocalDate;
    move v7, v3

    move v8, v4

    invoke-static {v7, v8}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v7

    move-object v6, v7

    .line 208
    .local v6, "time":Ljava/time/LocalTime;
    new-instance v7, Ljava/time/LocalDateTime;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v5

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    move-object v0, v7

    .end local v0    # "year":I
    return-object v0
.end method

.method public static of(ILjava/time/Month;IIII)Ljava/time/LocalDateTime;
    .locals 13

    .prologue
    .line 229
    move v0, p0

    .local v0, "year":I
    move-object v1, p1

    .local v1, "month":Ljava/time/Month;
    move v2, p2

    .local v2, "dayOfMonth":I
    move/from16 v3, p3

    .local v3, "hour":I
    move/from16 v4, p4

    .local v4, "minute":I
    move/from16 v5, p5

    .local v5, "second":I
    move v8, v0

    move-object v9, v1

    move v10, v2

    invoke-static {v8, v9, v10}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v8

    move-object v6, v8

    .line 230
    .local v6, "date":Ljava/time/LocalDate;
    move v8, v3

    move v9, v4

    move v10, v5

    invoke-static {v8, v9, v10}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v8

    move-object v7, v8

    .line 231
    .local v7, "time":Ljava/time/LocalTime;
    new-instance v8, Ljava/time/LocalDateTime;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    move-object v11, v7

    invoke-direct {v9, v10, v11}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    move-object v0, v8

    .end local v0    # "year":I
    return-object v0
.end method

.method public static of(ILjava/time/Month;IIIII)Ljava/time/LocalDateTime;
    .locals 14

    .prologue
    .line 252
    move v0, p0

    .local v0, "year":I
    move-object v1, p1

    .local v1, "month":Ljava/time/Month;
    move/from16 v2, p2

    .local v2, "dayOfMonth":I
    move/from16 v3, p3

    .local v3, "hour":I
    move/from16 v4, p4

    .local v4, "minute":I
    move/from16 v5, p5

    .local v5, "second":I
    move/from16 v6, p6

    .local v6, "nanoOfSecond":I
    move v9, v0

    move-object v10, v1

    move v11, v2

    invoke-static {v9, v10, v11}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v9

    move-object v7, v9

    .line 253
    .local v7, "date":Ljava/time/LocalDate;
    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static {v9, v10, v11, v12}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v9

    move-object v8, v9

    .line 254
    .local v8, "time":Ljava/time/LocalTime;
    new-instance v9, Ljava/time/LocalDateTime;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v7

    move-object v12, v8

    invoke-direct {v10, v11, v12}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    move-object v0, v9

    .end local v0    # "year":I
    return-object v0
.end method

.method public static of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .locals 7

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "date":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "time":Ljava/time/LocalTime;
    move-object v2, v0

    const-string v3, "date"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 335
    move-object v2, v1

    const-string v3, "time"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 336
    new-instance v2, Ljava/time/LocalDateTime;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    move-object v0, v2

    .end local v0    # "date":Ljava/time/LocalDate;
    return-object v0
.end method

.method public static ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;
    .locals 18

    .prologue
    .line 376
    move-wide/from16 v1, p0

    .local v1, "epochSecond":J
    move/from16 v3, p2

    .local v3, "nanoOfSecond":I
    move-object/from16 v4, p3

    .local v4, "offset":Ljava/time/ZoneOffset;
    move-object v12, v4

    const-string v13, "offset"

    invoke-static {v12, v13}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 377
    move-wide v12, v1

    move-object v14, v4

    invoke-virtual {v14}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-wide v5, v12

    .line 378
    .local v5, "localSecond":J
    move-wide v12, v5

    const-wide/32 v14, 0x15180

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v12

    move-wide v7, v12

    .line 379
    .local v7, "localEpochDay":J
    move-wide v12, v5

    const v14, 0x15180

    invoke-static {v12, v13, v14}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v12

    move v9, v12

    .line 380
    .local v9, "secsOfDay":I
    move-wide v12, v7

    invoke-static {v12, v13}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v10, v12

    .line 381
    .local v10, "date":Ljava/time/LocalDate;
    move v12, v9

    int-to-long v12, v12

    move v14, v3

    invoke-static {v12, v13, v14}, Ljava/time/LocalTime;->ofSecondOfDay(JI)Ljava/time/LocalTime;

    move-result-object v12

    move-object v11, v12

    .line 382
    .local v11, "time":Ljava/time/LocalTime;
    new-instance v12, Ljava/time/LocalDateTime;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v10

    move-object v15, v11

    invoke-direct {v13, v14, v15}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    move-object v1, v12

    .end local v1    # "epochSecond":J
    return-object v1
.end method

.method public static ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;
    .locals 8

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "instant":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v4, v0

    const-string v5, "instant"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 355
    move-object v4, v1

    const-string v5, "zone"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 356
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v4

    move-object v2, v4

    .line 357
    .local v2, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/time/bp/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v3, v4

    .line 358
    .local v3, "offset":Ljava/time/ZoneOffset;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/Instant;->getNano()I

    move-result v6

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "instant":Ljava/time/Instant;
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;
    .locals 3

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 5

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 444
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/LocalDateTime;->FROM:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDateTime;

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method private plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;
    .locals 28

    .prologue
    .line 1394
    move-object/from16 v2, p0

    .local v2, "this":Ljava/time/LocalDateTime;
    move-object/from16 v3, p1

    .local v3, "newDate":Ljava/time/LocalDate;
    move-wide/from16 v4, p2

    .local v4, "hours":J
    move-wide/from16 v6, p4

    .local v6, "minutes":J
    move-wide/from16 v8, p6

    .local v8, "seconds":J
    move-wide/from16 v10, p8

    .local v10, "nanos":J
    move/from16 v12, p10

    .local v12, "sign":I
    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    or-long v22, v22, v24

    move-wide/from16 v24, v8

    or-long v22, v22, v24

    move-wide/from16 v24, v10

    or-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_0

    .line 1395
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v22

    move-object/from16 v2, v22

    .line 1411
    .end local v2    # "this":Ljava/time/LocalDateTime;
    :goto_0
    return-object v2

    .line 1397
    .restart local v2    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-wide/from16 v22, v10

    const-wide v24, 0x4e94914f0000L

    div-long v22, v22, v24

    move-wide/from16 v24, v8

    const-wide/32 v26, 0x15180

    div-long v24, v24, v26

    add-long v22, v22, v24

    move-wide/from16 v24, v6

    const-wide/16 v26, 0x5a0

    div-long v24, v24, v26

    add-long v22, v22, v24

    move-wide/from16 v24, v4

    const-wide/16 v26, 0x18

    div-long v24, v24, v26

    add-long v22, v22, v24

    move-wide/from16 v13, v22

    .line 1401
    .local v13, "totDays":J
    move-wide/from16 v22, v13

    move/from16 v24, v12

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-wide/from16 v13, v22

    .line 1402
    move-wide/from16 v22, v10

    const-wide v24, 0x4e94914f0000L

    rem-long v22, v22, v24

    move-wide/from16 v24, v8

    const-wide/32 v26, 0x15180

    rem-long v24, v24, v26

    const-wide/32 v26, 0x3b9aca00

    mul-long v24, v24, v26

    add-long v22, v22, v24

    move-wide/from16 v24, v6

    const-wide/16 v26, 0x5a0

    rem-long v24, v24, v26

    const-wide v26, 0xdf8475800L

    mul-long v24, v24, v26

    add-long v22, v22, v24

    move-wide/from16 v24, v4

    const-wide/16 v26, 0x18

    rem-long v24, v24, v26

    const-wide v26, 0x34630b8a000L

    mul-long v24, v24, v26

    add-long v22, v22, v24

    move-wide/from16 v15, v22

    .line 1406
    .local v15, "totNanos":J
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v22

    move-wide/from16 v17, v22

    .line 1407
    .local v17, "curNoD":J
    move-wide/from16 v22, v15

    move/from16 v24, v12

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-wide/from16 v24, v17

    add-long v22, v22, v24

    move-wide/from16 v15, v22

    .line 1408
    move-wide/from16 v22, v13

    move-wide/from16 v24, v15

    const-wide v26, 0x4e94914f0000L

    invoke-static/range {v24 .. v27}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v24

    add-long v22, v22, v24

    move-wide/from16 v13, v22

    .line 1409
    move-wide/from16 v22, v15

    const-wide v24, 0x4e94914f0000L

    invoke-static/range {v22 .. v25}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v22

    move-wide/from16 v19, v22

    .line 1410
    .local v19, "newNoD":J
    move-wide/from16 v22, v19

    move-wide/from16 v24, v17

    cmp-long v22, v22, v24

    if-nez v22, :cond_1

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object/from16 v22, v0

    :goto_1
    move-object/from16 v21, v22

    .line 1411
    .local v21, "newTime":Ljava/time/LocalTime;
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-wide/from16 v24, v13

    invoke-virtual/range {v23 .. v25}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v23

    move-object/from16 v24, v21

    invoke-direct/range {v22 .. v24}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v22

    move-object/from16 v2, v22

    goto/16 :goto_0

    .line 1410
    .end local v21    # "newTime":Ljava/time/LocalTime;
    :cond_1
    move-wide/from16 v22, v19

    invoke-static/range {v22 .. v23}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v22

    goto :goto_1
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1851
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v3, v0

    invoke-static {v3}, Ljava/time/LocalDate;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDate;

    move-result-object v3

    move-object v1, v3

    .line 1852
    .local v1, "date":Ljava/time/LocalDate;
    move-object v3, v0

    invoke-static {v3}, Ljava/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;

    move-result-object v3

    move-object v2, v3

    .line 1853
    .local v2, "time":Ljava/time/LocalTime;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

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
    .line 1842
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .locals 8

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "newDate":Ljava/time/LocalDate;
    move-object v2, p2

    .local v2, "newTime":Ljava/time/LocalTime;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 469
    move-object v3, v0

    move-object v0, v3

    .line 471
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    new-instance v3, Ljava/time/LocalDateTime;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/LocalDateTime;-><init>(Ljava/time/LocalDate;Ljava/time/LocalTime;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1833
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x4

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 1469
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .locals 4

    .prologue
    .line 1580
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 4

    .prologue
    .line 1614
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public bridge synthetic atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return v0
.end method

.method public compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1661
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDateTime;

    if-eqz v2, :cond_0

    .line 1662
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalDateTime;

    invoke-direct {v2, v3}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v2

    move v0, v2

    .line 1664
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1774
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 1775
    const/4 v3, 0x1

    move v0, v3

    .line 1781
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_0
    return v0

    .line 1777
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/LocalDateTime;

    if-eqz v3, :cond_2

    .line 1778
    move-object v3, v1

    check-cast v3, Ljava/time/LocalDateTime;

    move-object v2, v3

    .line 1779
    .local v2, "other":Ljava/time/LocalDateTime;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1781
    .end local v2    # "other":Ljava/time/LocalDateTime;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1828
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 4

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 598
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    :goto_0
    move v0, v2

    .line 600
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_1
    return v0

    .line 598
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    goto :goto_0

    .line 600
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .locals 2

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public getDayOfYear()I
    .locals 2

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return v0
.end method

.method public getHour()I
    .locals 2

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 4

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 628
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .line 630
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_1
    return-wide v0

    .line 628
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    goto :goto_0

    .line 630
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_1
.end method

.method public getMinute()I
    .locals 2

    .prologue
    .line 732
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return v0
.end method

.method public getMonth()Ljava/time/Month;
    .locals 2

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public getMonthValue()I
    .locals 2

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return v0
.end method

.method public getNano()I
    .locals 2

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return v0
.end method

.method public getSecond()I
    .locals 2

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->getSecond()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1791
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v2}, Ljava/time/LocalTime;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return v0
.end method

.method public isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1698
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDateTime;

    if-eqz v2, :cond_1

    .line 1699
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalDateTime;

    invoke-direct {v2, v3}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 1701
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_1
    return v0

    .line 1699
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1701
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1727
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDateTime;

    if-eqz v2, :cond_1

    .line 1728
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalDateTime;

    invoke-direct {v2, v3}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 1730
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_1
    return v0

    .line 1728
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1730
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1756
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDateTime;

    if-eqz v2, :cond_1

    .line 1757
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalDateTime;

    invoke-direct {v2, v3}, Ljava/time/LocalDateTime;->compareTo0(Ljava/time/LocalDateTime;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 1759
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_1
    return v0

    .line 1757
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1759
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 527
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 529
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_1
    return v0

    .line 527
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 529
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
    .line 534
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 535
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 537
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_1
    return v0

    .line 535
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 537
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

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .locals 9

    .prologue
    .line 1235
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
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

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v5

    const-wide/16 v6, 0x1

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1

    .restart local v1    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    neg-long v6, v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v5

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;
    .locals 4

    .prologue
    .line 1215
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDateTime;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 9

    .prologue
    .line 97
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 97
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public minusDays(J)Ljava/time/LocalDateTime;
    .locals 7

    .prologue
    .line 1322
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-wide v1, p1

    .local v1, "days":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusHours(J)Ljava/time/LocalDateTime;
    .locals 15

    .prologue
    .line 1336
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide/from16 v2, p1

    .local v2, "hours":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-wide v6, v2

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x1

    invoke-direct/range {v4 .. v14}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public minusMinutes(J)Ljava/time/LocalDateTime;
    .locals 15

    .prologue
    .line 1349
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide/from16 v2, p1

    .local v2, "minutes":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v6, 0x0

    move-wide v8, v2

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x1

    invoke-direct/range {v4 .. v14}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public minusMonths(J)Ljava/time/LocalDateTime;
    .locals 7

    .prologue
    .line 1284
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-wide v1, p1

    .local v1, "months":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusNanos(J)Ljava/time/LocalDateTime;
    .locals 15

    .prologue
    .line 1375
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide/from16 v2, p1

    .local v2, "nanos":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-wide v12, v2

    const/4 v14, -0x1

    invoke-direct/range {v4 .. v14}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public minusSeconds(J)Ljava/time/LocalDateTime;
    .locals 15

    .prologue
    .line 1362
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide/from16 v2, p1

    .local v2, "seconds":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide v10, v2

    const-wide/16 v12, 0x0

    const/4 v14, -0x1

    invoke-direct/range {v4 .. v14}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public minusWeeks(J)Ljava/time/LocalDateTime;
    .locals 7

    .prologue
    .line 1303
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-wide v1, p1

    .local v1, "weeks":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusYears(J)Ljava/time/LocalDateTime;
    .locals 7

    .prologue
    .line 1260
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-wide v1, p1

    .local v1, "years":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .locals 11

    .prologue
    .line 1036
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-wide v1, p1

    .local v1, "amountToAdd":J
    move-object v3, p3

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v3

    instance-of v5, v5, Ljava/time/temporal/ChronoUnit;

    if-eqz v5, :cond_0

    .line 1037
    move-object v5, v3

    check-cast v5, Ljava/time/temporal/ChronoUnit;

    move-object v4, v5

    .line 1038
    .local v4, "f":Ljava/time/temporal/ChronoUnit;
    sget-object v5, Ljava/time/LocalDateTime$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1047
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-wide v7, v1

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v5, v6, v7}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v0, v5

    .line 1049
    .end local v0    # "this":Ljava/time/LocalDateTime;
    .end local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :goto_0
    return-object v0

    .line 1039
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    .restart local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :pswitch_0
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1040
    :pswitch_1
    move-object v5, v0

    move-wide v6, v1

    const-wide v8, 0x141dd76000L

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-wide v6, v1

    const-wide v8, 0x141dd76000L

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1041
    :pswitch_2
    move-object v5, v0

    move-wide v6, v1

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-wide v6, v1

    const-wide/32 v8, 0x5265c00

    rem-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1042
    :pswitch_3
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1043
    :pswitch_4
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1044
    :pswitch_5
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1045
    :pswitch_6
    move-object v5, v0

    move-wide v6, v1

    const-wide/16 v8, 0x100

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-wide v6, v1

    const-wide/16 v8, 0x100

    rem-long/2addr v6, v8

    const-wide/16 v8, 0xc

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1049
    .end local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_0
    move-object v5, v3

    move-object v6, v0

    move-wide v7, v1

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    check-cast v5, Ljava/time/LocalDateTime;

    move-object v0, v5

    goto :goto_0

    .line 1038
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
    .end packed-switch
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;
    .locals 4

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDateTime;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 9

    .prologue
    .line 97
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 97
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public plusDays(J)Ljava/time/LocalDateTime;
    .locals 9

    .prologue
    .line 1139
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide v2, p1

    .local v2, "days":J
    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v4, v5

    .line 1140
    .local v4, "newDate":Ljava/time/LocalDate;
    move-object v5, v1

    move-object v6, v4

    move-object v7, v1

    iget-object v7, v7, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v5, v6, v7}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public plusHours(J)Ljava/time/LocalDateTime;
    .locals 15

    .prologue
    .line 1154
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide/from16 v2, p1

    .local v2, "hours":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-wide v6, v2

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v4 .. v14}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public plusMinutes(J)Ljava/time/LocalDateTime;
    .locals 15

    .prologue
    .line 1167
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide/from16 v2, p1

    .local v2, "minutes":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v6, 0x0

    move-wide v8, v2

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v4 .. v14}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public plusMonths(J)Ljava/time/LocalDateTime;
    .locals 9

    .prologue
    .line 1099
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide v2, p1

    .local v2, "months":J
    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v4, v5

    .line 1100
    .local v4, "newDate":Ljava/time/LocalDate;
    move-object v5, v1

    move-object v6, v4

    move-object v7, v1

    iget-object v7, v7, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v5, v6, v7}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public plusNanos(J)Ljava/time/LocalDateTime;
    .locals 15

    .prologue
    .line 1193
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide/from16 v2, p1

    .local v2, "nanos":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-wide v12, v2

    const/4 v14, 0x1

    invoke-direct/range {v4 .. v14}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public plusSeconds(J)Ljava/time/LocalDateTime;
    .locals 15

    .prologue
    .line 1180
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide/from16 v2, p1

    .local v2, "seconds":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide v10, v2

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v4 .. v14}, Ljava/time/LocalDateTime;->plusWithOverflow(Ljava/time/LocalDate;JJJJI)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public plusWeeks(J)Ljava/time/LocalDateTime;
    .locals 9

    .prologue
    .line 1119
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide v2, p1

    .local v2, "weeks":J
    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v4, v5

    .line 1120
    .local v4, "newDate":Ljava/time/LocalDate;
    move-object v5, v1

    move-object v6, v4

    move-object v7, v1

    iget-object v7, v7, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v5, v6, v7}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method public plusYears(J)Ljava/time/LocalDateTime;
    .locals 9

    .prologue
    .line 1074
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-wide v2, p1

    .local v2, "years":J
    move-object v5, v1

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v4, v5

    .line 1075
    .local v4, "newDate":Ljava/time/LocalDate;
    move-object v5, v1

    move-object v6, v4

    move-object v7, v1

    iget-object v7, v7, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v5, v6, v7}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDateTime;
    return-object v1
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
    .line 1436
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1437
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .line 1439
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 4

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 565
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 567
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_1
    return-object v0

    .line 565
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    goto :goto_0

    .line 567
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_1
.end method

.method public toLocalDate()Ljava/time/LocalDate;
    .locals 2

    .prologue
    .line 1628
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public bridge synthetic toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .locals 2

    .prologue
    .line 1641
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1813
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;
    .locals 6

    .prologue
    .line 994
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/time/LocalTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 19

    .prologue
    .line 1519
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/LocalDateTime;
    move-object/from16 v2, p1

    .local v2, "endExclusive":Ljava/time/temporal/Temporal;
    move-object/from16 v3, p2

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v12, v2

    invoke-static {v12}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v12

    move-object v4, v12

    .line 1520
    .local v4, "end":Ljava/time/LocalDateTime;
    move-object v12, v3

    instance-of v12, v12, Ljava/time/temporal/ChronoUnit;

    if-eqz v12, :cond_5

    .line 1521
    move-object v12, v3

    check-cast v12, Ljava/time/temporal/ChronoUnit;

    move-object v5, v12

    .line 1522
    .local v5, "f":Ljava/time/temporal/ChronoUnit;
    move-object v12, v5

    invoke-virtual {v12}, Ljava/time/temporal/ChronoUnit;->isTimeBased()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1523
    move-object v12, v1

    iget-object v12, v12, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v13, v4

    iget-object v13, v13, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v12, v13}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v12

    move-wide v6, v12

    .line 1524
    .local v6, "daysUntil":J
    move-object v12, v4

    iget-object v12, v12, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v12}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v14}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v14

    sub-long/2addr v12, v14

    move-wide v8, v12

    .line 1525
    .local v8, "timeUntil":J
    move-wide v12, v6

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    move-wide v12, v8

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 1526
    move-wide v12, v6

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    move-wide v6, v12

    .line 1527
    move-wide v12, v8

    const-wide v14, 0x4e94914f0000L

    add-long/2addr v12, v14

    move-wide v8, v12

    .line 1532
    :cond_0
    :goto_0
    move-wide v12, v6

    move-wide v10, v12

    .line 1533
    .local v10, "amount":J
    sget-object v12, Ljava/time/LocalDateTime$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v13, v5

    invoke-virtual {v13}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 1556
    new-instance v12, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported unit: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1528
    .end local v10    # "amount":J
    :cond_1
    move-wide v12, v6

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    move-wide v12, v8

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    .line 1529
    move-wide v12, v6

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-wide v6, v12

    .line 1530
    move-wide v12, v8

    const-wide v14, 0x4e94914f0000L

    sub-long/2addr v12, v14

    move-wide v8, v12

    goto :goto_0

    .line 1535
    .restart local v10    # "amount":J
    :pswitch_0
    move-wide v12, v10

    const-wide v14, 0x4e94914f0000L

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v12

    move-wide v10, v12

    .line 1536
    move-wide v12, v10

    move-wide v14, v8

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    move-wide v1, v12

    .line 1566
    .end local v1    # "this":Ljava/time/LocalDateTime;
    .end local v5    # "f":Ljava/time/temporal/ChronoUnit;
    .end local v6    # "daysUntil":J
    .end local v8    # "timeUntil":J
    .end local v10    # "amount":J
    :goto_1
    return-wide v1

    .line 1538
    .restart local v1    # "this":Ljava/time/LocalDateTime;
    .restart local v5    # "f":Ljava/time/temporal/ChronoUnit;
    .restart local v6    # "daysUntil":J
    .restart local v8    # "timeUntil":J
    .restart local v10    # "amount":J
    :pswitch_1
    move-wide v12, v10

    const-wide v14, 0x141dd76000L

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v12

    move-wide v10, v12

    .line 1539
    move-wide v12, v10

    move-wide v14, v8

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    move-wide v1, v12

    goto :goto_1

    .line 1541
    :pswitch_2
    move-wide v12, v10

    const-wide/32 v14, 0x5265c00

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v12

    move-wide v10, v12

    .line 1542
    move-wide v12, v10

    move-wide v14, v8

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    move-wide v1, v12

    goto :goto_1

    .line 1544
    :pswitch_3
    move-wide v12, v10

    const v14, 0x15180

    invoke-static {v12, v13, v14}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v12

    move-wide v10, v12

    .line 1545
    move-wide v12, v10

    move-wide v14, v8

    const-wide/32 v16, 0x3b9aca00

    div-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    move-wide v1, v12

    goto :goto_1

    .line 1547
    :pswitch_4
    move-wide v12, v10

    const/16 v14, 0x5a0

    invoke-static {v12, v13, v14}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v12

    move-wide v10, v12

    .line 1548
    move-wide v12, v10

    move-wide v14, v8

    const-wide v16, 0xdf8475800L

    div-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    move-wide v1, v12

    goto :goto_1

    .line 1550
    :pswitch_5
    move-wide v12, v10

    const/16 v14, 0x18

    invoke-static {v12, v13, v14}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v12

    move-wide v10, v12

    .line 1551
    move-wide v12, v10

    move-wide v14, v8

    const-wide v16, 0x34630b8a000L

    div-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    move-wide v1, v12

    goto :goto_1

    .line 1553
    :pswitch_6
    move-wide v12, v10

    const/4 v14, 0x2

    invoke-static {v12, v13, v14}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v12

    move-wide v10, v12

    .line 1554
    move-wide v12, v10

    move-wide v14, v8

    const-wide v16, 0x274a48a78000L

    div-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v12

    move-wide v1, v12

    goto/16 :goto_1

    .line 1558
    .end local v6    # "daysUntil":J
    .end local v8    # "timeUntil":J
    .end local v10    # "amount":J
    :cond_2
    move-object v12, v4

    iget-object v12, v12, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v6, v12

    .line 1559
    .local v6, "endDate":Ljava/time/LocalDate;
    move-object v12, v6

    move-object v13, v1

    iget-object v13, v13, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v12, v13}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v12, v4

    iget-object v12, v12, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v13, v1

    iget-object v13, v13, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v12, v13}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1560
    move-object v12, v6

    const-wide/16 v13, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v6, v12

    .line 1564
    :cond_3
    :goto_2
    move-object v12, v1

    iget-object v12, v12, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v13, v6

    move-object v14, v3

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v12

    move-wide v1, v12

    goto/16 :goto_1

    .line 1561
    :cond_4
    move-object v12, v6

    move-object v13, v1

    iget-object v13, v13, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    invoke-virtual {v12, v13}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v4

    iget-object v12, v12, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v13, v1

    iget-object v13, v13, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v12, v13}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1562
    move-object v12, v6

    const-wide/16 v13, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v6, v12

    goto :goto_2

    .line 1566
    .end local v5    # "f":Ljava/time/temporal/ChronoUnit;
    .end local v6    # "endDate":Ljava/time/LocalDate;
    :cond_5
    move-object v12, v3

    move-object v13, v1

    move-object v14, v4

    invoke-interface {v12, v13, v14}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v12

    move-wide v1, v12

    goto/16 :goto_1

    .line 1533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;
    .locals 5

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDate;

    if-eqz v2, :cond_0

    .line 800
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalDate;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v2, v3, v4}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .line 806
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_0
    return-object v0

    .line 801
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalTime;

    if-eqz v2, :cond_1

    .line 802
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v4, v1

    check-cast v4, Ljava/time/LocalTime;

    invoke-direct {v2, v3, v4}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 803
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDateTime;

    if-eqz v2, :cond_2

    .line 804
    move-object v2, v1

    check-cast v2, Ljava/time/LocalDateTime;

    move-object v0, v2

    goto :goto_0

    .line 806
    :cond_2
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDateTime;

    move-object v0, v2

    goto :goto_0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;
    .locals 10

    .prologue
    .line 844
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v4, v1

    instance-of v4, v4, Ljava/time/temporal/ChronoField;

    if-eqz v4, :cond_1

    .line 845
    move-object v4, v1

    invoke-interface {v4}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 846
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v0, v4

    .line 851
    .end local v0    # "this":Ljava/time/LocalDateTime;
    :goto_0
    return-object v0

    .line 848
    .restart local v0    # "this":Ljava/time/LocalDateTime;
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v4, v5, v6}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 851
    :cond_1
    move-object v4, v1

    move-object v5, v0

    move-wide v6, v2

    invoke-interface {v4, v5, v6, v7}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v4

    check-cast v4, Ljava/time/LocalDateTime;

    move-object v0, v4

    goto :goto_0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 8

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public withDayOfMonth(I)Ljava/time/LocalDateTime;
    .locals 5

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move v1, p1

    .local v1, "dayOfMonth":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v2, v3, v4}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public withDayOfYear(I)Ljava/time/LocalDateTime;
    .locals 5

    .prologue
    .line 913
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move v1, p1

    .local v1, "dayOfYear":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v2, v3, v4}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public withHour(I)Ljava/time/LocalDateTime;
    .locals 6

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move v1, p1

    .local v1, "hour":I
    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v3

    move-object v2, v3

    .line 928
    .local v2, "newTime":Ljava/time/LocalTime;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public withMinute(I)Ljava/time/LocalDateTime;
    .locals 6

    .prologue
    .line 941
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move v1, p1

    .local v1, "minute":I
    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->withMinute(I)Ljava/time/LocalTime;

    move-result-object v3

    move-object v2, v3

    .line 942
    .local v2, "newTime":Ljava/time/LocalTime;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public withMonth(I)Ljava/time/LocalDateTime;
    .locals 5

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move v1, p1

    .local v1, "month":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v2, v3, v4}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public withNano(I)Ljava/time/LocalDateTime;
    .locals 6

    .prologue
    .line 969
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move v1, p1

    .local v1, "nanoOfSecond":I
    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v3

    move-object v2, v3

    .line 970
    .local v2, "newTime":Ljava/time/LocalTime;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public withSecond(I)Ljava/time/LocalDateTime;
    .locals 6

    .prologue
    .line 955
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move v1, p1

    .local v1, "second":I
    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->withSecond(I)Ljava/time/LocalTime;

    move-result-object v3

    move-object v2, v3

    .line 956
    .local v2, "newTime":Ljava/time/LocalTime;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public withYear(I)Ljava/time/LocalDateTime;
    .locals 5

    .prologue
    .line 867
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move v1, p1

    .local v1, "year":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    invoke-direct {v2, v3, v4}, Ljava/time/LocalDateTime;->with(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDateTime;
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
    .line 1846
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/LocalDateTime;->date:Ljava/time/LocalDate;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 1847
    move-object v2, v0

    iget-object v2, v2, Ljava/time/LocalDateTime;->time:Ljava/time/LocalTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1848
    return-void
.end method
