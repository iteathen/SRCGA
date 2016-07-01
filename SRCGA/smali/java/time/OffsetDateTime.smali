.class public final Ljava/time/OffsetDateTime;
.super Ljava/time/jdk8/DefaultInterfaceTemporal;
.source "OffsetDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/jdk8/DefaultInterfaceTemporal;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/OffsetDateTime;",
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
            "Ljava/time/OffsetDateTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/OffsetDateTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Ljava/time/OffsetDateTime;

.field public static final MIN:Ljava/time/OffsetDateTime;

.field private static final serialVersionUID:J = 0x1fbfbc5d57d80062L


# instance fields
.field private final dateTime:Ljava/time/LocalDateTime;

.field private final offset:Ljava/time/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    sget-object v1, Ljava/time/ZoneOffset;->MAX:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/OffsetDateTime;->MIN:Ljava/time/OffsetDateTime;

    .line 109
    sget-object v0, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    sget-object v1, Ljava/time/ZoneOffset;->MIN:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    sput-object v0, Ljava/time/OffsetDateTime;->MAX:Ljava/time/OffsetDateTime;

    .line 113
    new-instance v0, Ljava/time/OffsetDateTime$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/OffsetDateTime$1;-><init>()V

    sput-object v0, Ljava/time/OffsetDateTime;->FROM:Ljava/time/temporal/TemporalQuery;

    .line 136
    new-instance v0, Ljava/time/OffsetDateTime$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/OffsetDateTime$2;-><init>()V

    sput-object v0, Ljava/time/OffsetDateTime;->INSTANT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V
    .locals 6

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "dateTime":Ljava/time/LocalDateTime;
    move-object v2, p2

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/jdk8/DefaultInterfaceTemporal;-><init>()V

    .line 370
    move-object v3, v0

    move-object v4, v1

    const-string v5, "dateTime"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/LocalDateTime;

    iput-object v4, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    .line 371
    move-object v3, v0

    move-object v4, v2

    const-string v5, "offset"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/ZoneOffset;

    iput-object v4, v3, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    .line 372
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v4, v0

    instance-of v4, v4, Ljava/time/OffsetDateTime;

    if-eqz v4, :cond_0

    .line 314
    move-object v4, v0

    check-cast v4, Ljava/time/OffsetDateTime;

    move-object v0, v4

    .line 323
    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    .local v1, "offset":Ljava/time/ZoneOffset;
    :goto_0
    return-object v0

    .line 317
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    .restart local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    move-object v4, v0

    :try_start_0
    invoke-static {v4}, Ljava/time/ZoneOffset;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v1, v4

    .line 319
    .restart local v1    # "offset":Ljava/time/ZoneOffset;
    move-object v4, v0

    :try_start_1
    invoke-static {v4}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v2, v4

    .line 320
    .local v2, "ldt":Ljava/time/LocalDateTime;
    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 321
    .end local v2    # "ldt":Ljava/time/LocalDateTime;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 322
    .local v2, "ignore":Ljava/time/DateTimeException;
    move-object v4, v0

    :try_start_2
    invoke-static {v4}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v4

    move-object v3, v4

    .line 323
    .local v3, "instant":Ljava/time/Instant;
    move-object v4, v3

    move-object v5, v1

    invoke-static {v4, v5}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;
    :try_end_2
    .catch Ljava/time/DateTimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 325
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    .end local v2    # "ignore":Ljava/time/DateTimeException;
    .end local v3    # "instant":Ljava/time/Instant;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 326
    .local v1, "ex":Ljava/time/DateTimeException;
    new-instance v4, Ljava/time/DateTimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to obtain OffsetDateTime from TemporalAccessor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    .line 327
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static now()Ljava/time/OffsetDateTime;
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetDateTime;->now(Ljava/time/Clock;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "clock":Ljava/time/Clock;
    move-object v2, v0

    const-string v3, "clock"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 209
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v2

    move-object v1, v2

    .line 210
    .local v1, "now":Ljava/time/Instant;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "clock":Ljava/time/Clock;
    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/OffsetDateTime;->now(Ljava/time/Clock;)Ljava/time/OffsetDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(IIIIIIILjava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .locals 17

    .prologue
    .line 269
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

    .local v7, "offset":Ljava/time/ZoneOffset;
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

    .line 270
    .local v8, "dt":Ljava/time/LocalDateTime;
    new-instance v9, Ljava/time/OffsetDateTime;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v8

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    move-object v0, v9

    .end local v0    # "year":I
    return-object v0
.end method

.method public static of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "date":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "time":Ljava/time/LocalTime;
    move-object v2, p2

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v3, v4

    .line 226
    .local v3, "dt":Ljava/time/LocalDateTime;
    new-instance v4, Ljava/time/OffsetDateTime;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    move-object v0, v4

    .end local v0    # "date":Ljava/time/LocalDate;
    return-object v0
.end method

.method public static of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .locals 7

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "dateTime":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    new-instance v2, Ljava/time/OffsetDateTime;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    move-object v0, v2

    .end local v0    # "dateTime":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method public static ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;
    .locals 11

    .prologue
    .line 287
    move-object v1, p0

    .local v1, "instant":Ljava/time/Instant;
    move-object v2, p1

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v6, v1

    const-string v7, "instant"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 288
    move-object v6, v2

    const-string v7, "zone"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 289
    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v6

    move-object v3, v6

    .line 290
    .local v3, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/time/bp/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v6

    move-object v4, v6

    .line 291
    .local v4, "offset":Ljava/time/ZoneOffset;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/Instant;->getNano()I

    move-result v8

    move-object v9, v4

    invoke-static {v6, v7, v8, v9}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v6

    move-object v5, v6

    .line 292
    .local v5, "ldt":Ljava/time/LocalDateTime;
    new-instance v6, Ljava/time/OffsetDateTime;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v5

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    move-object v1, v6

    .end local v1    # "instant":Ljava/time/Instant;
    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;
    .locals 3

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 359
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/OffsetDateTime;->FROM:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetDateTime;

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/OffsetDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1814
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v3, v0

    invoke-static {v3}, Ljava/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v1, v3

    .line 1815
    .local v1, "dateTime":Ljava/time/LocalDateTime;
    move-object v3, v0

    invoke-static {v3}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v3

    move-object v2, v3

    .line 1816
    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

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
    .line 1805
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/OffsetDateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Ljava/time/OffsetDateTime;->INSTANT_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .locals 8

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "dateTime":Ljava/time/LocalDateTime;
    move-object v2, p2

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    move-object v3, v0

    move-object v0, v3

    .line 384
    .end local v0    # "this":Ljava/time/OffsetDateTime;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    new-instance v3, Ljava/time/OffsetDateTime;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1796
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x45

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    .prologue
    .line 1437
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    .line 1438
    invoke-virtual {v4}, Ljava/time/OffsetDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    .line 1439
    invoke-virtual {v4}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    .line 1440
    invoke-virtual {v4}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public atZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 1518
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public atZoneSimilarLocal(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 1546
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v2, v3, v4}, Ljava/time/ZonedDateTime;->ofLocal(Ljava/time/LocalDateTime;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/OffsetDateTime;

    invoke-virtual {v2, v3}, Ljava/time/OffsetDateTime;->compareTo(Ljava/time/OffsetDateTime;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0
.end method

.method public compareTo(Ljava/time/OffsetDateTime;)I
    .locals 8

    .prologue
    .line 1661
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-object v2, p1

    .local v2, "other":Ljava/time/OffsetDateTime;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1662
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v4

    move v1, v4

    .line 1671
    .end local v1    # "this":Ljava/time/OffsetDateTime;
    :goto_0
    return v1

    .line 1664
    .restart local v1    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v4

    move v3, v4

    .line 1665
    .local v3, "cmp":I
    move v4, v3

    if-nez v4, :cond_1

    .line 1666
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->getNano()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/LocalTime;->getNano()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 1667
    move v4, v3

    if-nez v4, :cond_1

    .line 1668
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/OffsetDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v4

    move v3, v4

    .line 1671
    :cond_1
    move v4, v3

    move v1, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1737
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 1738
    const/4 v3, 0x1

    move v0, v3

    .line 1744
    .end local v0    # "this":Ljava/time/OffsetDateTime;
    :goto_0
    return v0

    .line 1740
    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/OffsetDateTime;

    if-eqz v3, :cond_2

    .line 1741
    move-object v3, v1

    check-cast v3, Ljava/time/OffsetDateTime;

    move-object v2, v3

    .line 1742
    .local v2, "other":Ljava/time/OffsetDateTime;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1744
    .end local v2    # "other":Ljava/time/OffsetDateTime;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1790
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1791
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 7

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 513
    sget-object v2, Ljava/time/OffsetDateTime$3;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 517
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move v0, v2

    .line 519
    .end local v0    # "this":Ljava/time/OffsetDateTime;
    :goto_0
    return v0

    .line 514
    .restart local v0    # "this":Ljava/time/OffsetDateTime;
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

    .line 515
    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 519
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .locals 2

    .prologue
    .line 697
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public getDayOfYear()I
    .locals 2

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getDayOfYear()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0
.end method

.method public getHour()I
    .locals 2

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getHour()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 4

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 547
    sget-object v2, Ljava/time/OffsetDateTime$3;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 551
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    move-wide v0, v2

    .line 553
    .end local v0    # "this":Ljava/time/OffsetDateTime;
    :goto_0
    return-wide v0

    .line 548
    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :pswitch_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 549
    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 553
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMinute()I
    .locals 2

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0
.end method

.method public getMonth()Ljava/time/Month;
    .locals 2

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public getMonthValue()I
    .locals 2

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0
.end method

.method public getNano()I
    .locals 2

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getNano()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0
.end method

.method public getOffset()Ljava/time/ZoneOffset;
    .locals 2

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public getSecond()I
    .locals 2

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 629
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1754
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0
.end method

.method public isAfter(Ljava/time/OffsetDateTime;)Z
    .locals 10

    .prologue
    .line 1686
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/OffsetDateTime;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v6

    move-wide v2, v6

    .line 1687
    .local v2, "thisEpochSec":J
    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v6

    move-wide v4, v6

    .line 1688
    .local v4, "otherEpochSec":J
    move-wide v6, v2

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    move-wide v6, v2

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move-object v6, v0

    .line 1689
    invoke-virtual {v6}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->getNano()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/LocalTime;->getNano()I

    move-result v7

    if-le v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isBefore(Ljava/time/OffsetDateTime;)Z
    .locals 10

    .prologue
    .line 1703
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/OffsetDateTime;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v6

    move-wide v2, v6

    .line 1704
    .local v2, "thisEpochSec":J
    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v6

    move-wide v4, v6

    .line 1705
    .local v4, "otherEpochSec":J
    move-wide v6, v2

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v2

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move-object v6, v0

    .line 1706
    invoke-virtual {v6}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->getNano()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/LocalTime;->getNano()I

    move-result v7

    if-ge v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isEqual(Ljava/time/OffsetDateTime;)Z
    .locals 6

    .prologue
    .line 1720
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/OffsetDateTime;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/OffsetDateTime;->toEpochSecond()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    .line 1721
    invoke-virtual {v2}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->getNano()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalTime;->getNano()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
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

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .locals 4

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 447
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

    .line 449
    .end local v0    # "this":Ljava/time/OffsetDateTime;
    :goto_1
    return v0

    .line 447
    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 449
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

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 1229
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
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

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/OffsetDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object v5

    const-wide/16 v6, 0x1

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/OffsetDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .end local v1    # "this":Ljava/time/OffsetDateTime;
    return-object v1

    .restart local v1    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    neg-long v6, v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/OffsetDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object v5

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetDateTime;
    .locals 4

    .prologue
    .line 1209
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetDateTime;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 90
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/OffsetDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/OffsetDateTime;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/OffsetDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public minusDays(J)Ljava/time/OffsetDateTime;
    .locals 7

    .prologue
    .line 1316
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-wide v1, p1

    .local v1, "days":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusDays(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusDays(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusDays(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusHours(J)Ljava/time/OffsetDateTime;
    .locals 7

    .prologue
    .line 1329
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-wide v1, p1

    .local v1, "hours":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusHours(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusHours(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusHours(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusMinutes(J)Ljava/time/OffsetDateTime;
    .locals 7

    .prologue
    .line 1342
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-wide v1, p1

    .local v1, "minutes":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusMinutes(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusMinutes(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusMinutes(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusMonths(J)Ljava/time/OffsetDateTime;
    .locals 7

    .prologue
    .line 1278
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-wide v1, p1

    .local v1, "months":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusMonths(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusMonths(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusMonths(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusNanos(J)Ljava/time/OffsetDateTime;
    .locals 7

    .prologue
    .line 1368
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-wide v1, p1

    .local v1, "nanos":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusNanos(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusNanos(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusNanos(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusSeconds(J)Ljava/time/OffsetDateTime;
    .locals 7

    .prologue
    .line 1355
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-wide v1, p1

    .local v1, "seconds":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusSeconds(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusSeconds(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusSeconds(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusWeeks(J)Ljava/time/OffsetDateTime;
    .locals 7

    .prologue
    .line 1297
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-wide v1, p1

    .local v1, "weeks":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusWeeks(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusWeeks(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusWeeks(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public minusYears(J)Ljava/time/OffsetDateTime;
    .locals 7

    .prologue
    .line 1254
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-wide v1, p1

    .local v1, "years":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusYears(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusYears(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/OffsetDateTime;->plusYears(J)Ljava/time/OffsetDateTime;

    move-result-object v3

    goto :goto_0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-wide v1, p1

    .local v1, "amountToAdd":J
    move-object v3, p3

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v3

    instance-of v4, v4, Ljava/time/temporal/ChronoUnit;

    if-eqz v4, :cond_0

    .line 1045
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v1

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v0, v4

    .line 1047
    .end local v0    # "this":Ljava/time/OffsetDateTime;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v4, v3

    move-object v5, v0

    move-wide v6, v1

    invoke-interface {v4, v5, v6, v7}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v4

    check-cast v4, Ljava/time/OffsetDateTime;

    move-object v0, v4

    goto :goto_0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetDateTime;
    .locals 4

    .prologue
    .line 1023
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetDateTime;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 90
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/OffsetDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/OffsetDateTime;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/OffsetDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public plusDays(J)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 1134
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-wide v2, p1

    .local v2, "days":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetDateTime;
    return-object v1
.end method

.method public plusHours(J)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 1147
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-wide v2, p1

    .local v2, "hours":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusHours(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetDateTime;
    return-object v1
.end method

.method public plusMinutes(J)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 1160
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-wide v2, p1

    .local v2, "minutes":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusMinutes(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetDateTime;
    return-object v1
.end method

.method public plusMonths(J)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 1096
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-wide v2, p1

    .local v2, "months":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusMonths(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetDateTime;
    return-object v1
.end method

.method public plusNanos(J)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 1186
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-wide v2, p1

    .local v2, "nanos":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusNanos(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetDateTime;
    return-object v1
.end method

.method public plusSeconds(J)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 1173
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-wide v2, p1

    .local v2, "seconds":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetDateTime;
    return-object v1
.end method

.method public plusWeeks(J)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 1115
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-wide v2, p1

    .local v2, "weeks":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetDateTime;
    return-object v1
.end method

.method public plusYears(J)Ljava/time/OffsetDateTime;
    .locals 9

    .prologue
    .line 1072
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-wide v2, p1

    .local v2, "years":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusYears(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetDateTime;
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
    .line 1393
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1394
    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v0, v2

    .line 1406
    .end local v0    # "this":Ljava/time/OffsetDateTime;
    :goto_0
    return-object v0

    .line 1395
    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1396
    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v2

    goto :goto_0

    .line 1397
    :cond_1
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 1398
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1399
    :cond_3
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 1400
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/OffsetDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1401
    :cond_4
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 1402
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/OffsetDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1403
    :cond_5
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_6

    .line 1404
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 1406
    :cond_6
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporal;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 4

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 477
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    .line 478
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .line 482
    .end local v0    # "this":Ljava/time/OffsetDateTime;
    :goto_0
    return-object v0

    .line 480
    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 482
    :cond_2
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public toEpochSecond()J
    .locals 3

    .prologue
    .line 1632
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-wide v0
.end method

.method public toInstant()Ljava/time/Instant;
    .locals 3

    .prologue
    .line 1619
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public toLocalDate()Ljava/time/LocalDate;
    .locals 2

    .prologue
    .line 1571
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public toLocalDateTime()Ljava/time/LocalDateTime;
    .locals 2

    .prologue
    .line 1559
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .locals 2

    .prologue
    .line 1583
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public toOffsetTime()Ljava/time/OffsetTime;
    .locals 3

    .prologue
    .line 1595
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v1, v2}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1776
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public toZonedDateTime()Ljava/time/ZonedDateTime;
    .locals 3

    .prologue
    .line 1610
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v1, v2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 1000
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 7

    .prologue
    .line 1493
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v2, p2

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v1

    invoke-static {v4}, Ljava/time/OffsetDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v3, v4

    .line 1494
    .local v3, "end":Ljava/time/OffsetDateTime;
    move-object v4, v2

    instance-of v4, v4, Ljava/time/temporal/ChronoUnit;

    if-eqz v4, :cond_0

    .line 1495
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v4, v5}, Ljava/time/OffsetDateTime;->withOffsetSameInstant(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v3, v4

    .line 1496
    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v5, v3

    iget-object v5, v5, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/LocalDateTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    move-wide v0, v4

    .line 1498
    .end local v0    # "this":Ljava/time/OffsetDateTime;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v4, v2

    move-object v5, v0

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 784
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDate;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalTime;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDateTime;

    if-eqz v2, :cond_1

    .line 785
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .line 793
    .end local v0    # "this":Ljava/time/OffsetDateTime;
    :goto_0
    return-object v0

    .line 786
    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/time/Instant;

    if-eqz v2, :cond_2

    .line 787
    move-object v2, v1

    check-cast v2, Ljava/time/Instant;

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v2, v3}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 788
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Ljava/time/ZoneOffset;

    if-eqz v2, :cond_3

    .line 789
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v4, v1

    check-cast v4, Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 790
    :cond_3
    move-object v2, v1

    instance-of v2, v2, Ljava/time/OffsetDateTime;

    if-eqz v2, :cond_4

    .line 791
    move-object v2, v1

    check-cast v2, Ljava/time/OffsetDateTime;

    move-object v0, v2

    goto :goto_0

    .line 793
    :cond_4
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetDateTime;

    move-object v0, v2

    goto :goto_0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetDateTime;
    .locals 10

    .prologue
    .line 841
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v5, v1

    instance-of v5, v5, Ljava/time/temporal/ChronoField;

    if-eqz v5, :cond_0

    .line 842
    move-object v5, v1

    check-cast v5, Ljava/time/temporal/ChronoField;

    move-object v4, v5

    .line 843
    .local v4, "f":Ljava/time/temporal/ChronoField;
    sget-object v5, Ljava/time/OffsetDateTime$3;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 849
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/LocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDateTime;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v5, v6, v7}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object v0, v5

    .line 851
    .end local v0    # "this":Ljava/time/OffsetDateTime;
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v0

    .line 844
    .restart local v0    # "this":Ljava/time/OffsetDateTime;
    .restart local v4    # "f":Ljava/time/temporal/ChronoField;
    :pswitch_0
    move-wide v5, v2

    move-object v7, v0

    invoke-virtual {v7}, Ljava/time/OffsetDateTime;->getNano()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v5, v6}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 846
    :pswitch_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v7, v4

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    invoke-static {v7}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 851
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :cond_0
    move-object v5, v1

    move-object v6, v0

    move-wide v7, v2

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    check-cast v5, Ljava/time/OffsetDateTime;

    move-object v0, v5

    goto :goto_0

    .line 843
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/OffsetDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/OffsetDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetDateTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public withDayOfMonth(I)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move v1, p1

    .local v1, "dayOfMonth":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withDayOfMonth(I)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public withDayOfYear(I)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 913
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move v1, p1

    .local v1, "dayOfYear":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withDayOfYear(I)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public withHour(I)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 929
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move v1, p1

    .local v1, "hour":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withHour(I)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public withMinute(I)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move v1, p1

    .local v1, "minute":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withMinute(I)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public withMonth(I)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move v1, p1

    .local v1, "month":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withMonth(I)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public withNano(I)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 974
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move v1, p1

    .local v1, "nanoOfSecond":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withNano(I)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public withOffsetSameInstant(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .locals 10

    .prologue
    .line 609
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetDateTime;
    move-object v2, p1

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v5, v6}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 610
    move-object v5, v1

    move-object v1, v5

    .line 614
    .end local v1    # "this":Ljava/time/OffsetDateTime;
    :goto_0
    return-object v1

    .line 612
    .restart local v1    # "this":Ljava/time/OffsetDateTime;
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v6}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    .line 613
    .local v3, "difference":I
    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v6, v3

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v4, v5

    .line 614
    .local v4, "adjusted":Ljava/time/LocalDateTime;
    new-instance v5, Ljava/time/OffsetDateTime;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljava/time/OffsetDateTime;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)V

    move-object v1, v5

    goto :goto_0
.end method

.method public withOffsetSameLocal(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public withSecond(I)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 959
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move v1, p1

    .local v1, "second":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withSecond(I)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
    return-object v0
.end method

.method public withYear(I)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 867
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move v1, p1

    .local v1, "year":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->withYear(I)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetDateTime;->with(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetDateTime;
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
    .line 1809
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetDateTime;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->dateTime:Ljava/time/LocalDateTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1810
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetDateTime;->offset:Ljava/time/ZoneOffset;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 1811
    return-void
.end method
