.class public final Ljava/time/OffsetTime;
.super Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;
.source "OffsetTime.java"

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
        "Ljava/time/OffsetTime;",
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
            "Ljava/time/OffsetTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Ljava/time/OffsetTime;

.field public static final MIN:Ljava/time/OffsetTime;

.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final offset:Ljava/time/ZoneOffset;

.field private final time:Ljava/time/LocalTime;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    sget-object v1, Ljava/time/ZoneOffset;->MAX:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    sput-object v0, Ljava/time/OffsetTime;->MIN:Ljava/time/OffsetTime;

    .line 100
    sget-object v0, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    sget-object v1, Ljava/time/ZoneOffset;->MIN:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/time/LocalTime;->atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v0

    sput-object v0, Ljava/time/OffsetTime;->MAX:Ljava/time/OffsetTime;

    .line 104
    new-instance v0, Ljava/time/OffsetTime$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/OffsetTime$1;-><init>()V

    sput-object v0, Ljava/time/OffsetTime;->FROM:Ljava/time/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V
    .locals 6

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "time":Ljava/time/LocalTime;
    move-object v2, p2

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 310
    move-object v3, v0

    move-object v4, v1

    const-string v5, "time"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/LocalTime;

    iput-object v4, v3, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    .line 311
    move-object v3, v0

    move-object v4, v2

    const-string v5, "offset"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/ZoneOffset;

    iput-object v4, v3, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    .line 312
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;
    .locals 8

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v3, v0

    instance-of v3, v3, Ljava/time/OffsetTime;

    if-eqz v3, :cond_0

    .line 260
    move-object v3, v0

    check-cast v3, Ljava/time/OffsetTime;

    move-object v0, v3

    .line 265
    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    .local v1, "time":Ljava/time/LocalTime;
    .local v2, "offset":Ljava/time/ZoneOffset;
    :goto_0
    return-object v0

    .line 263
    .end local v1    # "time":Ljava/time/LocalTime;
    .end local v2    # "offset":Ljava/time/ZoneOffset;
    .restart local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v3

    move-object v1, v3

    .line 264
    .restart local v1    # "time":Ljava/time/LocalTime;
    move-object v3, v0

    invoke-static {v3}, Ljava/time/ZoneOffset;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;

    move-result-object v3

    move-object v2, v3

    .line 265
    .restart local v2    # "offset":Ljava/time/ZoneOffset;
    new-instance v3, Ljava/time/OffsetTime;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 266
    .end local v1    # "time":Ljava/time/LocalTime;
    .end local v2    # "offset":Ljava/time/ZoneOffset;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 267
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

    const-string v6, "Unable to obtain OffsetTime from TemporalAccessor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    .line 268
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

.method public static now()Ljava/time/OffsetTime;
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/OffsetTime;->now(Ljava/time/Clock;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/OffsetTime;
    .locals 5

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "clock":Ljava/time/Clock;
    move-object v2, v0

    const-string v3, "clock"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 173
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v2

    move-object v1, v2

    .line 174
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

    invoke-static {v2, v3}, Ljava/time/OffsetTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "clock":Ljava/time/Clock;
    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/OffsetTime;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/OffsetTime;->now(Ljava/time/Clock;)Ljava/time/OffsetTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(IIIILjava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .locals 12

    .prologue
    .line 209
    move v0, p0

    .local v0, "hour":I
    move v1, p1

    .local v1, "minute":I
    move v2, p2

    .local v2, "second":I
    move v3, p3

    .local v3, "nanoOfSecond":I
    move-object/from16 v4, p4

    .local v4, "offset":Ljava/time/ZoneOffset;
    new-instance v5, Ljava/time/OffsetTime;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-static {v7, v8, v9, v10}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    move-object v0, v5

    .end local v0    # "hour":I
    return-object v0
.end method

.method public static of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .locals 7

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "time":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    new-instance v2, Ljava/time/OffsetTime;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    move-object v0, v2

    .end local v0    # "time":Ljava/time/LocalTime;
    return-object v0
.end method

.method public static ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetTime;
    .locals 13

    .prologue
    .line 229
    move-object v1, p0

    .local v1, "instant":Ljava/time/Instant;
    move-object v2, p1

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v8, v1

    const-string v9, "instant"

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 230
    move-object v8, v2

    const-string v9, "zone"

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 231
    move-object v8, v2

    invoke-virtual {v8}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v8

    move-object v3, v8

    .line 232
    .local v3, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/time/bp/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v8

    move-object v4, v8

    .line 233
    .local v4, "offset":Ljava/time/ZoneOffset;
    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v8

    const-wide/32 v10, 0x15180

    rem-long/2addr v8, v10

    move-wide v5, v8

    .line 234
    .local v5, "secsOfDay":J
    move-wide v8, v5

    move-object v10, v4

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    const-wide/32 v10, 0x15180

    rem-long/2addr v8, v10

    move-wide v5, v8

    .line 235
    move-wide v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 236
    move-wide v8, v5

    const-wide/32 v10, 0x15180

    add-long/2addr v8, v10

    move-wide v5, v8

    .line 238
    :cond_0
    move-wide v8, v5

    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/Instant;->getNano()I

    move-result v10

    invoke-static {v8, v9, v10}, Ljava/time/LocalTime;->ofSecondOfDay(JI)Ljava/time/LocalTime;

    move-result-object v8

    move-object v7, v8

    .line 239
    .local v7, "time":Ljava/time/LocalTime;
    new-instance v8, Ljava/time/OffsetTime;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v7

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    move-object v1, v8

    .end local v1    # "instant":Ljava/time/Instant;
    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;
    .locals 3

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetTime;
    .locals 5

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 299
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/OffsetTime;->FROM:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetTime;

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/OffsetTime;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1311
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v3, v0

    invoke-static {v3}, Ljava/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;

    move-result-object v3

    move-object v1, v3

    .line 1312
    .local v1, "time":Ljava/time/LocalTime;
    move-object v3, v0

    invoke-static {v3}, Ljava/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v3

    move-object v2, v3

    .line 1313
    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

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
    .line 1302
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toEpochNano()J
    .locals 10

    .prologue
    .line 1127
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v6}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    move-wide v2, v6

    .line 1128
    .local v2, "nod":J
    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v6}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    int-to-long v6, v6

    const-wide/32 v8, 0x3b9aca00

    mul-long/2addr v6, v8

    move-wide v4, v6

    .line 1129
    .local v4, "offsetNanos":J
    move-wide v6, v2

    move-wide v8, v4

    sub-long/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Ljava/time/OffsetTime;
    return-wide v1
.end method

.method private with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .locals 8

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "time":Ljava/time/LocalTime;
    move-object v2, p2

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    move-object v3, v0

    move-object v0, v3

    .line 324
    .end local v0    # "this":Ljava/time/OffsetTime;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    new-instance v3, Ljava/time/OffsetTime;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1293
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x42

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    .prologue
    .line 1023
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    .line 1024
    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    .line 1025
    invoke-virtual {v4}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;
    .locals 5

    .prologue
    .line 1104
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "date":Ljava/time/LocalDate;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-static {v2, v3, v4}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/OffsetTime;

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->compareTo(Ljava/time/OffsetTime;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return v0
.end method

.method public compareTo(Ljava/time/OffsetTime;)I
    .locals 8

    .prologue
    .line 1162
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-object v2, p1

    .local v2, "other":Ljava/time/OffsetTime;
    move-object v4, v1

    iget-object v4, v4, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    move-object v5, v2

    iget-object v5, v5, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v4, v5}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1163
    move-object v4, v1

    iget-object v4, v4, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v5, v2

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v4, v5}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v4

    move v1, v4

    .line 1169
    .end local v1    # "this":Ljava/time/OffsetTime;
    :goto_0
    return v1

    .line 1165
    .restart local v1    # "this":Ljava/time/OffsetTime;
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v4

    move-object v6, v2

    invoke-direct {v6}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v4

    move v3, v4

    .line 1166
    .local v3, "compare":I
    move v4, v3

    if-nez v4, :cond_1

    .line 1167
    move-object v4, v1

    iget-object v4, v4, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v5, v2

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v4, v5}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v4

    move v3, v4

    .line 1169
    :cond_1
    move v4, v3

    move v1, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1234
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 1235
    const/4 v3, 0x1

    move v0, v3

    .line 1241
    .end local v0    # "this":Ljava/time/OffsetTime;
    :goto_0
    return v0

    .line 1237
    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/OffsetTime;

    if-eqz v3, :cond_2

    .line 1238
    move-object v3, v1

    check-cast v3, Ljava/time/OffsetTime;

    move-object v2, v3

    .line 1239
    .local v2, "other":Ljava/time/OffsetTime;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

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

    .line 1241
    .end local v2    # "other":Ljava/time/OffsetTime;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1287
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1288
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return v0
.end method

.method public getHour()I
    .locals 2

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetTime;
    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 4

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 468
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 469
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    .line 473
    .end local v0    # "this":Ljava/time/OffsetTime;
    :goto_0
    return-wide v0

    .line 471
    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 473
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public getMinute()I
    .locals 2

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetTime;
    return v0
.end method

.method public getNano()I
    .locals 2

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetTime;
    return v0
.end method

.method public getOffset()Ljava/time/ZoneOffset;
    .locals 2

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public getSecond()I
    .locals 2

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->getSecond()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetTime;
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1251
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/OffsetTime;
    return v0
.end method

.method public isAfter(Ljava/time/OffsetTime;)Z
    .locals 6

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/OffsetTime;
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    move-object v4, v1

    invoke-direct {v4}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return v0

    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBefore(Ljava/time/OffsetTime;)Z
    .locals 6

    .prologue
    .line 1200
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/OffsetTime;
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    move-object v4, v1

    invoke-direct {v4}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return v0

    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEqual(Ljava/time/OffsetTime;)Z
    .locals 6

    .prologue
    .line 1215
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/OffsetTime;
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v2

    move-object v4, v1

    invoke-direct {v4}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return v0

    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 368
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 370
    .end local v0    # "this":Ljava/time/OffsetTime;
    :goto_1
    return v0

    .line 368
    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 370
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
    .line 375
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_0

    .line 376
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    move v0, v2

    .line 378
    .end local v0    # "this":Ljava/time/OffsetTime;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .locals 9

    .prologue
    .line 897
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
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

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v5

    const-wide/16 v6, 0x1

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .end local v1    # "this":Ljava/time/OffsetTime;
    return-object v1

    .restart local v1    # "this":Ljava/time/OffsetTime;
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    neg-long v6, v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v5

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;
    .locals 4

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetTime;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 81
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/OffsetTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/OffsetTime;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public minusHours(J)Ljava/time/OffsetTime;
    .locals 9

    .prologue
    .line 913
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-wide v2, p1

    .local v2, "hours":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->minusHours(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetTime;
    return-object v1
.end method

.method public minusMinutes(J)Ljava/time/OffsetTime;
    .locals 9

    .prologue
    .line 928
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-wide v2, p1

    .local v2, "minutes":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->minusMinutes(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetTime;
    return-object v1
.end method

.method public minusNanos(J)Ljava/time/OffsetTime;
    .locals 9

    .prologue
    .line 958
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-wide v2, p1

    .local v2, "nanos":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->minusNanos(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetTime;
    return-object v1
.end method

.method public minusSeconds(J)Ljava/time/OffsetTime;
    .locals 9

    .prologue
    .line 943
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-wide v2, p1

    .local v2, "seconds":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->minusSeconds(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetTime;
    return-object v1
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .locals 9

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-wide v1, p1

    .local v1, "amountToAdd":J
    move-object v3, p3

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v3

    instance-of v4, v4, Ljava/time/temporal/ChronoUnit;

    if-eqz v4, :cond_0

    .line 790
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-wide v6, v1

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v4

    move-object v0, v4

    .line 792
    .end local v0    # "this":Ljava/time/OffsetTime;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    move-object v4, v3

    move-object v5, v0

    move-wide v6, v1

    invoke-interface {v4, v5, v6, v7}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v4

    check-cast v4, Ljava/time/OffsetTime;

    move-object v0, v4

    goto :goto_0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;
    .locals 4

    .prologue
    .line 768
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetTime;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 81
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/OffsetTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/OffsetTime;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public plusHours(J)Ljava/time/OffsetTime;
    .locals 9

    .prologue
    .line 808
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-wide v2, p1

    .local v2, "hours":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetTime;
    return-object v1
.end method

.method public plusMinutes(J)Ljava/time/OffsetTime;
    .locals 9

    .prologue
    .line 823
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-wide v2, p1

    .local v2, "minutes":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetTime;
    return-object v1
.end method

.method public plusNanos(J)Ljava/time/OffsetTime;
    .locals 9

    .prologue
    .line 853
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-wide v2, p1

    .local v2, "nanos":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetTime;
    return-object v1
.end method

.method public plusSeconds(J)Ljava/time/OffsetTime;
    .locals 9

    .prologue
    .line 838
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-wide v2, p1

    .local v2, "seconds":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v4, v5, v6}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/OffsetTime;
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
    .line 983
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 984
    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v2

    .line 992
    .end local v0    # "this":Ljava/time/OffsetTime;
    :goto_0
    return-object v0

    .line 985
    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 986
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 987
    :cond_2
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 988
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v0, v2

    goto :goto_0

    .line 989
    :cond_3
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_4

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_4

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 990
    :cond_4
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 992
    :cond_5
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 406
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 407
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .line 411
    .end local v0    # "this":Ljava/time/OffsetTime;
    :goto_0
    return-object v0

    .line 409
    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 411
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .locals 2

    .prologue
    .line 1117
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1273
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/OffsetTime;
    .locals 5

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 11

    .prologue
    .line 1076
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v2, p2

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v6, v1

    invoke-static {v6}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object v6

    move-object v3, v6

    .line 1077
    .local v3, "end":Ljava/time/OffsetTime;
    move-object v6, v2

    instance-of v6, v6, Ljava/time/temporal/ChronoUnit;

    if-eqz v6, :cond_0

    .line 1078
    move-object v6, v3

    invoke-direct {v6}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v6

    move-object v8, v0

    invoke-direct {v8}, Ljava/time/OffsetTime;->toEpochNano()J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 1079
    .local v4, "nanosUntil":J
    sget-object v6, Ljava/time/OffsetTime$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v7, v2

    check-cast v7, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v7}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1088
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

    .line 1080
    :pswitch_0
    move-wide v6, v4

    move-wide v0, v6

    .line 1090
    .end local v0    # "this":Ljava/time/OffsetTime;
    .end local v4    # "nanosUntil":J
    :goto_0
    return-wide v0

    .line 1081
    .restart local v0    # "this":Ljava/time/OffsetTime;
    .restart local v4    # "nanosUntil":J
    :pswitch_1
    move-wide v6, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1082
    :pswitch_2
    move-wide v6, v4

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1083
    :pswitch_3
    move-wide v6, v4

    const-wide/32 v8, 0x3b9aca00

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1084
    :pswitch_4
    move-wide v6, v4

    const-wide v8, 0xdf8475800L

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1085
    :pswitch_5
    move-wide v6, v4

    const-wide v8, 0x34630b8a000L

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1086
    :pswitch_6
    move-wide v6, v4

    const-wide v8, 0x274a48a78000L

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1090
    .end local v4    # "nanosUntil":J
    :cond_0
    move-object v6, v2

    move-object v7, v0

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v6

    move-wide v0, v6

    goto :goto_0

    .line 1079
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

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetTime;
    .locals 5

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalTime;

    if-eqz v2, :cond_0

    .line 606
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalTime;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    .line 612
    .end local v0    # "this":Ljava/time/OffsetTime;
    :goto_0
    return-object v0

    .line 607
    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/ZoneOffset;

    if-eqz v2, :cond_1

    .line 608
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v4, v1

    check-cast v4, Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 609
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/time/OffsetTime;

    if-eqz v2, :cond_2

    .line 610
    move-object v2, v1

    check-cast v2, Ljava/time/OffsetTime;

    move-object v0, v2

    goto :goto_0

    .line 612
    :cond_2
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/OffsetTime;

    move-object v0, v2

    goto :goto_0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetTime;
    .locals 10

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v5, v1

    instance-of v5, v5, Ljava/time/temporal/ChronoField;

    if-eqz v5, :cond_1

    .line 652
    move-object v5, v1

    sget-object v6, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne v5, v6, :cond_0

    .line 653
    move-object v5, v1

    check-cast v5, Ljava/time/temporal/ChronoField;

    move-object v4, v5

    .line 654
    .local v4, "f":Ljava/time/temporal/ChronoField;
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v7, v4

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    invoke-static {v7}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v5

    move-object v0, v5

    .line 658
    .end local v0    # "this":Ljava/time/OffsetTime;
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v0

    .line 656
    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v5, v6, v7}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 658
    :cond_1
    move-object v5, v1

    move-object v6, v0

    move-wide v7, v2

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    check-cast v5, Ljava/time/OffsetTime;

    move-object v0, v5

    goto :goto_0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/OffsetTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/OffsetTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/OffsetTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public withHour(I)Ljava/time/OffsetTime;
    .locals 5

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move v1, p1

    .local v1, "hour":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public withMinute(I)Ljava/time/OffsetTime;
    .locals 5

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move v1, p1

    .local v1, "minute":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->withMinute(I)Ljava/time/LocalTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public withNano(I)Ljava/time/OffsetTime;
    .locals 5

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move v1, p1

    .local v1, "nanoOfSecond":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0
.end method

.method public withOffsetSameInstant(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .locals 10

    .prologue
    .line 528
    move-object v1, p0

    .local v1, "this":Ljava/time/OffsetTime;
    move-object v2, p1

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v5, v6}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 529
    move-object v5, v1

    move-object v1, v5

    .line 533
    .end local v1    # "this":Ljava/time/OffsetTime;
    :goto_0
    return-object v1

    .line 531
    .restart local v1    # "this":Ljava/time/OffsetTime;
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v6}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    .line 532
    .local v3, "difference":I
    move-object v5, v1

    iget-object v5, v5, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move v6, v3

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v4, v5

    .line 533
    .local v4, "adjusted":Ljava/time/LocalTime;
    new-instance v5, Ljava/time/OffsetTime;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    move-object v1, v5

    goto :goto_0
.end method

.method public withOffsetSameLocal(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .locals 7

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
    return-object v0

    .restart local v0    # "this":Ljava/time/OffsetTime;
    :cond_0
    new-instance v2, Ljava/time/OffsetTime;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/time/OffsetTime;-><init>(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)V

    goto :goto_0
.end method

.method public withSecond(I)Ljava/time/OffsetTime;
    .locals 5

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move v1, p1

    .local v1, "second":I
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->withSecond(I)Ljava/time/LocalTime;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    invoke-direct {v2, v3, v4}, Ljava/time/OffsetTime;->with(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/OffsetTime;
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
    .line 1306
    move-object v0, p0

    .local v0, "this":Ljava/time/OffsetTime;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetTime;->time:Ljava/time/LocalTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    .line 1307
    move-object v2, v0

    iget-object v2, v2, Ljava/time/OffsetTime;->offset:Ljava/time/ZoneOffset;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 1308
    return-void
.end method
