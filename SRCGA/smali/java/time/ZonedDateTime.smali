.class public final Ljava/time/ZonedDateTime;
.super Ljava/time/chrono/ChronoZonedDateTime;
.source "ZonedDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoZonedDateTime",
        "<",
        "Ljava/time/LocalDate;",
        ">;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZonedDateTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x56e37a54888537c2L


# instance fields
.field private final dateTime:Ljava/time/LocalDateTime;

.field private final offset:Ljava/time/ZoneOffset;

.field private final zone:Ljava/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Ljava/time/ZonedDateTime$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/ZonedDateTime$1;-><init>()V

    sput-object v0, Ljava/time/ZonedDateTime;->FROM:Ljava/time/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V
    .locals 6

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "dateTime":Ljava/time/LocalDateTime;
    move-object v2, p2

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, p3

    .local v3, "zone":Ljava/time/ZoneId;
    move-object v4, v0

    invoke-direct {v4}, Ljava/time/chrono/ChronoZonedDateTime;-><init>()V

    .line 574
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    .line 575
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    .line 576
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    .line 577
    return-void
.end method

.method private static create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 14

    .prologue
    .line 419
    move-wide v0, p0

    .local v0, "epochSecond":J
    move/from16 v2, p2

    .local v2, "nanoOfSecond":I
    move-object/from16 v3, p3

    .local v3, "zone":Ljava/time/ZoneId;
    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v8

    move-object v4, v8

    .line 420
    .local v4, "rules":Ljava/time/bp/zone/ZoneRules;
    move-wide v8, v0

    move v10, v2

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v8

    move-object v5, v8

    .line 421
    .local v5, "instant":Ljava/time/Instant;
    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/time/bp/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v8

    move-object v6, v8

    .line 422
    .local v6, "offset":Ljava/time/ZoneOffset;
    move-wide v8, v0

    move v10, v2

    move-object v11, v6

    invoke-static {v8, v9, v10, v11}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v8

    move-object v7, v8

    .line 423
    .local v7, "ldt":Ljava/time/LocalDateTime;
    new-instance v8, Ljava/time/ZonedDateTime;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v7

    move-object v11, v6

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v0, v8

    .end local v0    # "epochSecond":J
    return-object v0
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;
    .locals 11

    .prologue
    .line 511
    move-object v1, p0

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v6, v1

    instance-of v6, v6, Ljava/time/ZonedDateTime;

    if-eqz v6, :cond_0

    .line 512
    move-object v6, v1

    check-cast v6, Ljava/time/ZonedDateTime;

    move-object v1, v6

    .line 527
    .end local v1    # "temporal":Ljava/time/temporal/TemporalAccessor;
    .local v2, "zone":Ljava/time/ZoneId;
    :goto_0
    return-object v1

    .line 515
    .end local v2    # "zone":Ljava/time/ZoneId;
    .restart local v1    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Ljava/time/ZoneId;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;

    move-result-object v6

    move-object v2, v6

    .line 516
    .restart local v2    # "zone":Ljava/time/ZoneId;
    move-object v6, v1

    sget-object v7, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_1

    .line 518
    move-object v6, v1

    :try_start_1
    sget-object v7, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    move-wide v3, v6

    .line 519
    .local v3, "epochSecond":J
    move-object v6, v1

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v6

    move v5, v6

    .line 520
    .local v5, "nanoOfSecond":I
    move-wide v6, v3

    move v8, v5

    move-object v9, v2

    invoke-static {v6, v7, v8, v9}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 522
    .end local v3    # "epochSecond":J
    .end local v5    # "nanoOfSecond":I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 526
    :cond_1
    move-object v6, v1

    :try_start_2
    invoke-static {v6}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v6

    move-object v3, v6

    .line 527
    .local v3, "ldt":Ljava/time/LocalDateTime;
    move-object v6, v3

    move-object v7, v2

    invoke-static {v6, v7}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    :try_end_2
    .catch Ljava/time/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 528
    .end local v2    # "zone":Ljava/time/ZoneId;
    .end local v3    # "ldt":Ljava/time/LocalDateTime;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 529
    .local v2, "ex":Ljava/time/DateTimeException;
    new-instance v6, Ljava/time/DateTimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to obtain ZonedDateTime from TemporalAccessor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    .line 530
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static now()Ljava/time/ZonedDateTime;
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "clock":Ljava/time/Clock;
    move-object v2, v0

    const-string v3, "clock"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 202
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v2

    move-object v1, v2

    .line 203
    .local v1, "now":Ljava/time/Instant;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "clock":Ljava/time/Clock;
    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 16

    .prologue
    .line 308
    move/from16 v0, p0

    .local v0, "year":I
    move/from16 v1, p1

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
    move-object/from16 v7, p7

    .local v7, "zone":Ljava/time/ZoneId;
    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    invoke-static/range {v9 .. v15}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v9

    move-object v8, v9

    .line 309
    .local v8, "dt":Ljava/time/LocalDateTime;
    move-object v9, v8

    move-object v10, v7

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "year":I
    return-object v0
.end method

.method public static of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "date":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "time":Ljava/time/LocalTime;
    move-object v2, p2

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "date":Ljava/time/LocalDate;
    return-object v0
.end method

.method public static of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "localDateTime":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "localDateTime":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public static ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 6

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "instant":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    const-string v3, "instant"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 377
    move-object v2, v1

    const-string v3, "zone"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 378
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/Instant;->getNano()I

    move-result v4

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "instant":Ljava/time/Instant;
    return-object v0
.end method

.method public static ofInstant(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 8

    .prologue
    .line 402
    move-object v1, p0

    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    move-object v2, p1

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, p2

    .local v3, "zone":Ljava/time/ZoneId;
    move-object v4, v1

    const-string v5, "localDateTime"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 403
    move-object v4, v2

    const-string v5, "offset"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 404
    move-object v4, v3

    const-string v5, "zone"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 405
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getNano()I

    move-result v6

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "localDateTime":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method private static ofLenient(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "localDateTime":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, p2

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v3, v0

    const-string v4, "localDateTime"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 483
    move-object v3, v1

    const-string v4, "offset"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 484
    move-object v3, v2

    const-string v4, "zone"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 485
    move-object v3, v2

    instance-of v3, v3, Ljava/time/ZoneOffset;

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 486
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "ZoneId must match ZoneOffset"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 488
    :cond_0
    new-instance v3, Ljava/time/ZonedDateTime;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v0, v3

    .end local v0    # "localDateTime":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public static ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;
    .locals 13

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "localDateTime":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, p2

    .local v2, "preferredOffset":Ljava/time/ZoneOffset;
    move-object v7, v0

    const-string v8, "localDateTime"

    invoke-static {v7, v8}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 337
    move-object v7, v1

    const-string v8, "zone"

    invoke-static {v7, v8}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 338
    move-object v7, v1

    instance-of v7, v7, Ljava/time/ZoneOffset;

    if-eqz v7, :cond_0

    .line 339
    new-instance v7, Ljava/time/ZonedDateTime;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v1

    check-cast v10, Ljava/time/ZoneOffset;

    move-object v11, v1

    invoke-direct {v8, v9, v10, v11}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v0, v7

    .line 357
    .end local v0    # "localDateTime":Ljava/time/LocalDateTime;
    :goto_0
    return-object v0

    .line 341
    .restart local v0    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v7

    move-object v3, v7

    .line 342
    .local v3, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/time/bp/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 344
    .local v4, "validOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 345
    move-object v7, v4

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/time/ZoneOffset;

    move-object v5, v7

    .line 357
    .local v5, "offset":Ljava/time/ZoneOffset;
    :goto_1
    new-instance v7, Ljava/time/ZonedDateTime;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move-object v10, v5

    move-object v11, v1

    invoke-direct {v8, v9, v10, v11}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v0, v7

    goto :goto_0

    .line 346
    .end local v5    # "offset":Ljava/time/ZoneOffset;
    :cond_1
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 347
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/time/bp/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v7

    move-object v6, v7

    .line 348
    .local v6, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v8}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDuration()Ljava/time/Duration;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v7

    move-object v0, v7

    .line 349
    move-object v7, v6

    invoke-virtual {v7}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v7

    move-object v5, v7

    .line 350
    .restart local v5    # "offset":Ljava/time/ZoneOffset;
    goto :goto_1

    .line 351
    .end local v5    # "offset":Ljava/time/ZoneOffset;
    .end local v6    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_2
    move-object v7, v2

    if-eqz v7, :cond_3

    move-object v7, v4

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 352
    move-object v7, v2

    move-object v5, v7

    .restart local v5    # "offset":Ljava/time/ZoneOffset;
    goto :goto_1

    .line 354
    .end local v5    # "offset":Ljava/time/ZoneOffset;
    :cond_3
    move-object v7, v4

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "offset"

    invoke-static {v7, v8}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/time/ZoneOffset;

    move-object v5, v7

    .restart local v5    # "offset":Ljava/time/ZoneOffset;
    goto :goto_1
.end method

.method public static ofStrict(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 11

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "localDateTime":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, p2

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v5, v0

    const-string v6, "localDateTime"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 442
    move-object v5, v1

    const-string v6, "offset"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 443
    move-object v5, v2

    const-string v6, "zone"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 444
    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    move-object v3, v5

    .line 445
    .local v3, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v5, v3

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/bp/zone/ZoneRules;->isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 446
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/time/bp/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v5

    move-object v4, v5

    .line 447
    .local v4, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljava/time/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    new-instance v5, Ljava/time/DateTimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LocalDateTime \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' does not exist in zone \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' due to a gap in the local time-line, typically caused by daylight savings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 454
    :cond_0
    new-instance v5, Ljava/time/DateTimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ZoneOffset \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is not valid for LocalDateTime \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in zone \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 457
    .end local v4    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_1
    new-instance v5, Ljava/time/ZonedDateTime;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v0, v5

    .end local v0    # "localDateTime":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;
    .locals 3

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 562
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/ZonedDateTime;->FROM:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/ZonedDateTime;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2120
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v4, v0

    invoke-static {v4}, Ljava/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v1, v4

    .line 2121
    .local v1, "dateTime":Ljava/time/LocalDateTime;
    move-object v4, v0

    invoke-static {v4}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v2, v4

    .line 2122
    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v4, v0

    invoke-static {v4}, Ljava/time/Ser;->read(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/ZoneId;

    move-object v3, v4

    .line 2123
    .local v3, "zone":Ljava/time/ZoneId;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Ljava/time/ZonedDateTime;->ofLenient(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

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
    .line 2110
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "newDateTime":Ljava/time/LocalDateTime;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {v2, v3, v4}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method private resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "newDateTime":Ljava/time/LocalDateTime;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v2, v3, v4}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method private resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;
    .locals 8

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v2}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/time/bp/zone/ZoneRules;->isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    new-instance v2, Ljava/time/ZonedDateTime;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-direct {v3, v4, v5, v6}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v0, v2

    .line 611
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 2101
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x6

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 2042
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 2043
    const/4 v3, 0x1

    move v0, v3

    .line 2051
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    :goto_0
    return v0

    .line 2045
    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/ZonedDateTime;

    if-eqz v3, :cond_2

    .line 2046
    move-object v3, v1

    check-cast v3, Ljava/time/ZonedDateTime;

    move-object v2, v3

    .line 2047
    .local v2, "other":Ljava/time/ZonedDateTime;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    .line 2048
    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    .line 2049
    invoke-virtual {v3, v4}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 2051
    .end local v2    # "other":Ljava/time/ZonedDateTime;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2096
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 7

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 740
    sget-object v2, Ljava/time/ZonedDateTime$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 744
    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move v0, v2

    .line 746
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    :goto_0
    return v0

    .line 741
    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :pswitch_0
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

    .line 742
    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 746
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoZonedDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 991
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .locals 2

    .prologue
    .line 1019
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public getDayOfYear()I
    .locals 2

    .prologue
    .line 1002
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return v0
.end method

.method public getHour()I
    .locals 2

    .prologue
    .line 1029
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 4

    .prologue
    .line 773
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 774
    sget-object v2, Ljava/time/ZonedDateTime$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 778
    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    move-wide v0, v2

    .line 780
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    :goto_0
    return-wide v0

    .line 775
    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :pswitch_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 776
    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 780
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 774
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMinute()I
    .locals 2

    .prologue
    .line 1038
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return v0
.end method

.method public getMonth()Ljava/time/Month;
    .locals 2

    .prologue
    .line 980
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public getMonthValue()I
    .locals 2

    .prologue
    .line 965
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return v0
.end method

.method public getNano()I
    .locals 2

    .prologue
    .line 1056
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getNano()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return v0
.end method

.method public getOffset()Ljava/time/ZoneOffset;
    .locals 2

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public getSecond()I
    .locals 2

    .prologue
    .line 1047
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 951
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return v0
.end method

.method public getZone()Ljava/time/ZoneId;
    .locals 2

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 2061
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v2}, Ljava/time/ZoneId;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .locals 4

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 674
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

    .line 676
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    :goto_1
    return v0

    .line 674
    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 676
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

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 1699
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
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

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v5

    const-wide/16 v6, 0x1

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1

    .restart local v1    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    neg-long v6, v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v5

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;
    .locals 4

    .prologue
    .line 1665
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 9

    .prologue
    .line 122
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/ZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 122
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/ZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public minusDays(J)Ljava/time/ZonedDateTime;
    .locals 7

    .prologue
    .line 1788
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-wide v1, p1

    .local v1, "days":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusHours(J)Ljava/time/ZonedDateTime;
    .locals 7

    .prologue
    .line 1817
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-wide v1, p1

    .local v1, "hours":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusMinutes(J)Ljava/time/ZonedDateTime;
    .locals 7

    .prologue
    .line 1835
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-wide v1, p1

    .local v1, "minutes":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusMonths(J)Ljava/time/ZonedDateTime;
    .locals 7

    .prologue
    .line 1744
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-wide v1, p1

    .local v1, "months":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusMonths(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusNanos(J)Ljava/time/ZonedDateTime;
    .locals 7

    .prologue
    .line 1871
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-wide v1, p1

    .local v1, "nanos":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusNanos(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusSeconds(J)Ljava/time/ZonedDateTime;
    .locals 7

    .prologue
    .line 1853
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-wide v1, p1

    .local v1, "seconds":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusWeeks(J)Ljava/time/ZonedDateTime;
    .locals 7

    .prologue
    .line 1766
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-wide v1, p1

    .local v1, "weeks":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusWeeks(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusYears(J)Ljava/time/ZonedDateTime;
    .locals 7

    .prologue
    .line 1722
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-wide v1, p1

    .local v1, "years":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/ZonedDateTime;->plusYears(J)Ljava/time/ZonedDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 1464
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-wide v1, p1

    .local v1, "amountToAdd":J
    move-object v3, p3

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v3

    instance-of v4, v4, Ljava/time/temporal/ChronoUnit;

    if-eqz v4, :cond_1

    .line 1465
    move-object v4, v3

    invoke-interface {v4}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1466
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v1

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v0, v4

    .line 1471
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    :goto_0
    return-object v0

    .line 1468
    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v1

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1471
    :cond_1
    move-object v4, v3

    move-object v5, v0

    move-wide v6, v1

    invoke-interface {v4, v5, v6, v7}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v4

    check-cast v4, Ljava/time/ZonedDateTime;

    move-object v0, v4

    goto :goto_0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;
    .locals 4

    .prologue
    .line 1430
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/ZonedDateTime;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 9

    .prologue
    .line 122
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 122
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/ZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public plusDays(J)Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 1560
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    .local v2, "days":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1
.end method

.method public plusHours(J)Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 1589
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    .local v2, "hours":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1
.end method

.method public plusMinutes(J)Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 1607
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    .local v2, "minutes":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1
.end method

.method public plusMonths(J)Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 1516
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    .local v2, "months":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1
.end method

.method public plusNanos(J)Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 1643
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    .local v2, "nanos":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1
.end method

.method public plusSeconds(J)Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 1625
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    .local v2, "seconds":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveInstant(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1
.end method

.method public plusWeeks(J)Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 1538
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    .local v2, "weeks":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/ZonedDateTime;
    return-object v1
.end method

.method public plusYears(J)Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 1494
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-wide v2, p1

    .local v2, "years":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/ZonedDateTime;
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
    .line 1896
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1897
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .line 1899
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoZonedDateTime;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 4

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 704
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    .line 705
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .line 709
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    :goto_0
    return-object v0

    .line 707
    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 709
    :cond_2
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public toLocalDate()Ljava/time/LocalDate;
    .locals 2

    .prologue
    .line 2002
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public bridge synthetic toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public toLocalDateTime()Ljava/time/LocalDateTime;
    .locals 2

    .prologue
    .line 1989
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public bridge synthetic toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .locals 2

    .prologue
    .line 2015
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public toOffsetDateTime()Ljava/time/OffsetDateTime;
    .locals 3

    .prologue
    .line 2027
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v1, v2}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2077
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v3}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2078
    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    if-eq v2, v3, :cond_0

    .line 2079
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v3}, Ljava/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2081
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 1408
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 7

    .prologue
    .line 1966
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v2, p2

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v1

    invoke-static {v4}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v3, v4

    .line 1967
    .local v3, "end":Ljava/time/ZonedDateTime;
    move-object v4, v2

    instance-of v4, v4, Ljava/time/temporal/ChronoUnit;

    if-eqz v4, :cond_1

    .line 1968
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-virtual {v4, v5}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v3, v4

    .line 1969
    move-object v4, v2

    invoke-interface {v4}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1970
    move-object v4, v0

    iget-object v4, v4, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v5, v3

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/LocalDateTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    move-wide v0, v4

    .line 1975
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    :goto_0
    return-wide v0

    .line 1972
    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/OffsetDateTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 1975
    :cond_1
    move-object v4, v2

    move-object v5, v0

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;
    .locals 8

    .prologue
    .line 1115
    move-object v1, p0

    .local v1, "this":Ljava/time/ZonedDateTime;
    move-object v2, p1

    .local v2, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v4, v2

    instance-of v4, v4, Ljava/time/LocalDate;

    if-eqz v4, :cond_0

    .line 1116
    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/time/LocalDate;

    move-object v6, v1

    iget-object v6, v6, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v6}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    .line 1127
    .end local v1    # "this":Ljava/time/ZonedDateTime;
    :goto_0
    return-object v1

    .line 1117
    .restart local v1    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljava/time/LocalTime;

    if-eqz v4, :cond_1

    .line 1118
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v5}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v5

    move-object v6, v2

    check-cast v6, Ljava/time/LocalTime;

    invoke-static {v5, v6}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 1119
    :cond_1
    move-object v4, v2

    instance-of v4, v4, Ljava/time/LocalDateTime;

    if-eqz v4, :cond_2

    .line 1120
    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/time/LocalDateTime;

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 1121
    :cond_2
    move-object v4, v2

    instance-of v4, v4, Ljava/time/Instant;

    if-eqz v4, :cond_3

    .line 1122
    move-object v4, v2

    check-cast v4, Ljava/time/Instant;

    move-object v3, v4

    .line 1123
    .local v3, "instant":Ljava/time/Instant;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/Instant;->getNano()I

    move-result v6

    move-object v7, v1

    iget-object v7, v7, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {v4, v5, v6, v7}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 1124
    .end local v3    # "instant":Ljava/time/Instant;
    :cond_3
    move-object v4, v2

    instance-of v4, v4, Ljava/time/ZoneOffset;

    if-eqz v4, :cond_4

    .line 1125
    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/time/ZoneOffset;

    invoke-direct {v4, v5}, Ljava/time/ZonedDateTime;->resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 1127
    :cond_4
    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v4

    check-cast v4, Ljava/time/ZonedDateTime;

    move-object v1, v4

    goto :goto_0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;
    .locals 12

    .prologue
    .line 1184
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v6, v1

    instance-of v6, v6, Ljava/time/temporal/ChronoField;

    if-eqz v6, :cond_0

    .line 1185
    move-object v6, v1

    check-cast v6, Ljava/time/temporal/ChronoField;

    move-object v4, v6

    .line 1186
    .local v4, "f":Ljava/time/temporal/ChronoField;
    sget-object v6, Ljava/time/ZonedDateTime$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v7, v4

    invoke-virtual {v7}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1193
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v8, v1

    move-wide v9, v2

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v6

    move-object v0, v6

    .line 1195
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v0

    .line 1187
    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    .restart local v4    # "f":Ljava/time/temporal/ChronoField;
    :pswitch_0
    move-wide v6, v2

    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-static {v6, v7, v8, v9}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 1189
    :pswitch_1
    move-object v6, v4

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v6

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v6

    move-object v5, v6

    .line 1190
    .local v5, "offset":Ljava/time/ZoneOffset;
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Ljava/time/ZonedDateTime;->resolveOffset(Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 1195
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    .end local v5    # "offset":Ljava/time/ZoneOffset;
    :cond_0
    move-object v6, v1

    move-object v7, v0

    move-wide v8, v2

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    check-cast v6, Ljava/time/ZonedDateTime;

    move-object v0, v6

    goto :goto_0

    .line 1186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 8

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/ZonedDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withDayOfMonth(I)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 1263
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move v1, p1

    .local v1, "dayOfMonth":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withDayOfMonth(I)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withDayOfYear(I)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 1286
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move v1, p1

    .local v1, "dayOfYear":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withDayOfYear(I)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 814
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v3

    move-object v1, v3

    .line 815
    .local v1, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/bp/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v3

    move-object v2, v3

    .line 817
    .local v2, "earlierOffset":Ljava/time/ZoneOffset;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 818
    new-instance v3, Ljava/time/ZonedDateTime;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-direct {v4, v5, v6, v7}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v0, v3

    .line 821
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    .end local v2    # "earlierOffset":Ljava/time/ZoneOffset;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public bridge synthetic withEarlierOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->withEarlierOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withFixedOffsetZone()Ljava/time/ZonedDateTime;
    .locals 7

    .prologue
    .line 936
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    new-instance v1, Ljava/time/ZonedDateTime;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4, v5}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    goto :goto_0
.end method

.method public withHour(I)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 1309
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move v1, p1

    .local v1, "hour":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withHour(I)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withLaterOffsetAtOverlap()Ljava/time/ZonedDateTime;
    .locals 9

    .prologue
    .line 842
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v3

    move-object v1, v3

    .line 843
    .local v1, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 844
    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v3

    move-object v2, v3

    .line 845
    .local v2, "laterOffset":Ljava/time/ZoneOffset;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 846
    new-instance v3, Ljava/time/ZonedDateTime;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    invoke-direct {v4, v5, v6, v7}, Ljava/time/ZonedDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v0, v3

    .line 849
    .end local v0    # "this":Ljava/time/ZonedDateTime;
    .end local v2    # "laterOffset":Ljava/time/ZoneOffset;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public bridge synthetic withLaterOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->withLaterOffsetAtOverlap()Ljava/time/ZonedDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withMinute(I)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 1331
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move v1, p1

    .local v1, "minute":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withMinute(I)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withMonth(I)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 1240
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move v1, p1

    .local v1, "month":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withMonth(I)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withNano(I)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 1375
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move v1, p1

    .local v1, "nanoOfSecond":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withNano(I)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withSecond(I)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 1353
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move v1, p1

    .local v1, "second":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withYear(I)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 1218
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move v1, p1

    .local v1, "year":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withYear(I)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/ZonedDateTime;->resolveLocal(Ljava/time/LocalDateTime;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 6

    .prologue
    .line 913
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v1

    const-string v3, "zone"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 914
    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 915
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0

    .line 914
    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v0

    iget-object v3, v3, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    .line 915
    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v2

    move-object v4, v0

    iget-object v4, v4, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4}, Ljava/time/LocalDateTime;->getNano()I

    move-result v4

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/ZonedDateTime;->create(JILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0
.end method

.method public withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 890
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v1

    const-string v3, "zone"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 891
    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/ZonedDateTime;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v2, v3, v4}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZonedDateTime;->withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/ZonedDateTime;
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
    .line 2114
    move-object v0, p0

    .local v0, "this":Ljava/time/ZonedDateTime;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 2115
    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->offset:Ljava/time/ZoneOffset;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 2116
    move-object v2, v0

    iget-object v2, v2, Ljava/time/ZonedDateTime;->zone:Ljava/time/ZoneId;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZoneId;->write(Ljava/io/DataOutput;)V

    .line 2117
    return-void
.end method
