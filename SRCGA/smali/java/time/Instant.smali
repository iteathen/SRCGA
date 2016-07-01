.class public final Ljava/time/Instant;
.super Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;
.source "Instant.java"

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
        "Ljava/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final EPOCH:Ljava/time/Instant;

.field public static final FROM:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Ljava/time/Instant;

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field public static final MIN:Ljava/time/Instant;

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00

.field private static final serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 164
    new-instance v0, Ljava/time/Instant;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljava/time/Instant;-><init>(JI)V

    sput-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    .line 183
    const-wide v0, -0x701cefeb9bec00L

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    .line 194
    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Ljava/time/Instant;->MAX:Ljava/time/Instant;

    .line 198
    new-instance v0, Ljava/time/Instant$1;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/time/Instant$1;-><init>()V

    sput-object v0, Ljava/time/Instant;->FROM:Ljava/time/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 9

    .prologue
    .line 387
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-wide v2, p1

    .local v2, "epochSecond":J
    move v4, p3

    .local v4, "nanos":I
    move-object v5, v1

    invoke-direct {v5}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 388
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Ljava/time/Instant;->seconds:J

    .line 389
    move-object v5, v1

    move v6, v4

    iput v6, v5, Ljava/time/Instant;->nanos:I

    .line 390
    return-void
.end method

.method private static create(JI)Ljava/time/Instant;
    .locals 10

    .prologue
    .line 370
    move-wide v1, p0

    .local v1, "seconds":J
    move v3, p2

    .local v3, "nanoOfSecond":I
    move-wide v4, v1

    move v6, v3

    int-to-long v6, v6

    or-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 371
    sget-object v4, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    move-object v1, v4

    .line 376
    .end local v1    # "seconds":J
    :goto_0
    return-object v1

    .line 373
    .restart local v1    # "seconds":J
    :cond_0
    move-wide v4, v1

    const-wide v6, -0x701cefeb9bec00L

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    move-wide v4, v1

    const-wide v6, 0x701cd2fa9578ffL

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 374
    :cond_1
    new-instance v4, Ljava/time/DateTimeException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Instant exceeds minimum or maximum instant"

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 376
    :cond_2
    new-instance v4, Ljava/time/Instant;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-wide v6, v1

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljava/time/Instant;-><init>(JI)V

    move-object v1, v4

    goto :goto_0
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .locals 9

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v4, v0

    :try_start_0
    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-wide v1, v4

    .line 337
    .local v1, "instantSecs":J
    move-object v4, v0

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    move v3, v4

    .line 338
    .local v3, "nanoOfSecond":I
    move-wide v4, v1

    move v6, v3

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object v0

    .line 339
    .end local v1    # "instantSecs":J
    .end local v3    # "nanoOfSecond":I
    .restart local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 340
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

    const-string v7, "Unable to obtain Instant from TemporalAccessor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    .line 341
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private nanosUntil(Ljava/time/Instant;)J
    .locals 10

    .prologue
    .line 988
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "end":Ljava/time/Instant;
    move-object v6, v1

    iget-wide v6, v6, Ljava/time/Instant;->seconds:J

    move-object v8, v0

    iget-wide v8, v8, Ljava/time/Instant;->seconds:J

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v6

    move-wide v2, v6

    .line 989
    .local v2, "secsDiff":J
    move-wide v6, v2

    const v8, 0x3b9aca00

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    move-wide v4, v6

    .line 990
    .local v4, "totalNanos":J
    move-wide v6, v4

    move-object v8, v1

    iget v8, v8, Ljava/time/Instant;->nanos:I

    move-object v9, v0

    iget v9, v9, Ljava/time/Instant;->nanos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "this":Ljava/time/Instant;
    return-wide v0
.end method

.method public static now()Ljava/time/Instant;
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/Instant;
    .locals 3

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "clock":Ljava/time/Clock;
    move-object v1, v0

    const-string v2, "clock"

    invoke-static {v1, v2}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 257
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "clock":Ljava/time/Clock;
    return-object v0
.end method

.method public static ofEpochMilli(J)Ljava/time/Instant;
    .locals 10

    .prologue
    .line 312
    move-wide v1, p0

    .local v1, "epochMilli":J
    move-wide v6, v1

    const-wide/16 v8, 0x3e8

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v6

    move-wide v3, v6

    .line 313
    .local v3, "secs":J
    move-wide v6, v1

    const/16 v8, 0x3e8

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v6

    move v5, v6

    .line 314
    .local v5, "mos":I
    move-wide v6, v3

    move v8, v5

    const v9, 0xf4240

    mul-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "epochMilli":J
    return-object v1
.end method

.method public static ofEpochSecond(J)Ljava/time/Instant;
    .locals 6

    .prologue
    .line 272
    move-wide v0, p0

    .local v0, "epochSecond":J
    move-wide v2, v0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "epochSecond":J
    return-object v0
.end method

.method public static ofEpochSecond(JJ)Ljava/time/Instant;
    .locals 14

    .prologue
    .line 296
    move-wide v1, p0

    .local v1, "epochSecond":J
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

    .line 297
    .local v5, "secs":J
    move-wide v8, v3

    const v10, 0x3b9aca00

    invoke-static {v8, v9, v10}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v8

    move v7, v8

    .line 298
    .local v7, "nos":I
    move-wide v8, v5

    move v10, v7

    invoke-static {v8, v9, v10}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v8

    move-object v1, v8

    .end local v1    # "epochSecond":J
    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/Instant;
    .locals 4

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    move-object v2, v0

    sget-object v3, Ljava/time/Instant;->FROM:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v1, v2, v3}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/Instant;

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method private plus(JJ)Ljava/time/Instant;
    .locals 17

    .prologue
    .line 779
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/Instant;
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

    .line 780
    move-object v10, v1

    move-object v1, v10

    .line 786
    .end local v1    # "this":Ljava/time/Instant;
    :goto_0
    return-object v1

    .line 782
    .restart local v1    # "this":Ljava/time/Instant;
    :cond_0
    move-object v10, v1

    iget-wide v10, v10, Ljava/time/Instant;->seconds:J

    move-wide v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v10

    move-wide v6, v10

    .line 783
    .local v6, "epochSec":J
    move-wide v10, v6

    move-wide v12, v4

    const-wide/32 v14, 0x3b9aca00

    div-long/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v10

    move-wide v6, v10

    .line 784
    move-wide v10, v4

    const-wide/32 v12, 0x3b9aca00

    rem-long/2addr v10, v12

    move-wide v4, v10

    .line 785
    move-object v10, v1

    iget v10, v10, Ljava/time/Instant;->nanos:I

    int-to-long v10, v10

    move-wide v12, v4

    add-long/2addr v10, v12

    move-wide v8, v10

    .line 786
    .local v8, "nanoAdjustment":J
    move-wide v10, v6

    move-wide v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v10

    move-object v1, v10

    goto :goto_0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/Instant;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1171
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    move-wide v1, v4

    .line 1172
    .local v1, "seconds":J
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v4

    move v3, v4

    .line 1173
    .local v3, "nanos":I
    move-wide v4, v1

    move v6, v3

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

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
    .line 1162
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private secondsUntil(Ljava/time/Instant;)J
    .locals 10

    .prologue
    .line 994
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "end":Ljava/time/Instant;
    move-object v6, v1

    iget-wide v6, v6, Ljava/time/Instant;->seconds:J

    move-object v8, v0

    iget-wide v8, v8, Ljava/time/Instant;->seconds:J

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v6

    move-wide v2, v6

    .line 995
    .local v2, "secsDiff":J
    move-object v6, v1

    iget v6, v6, Ljava/time/Instant;->nanos:I

    move-object v7, v0

    iget v7, v7, Ljava/time/Instant;->nanos:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    move-wide v4, v6

    .line 996
    .local v4, "nanosDiff":J
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 997
    move-wide v6, v2

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-wide v2, v6

    .line 1001
    :cond_0
    :goto_0
    move-wide v6, v2

    move-wide v0, v6

    .end local v0    # "this":Ljava/time/Instant;
    return-wide v0

    .line 998
    .restart local v0    # "this":Ljava/time/Instant;
    :cond_1
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 999
    move-wide v6, v2

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-wide v2, v6

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1153
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    iget-wide v4, v4, Ljava/time/Instant;->seconds:J

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    iget v4, v4, Ljava/time/Instant;->nanos:I

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;
    .locals 4

    .prologue
    .line 1019
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 4

    .prologue
    .line 1037
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/Instant;

    invoke-virtual {v2, v3}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return v0
.end method

.method public compareTo(Ljava/time/Instant;)I
    .locals 8

    .prologue
    .line 1073
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-object v2, p1

    .local v2, "otherInstant":Ljava/time/Instant;
    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Instant;->seconds:J

    move-object v6, v2

    iget-wide v6, v6, Ljava/time/Instant;->seconds:J

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v4

    move v3, v4

    .line 1074
    .local v3, "cmp":I
    move v4, v3

    if-eqz v4, :cond_0

    .line 1075
    move v4, v3

    move v1, v4

    .line 1077
    .end local v1    # "this":Ljava/time/Instant;
    :goto_0
    return v1

    .restart local v1    # "this":Ljava/time/Instant;
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljava/time/Instant;->nanos:I

    move-object v5, v2

    iget v5, v5, Ljava/time/Instant;->nanos:I

    sub-int/2addr v4, v5

    move v1, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 1117
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-object v2, p1

    .local v2, "otherInstant":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 1118
    const/4 v4, 0x1

    move v1, v4

    .line 1125
    .end local v1    # "this":Ljava/time/Instant;
    :goto_0
    return v1

    .line 1120
    .restart local v1    # "this":Ljava/time/Instant;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljava/time/Instant;

    if-eqz v4, :cond_2

    .line 1121
    move-object v4, v2

    check-cast v4, Ljava/time/Instant;

    move-object v3, v4

    .line 1122
    .local v3, "other":Ljava/time/Instant;
    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Instant;->seconds:J

    move-object v6, v3

    iget-wide v6, v6, Ljava/time/Instant;->seconds:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget v4, v4, Ljava/time/Instant;->nanos:I

    move-object v5, v3

    iget v5, v5, Ljava/time/Instant;->nanos:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1125
    .end local v3    # "other":Ljava/time/Instant;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 8

    .prologue
    .line 487
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v3, v2

    instance-of v3, v3, Ljava/time/temporal/ChronoField;

    if-eqz v3, :cond_0

    .line 488
    sget-object v3, Ljava/time/Instant$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v4, v2

    check-cast v4, Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 494
    :goto_0
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

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 489
    :pswitch_0
    move-object v3, v1

    iget v3, v3, Ljava/time/Instant;->nanos:I

    move v1, v3

    .line 496
    .end local v1    # "this":Ljava/time/Instant;
    :goto_1
    return v1

    .line 490
    .restart local v1    # "this":Ljava/time/Instant;
    :pswitch_1
    move-object v3, v1

    iget v3, v3, Ljava/time/Instant;->nanos:I

    const/16 v4, 0x3e8

    div-int/lit16 v3, v3, 0x3e8

    move v1, v3

    goto :goto_1

    .line 491
    :pswitch_2
    move-object v3, v1

    iget v3, v3, Ljava/time/Instant;->nanos:I

    const v4, 0xf4240

    div-int/2addr v3, v4

    move v1, v3

    goto :goto_1

    .line 492
    :pswitch_3
    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Instant;->seconds:J

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    goto :goto_0

    .line 496
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/Instant;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    move v1, v3

    goto :goto_1

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getEpochSecond()J
    .locals 3

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, v0

    iget-wide v1, v1, Ljava/time/Instant;->seconds:J

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/Instant;
    return-wide v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 524
    sget-object v2, Ljava/time/Instant$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 530
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

    .line 525
    :pswitch_0
    move-object v2, v0

    iget v2, v2, Ljava/time/Instant;->nanos:I

    int-to-long v2, v2

    move-wide v0, v2

    .line 532
    .end local v0    # "this":Ljava/time/Instant;
    :goto_0
    return-wide v0

    .line 526
    .restart local v0    # "this":Ljava/time/Instant;
    :pswitch_1
    move-object v2, v0

    iget v2, v2, Ljava/time/Instant;->nanos:I

    const/16 v3, 0x3e8

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 527
    :pswitch_2
    move-object v2, v0

    iget v2, v2, Ljava/time/Instant;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 528
    :pswitch_3
    move-object v2, v0

    iget-wide v2, v2, Ljava/time/Instant;->seconds:J

    move-wide v0, v2

    goto :goto_0

    .line 532
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNano()I
    .locals 2

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, v0

    iget v1, v1, Ljava/time/Instant;->nanos:I

    move v0, v1

    .end local v0    # "this":Ljava/time/Instant;
    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 1135
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-object v2, v1

    iget-wide v2, v2, Ljava/time/Instant;->seconds:J

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Instant;->seconds:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    const/16 v3, 0x33

    move-object v4, v1

    iget v4, v4, Ljava/time/Instant;->nanos:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move v1, v2

    .end local v1    # "this":Ljava/time/Instant;
    return v1
.end method

.method public isAfter(Ljava/time/Instant;)Z
    .locals 4

    .prologue
    .line 1090
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "otherInstant":Ljava/time/Instant;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return v0

    .restart local v0    # "this":Ljava/time/Instant;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBefore(Ljava/time/Instant;)Z
    .locals 4

    .prologue
    .line 1103
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "otherInstant":Ljava/time/Instant;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return v0

    .restart local v0    # "this":Ljava/time/Instant;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 421
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 423
    .end local v0    # "this":Ljava/time/Instant;
    :goto_1
    return v0

    .line 421
    .restart local v0    # "this":Ljava/time/Instant;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 423
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
    .line 428
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 429
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 431
    .end local v0    # "this":Ljava/time/Instant;
    :goto_1
    return v0

    .line 429
    .restart local v0    # "this":Ljava/time/Instant;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 431
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

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .locals 9

    .prologue
    .line 807
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
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

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v5

    const-wide/16 v6, 0x1

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .end local v1    # "this":Ljava/time/Instant;
    return-object v1

    .restart local v1    # "this":Ljava/time/Instant;
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    neg-long v6, v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v5

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;
    .locals 4

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/Instant;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 157
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/Instant;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public minusMillis(J)Ljava/time/Instant;
    .locals 7

    .prologue
    .line 839
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-wide v1, p1

    .local v1, "millisToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 840
    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v3

    move-object v0, v3

    .line 842
    .end local v0    # "this":Ljava/time/Instant;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Instant;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public minusNanos(J)Ljava/time/Instant;
    .locals 7

    .prologue
    .line 856
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-wide v1, p1

    .local v1, "nanosToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 857
    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v3

    move-object v0, v3

    .line 859
    .end local v0    # "this":Ljava/time/Instant;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Instant;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public minusSeconds(J)Ljava/time/Instant;
    .locals 7

    .prologue
    .line 822
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-wide v1, p1

    .local v1, "secondsToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 823
    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v3

    move-object v0, v3

    .line 825
    .end local v0    # "this":Ljava/time/Instant;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Instant;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .locals 13

    .prologue
    .line 708
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-wide v2, p1

    .local v2, "amountToAdd":J
    move-object/from16 v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v4

    instance-of v5, v5, Ljava/time/temporal/ChronoUnit;

    if-eqz v5, :cond_0

    .line 709
    sget-object v5, Ljava/time/Instant$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v6, v4

    check-cast v6, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v6}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 719
    new-instance v5, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

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

    .line 710
    :pswitch_0
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v5

    move-object v1, v5

    .line 721
    .end local v1    # "this":Ljava/time/Instant;
    :goto_0
    return-object v1

    .line 711
    .restart local v1    # "this":Ljava/time/Instant;
    :pswitch_1
    move-object v5, v1

    move-wide v6, v2

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    move-wide v8, v2

    const-wide/32 v10, 0xf4240

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 712
    :pswitch_2
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 713
    :pswitch_3
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 714
    :pswitch_4
    move-object v5, v1

    move-wide v6, v2

    const/16 v8, 0x3c

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 715
    :pswitch_5
    move-object v5, v1

    move-wide v6, v2

    const/16 v8, 0xe10

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 716
    :pswitch_6
    move-object v5, v1

    move-wide v6, v2

    const v8, 0xa8c0

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 717
    :pswitch_7
    move-object v5, v1

    move-wide v6, v2

    const v8, 0x15180

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 721
    :cond_0
    move-object v5, v4

    move-object v6, v1

    move-wide v7, v2

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    check-cast v5, Ljava/time/Instant;

    move-object v1, v5

    goto :goto_0

    .line 709
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;
    .locals 4

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/Instant;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 157
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Instant;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/Instant;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public plusMillis(J)Ljava/time/Instant;
    .locals 11

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
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

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public plusNanos(J)Ljava/time/Instant;
    .locals 9

    .prologue
    .line 764
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-wide v1, p1

    .local v1, "nanosToAdd":J
    move-object v3, v0

    const-wide/16 v4, 0x0

    move-wide v6, v1

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public plusSeconds(J)Ljava/time/Instant;
    .locals 9

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-wide v1, p1

    .local v1, "secondsToAdd":J
    move-object v3, v0

    move-wide v4, v1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/Instant;->plus(JJ)Ljava/time/Instant;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
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
    .line 884
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 885
    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v2

    .line 893
    .end local v0    # "this":Ljava/time/Instant;
    :goto_0
    return-object v0

    .line 888
    .restart local v0    # "this":Ljava/time/Instant;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    .line 889
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    .line 890
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 891
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 893
    :cond_2
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 4

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public toEpochMilli()J
    .locals 8

    .prologue
    .line 1056
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Instant;->seconds:J

    const/16 v6, 0x3e8

    invoke-static {v4, v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v4

    move-wide v2, v4

    .line 1057
    .local v2, "millis":J
    move-wide v4, v2

    move-object v6, v1

    iget v6, v6, Ljava/time/Instant;->nanos:I

    const v7, 0xf4240

    div-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Ljava/time/Instant;
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1148
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/Instant;
    .locals 16

    .prologue
    .line 674
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-object/from16 v2, p1

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v10, v2

    sget-object v11, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne v10, v11, :cond_0

    .line 675
    move-object v10, v1

    move-object v1, v10

    .line 687
    .end local v1    # "this":Ljava/time/Instant;
    :goto_0
    return-object v1

    .line 677
    .restart local v1    # "this":Ljava/time/Instant;
    :cond_0
    move-object v10, v2

    invoke-interface {v10}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v10

    move-object v3, v10

    .line 678
    .local v3, "unitDur":Ljava/time/Duration;
    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v10

    const-wide/32 v12, 0x15180

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 679
    new-instance v10, Ljava/time/DateTimeException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "Unit is too large to be used for truncation"

    invoke-direct {v11, v12}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 681
    :cond_1
    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/Duration;->toNanos()J

    move-result-wide v10

    move-wide v4, v10

    .line 682
    .local v4, "dur":J
    const-wide v10, 0x4e94914f0000L

    move-wide v12, v4

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 683
    new-instance v10, Ljava/time/DateTimeException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "Unit must divide into a standard day without remainder"

    invoke-direct {v11, v12}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 685
    :cond_2
    move-object v10, v1

    iget-wide v10, v10, Ljava/time/Instant;->seconds:J

    const-wide/32 v12, 0x15180

    rem-long/2addr v10, v12

    const-wide/32 v12, 0x3b9aca00

    mul-long/2addr v10, v12

    move-object v12, v1

    iget v12, v12, Ljava/time/Instant;->nanos:I

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v6, v10

    .line 686
    .local v6, "nod":J
    move-wide v10, v6

    move-wide v12, v4

    div-long/2addr v10, v12

    move-wide v12, v4

    mul-long/2addr v10, v12

    move-wide v8, v10

    .line 687
    .local v8, "result":J
    move-object v10, v1

    move-wide v11, v8

    move-wide v13, v6

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v10

    move-object v1, v10

    goto :goto_0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 11

    .prologue
    .line 969
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-object v2, p1

    .local v2, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v3, p2

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v6, v2

    invoke-static {v6}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v6

    move-object v4, v6

    .line 970
    .local v4, "end":Ljava/time/Instant;
    move-object v6, v3

    instance-of v6, v6, Ljava/time/temporal/ChronoUnit;

    if-eqz v6, :cond_0

    .line 971
    move-object v6, v3

    check-cast v6, Ljava/time/temporal/ChronoUnit;

    move-object v5, v6

    .line 972
    .local v5, "f":Ljava/time/temporal/ChronoUnit;
    sget-object v6, Ljava/time/Instant$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v7, v5

    invoke-virtual {v7}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 982
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

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 973
    :pswitch_0
    move-object v6, v1

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/time/Instant;->nanosUntil(Ljava/time/Instant;)J

    move-result-wide v6

    move-wide v1, v6

    .line 984
    .end local v1    # "this":Ljava/time/Instant;
    .end local v5    # "f":Ljava/time/temporal/ChronoUnit;
    :goto_0
    return-wide v1

    .line 974
    .restart local v1    # "this":Ljava/time/Instant;
    .restart local v5    # "f":Ljava/time/temporal/ChronoUnit;
    :pswitch_1
    move-object v6, v1

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/time/Instant;->nanosUntil(Ljava/time/Instant;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 975
    :pswitch_2
    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 976
    :pswitch_3
    move-object v6, v1

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 977
    :pswitch_4
    move-object v6, v1

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 978
    :pswitch_5
    move-object v6, v1

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v6

    const-wide/16 v8, 0xe10

    div-long/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 979
    :pswitch_6
    move-object v6, v1

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v6

    const-wide/32 v8, 0xa8c0

    div-long/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 980
    :pswitch_7
    move-object v6, v1

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/time/Instant;->secondsUntil(Ljava/time/Instant;)J

    move-result-wide v6

    const-wide/32 v8, 0x15180

    div-long/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 984
    .end local v5    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_0
    move-object v6, v3

    move-object v7, v1

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 972
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Instant;
    .locals 4

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/Instant;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/Instant;
    .locals 12

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v6, v1

    instance-of v6, v6, Ljava/time/temporal/ChronoField;

    if-eqz v6, :cond_4

    .line 632
    move-object v6, v1

    check-cast v6, Ljava/time/temporal/ChronoField;

    move-object v4, v6

    .line 633
    .local v4, "f":Ljava/time/temporal/ChronoField;
    move-object v6, v4

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 634
    sget-object v6, Ljava/time/Instant$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v7, v4

    invoke-virtual {v7}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 646
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

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 636
    :pswitch_0
    move-wide v6, v2

    long-to-int v6, v6

    const v7, 0xf4240

    mul-int/2addr v6, v7

    move v5, v6

    .line 637
    .local v5, "nval":I
    move v6, v5

    move-object v7, v0

    iget v7, v7, Ljava/time/Instant;->nanos:I

    if-eq v6, v7, :cond_0

    move-object v6, v0

    iget-wide v6, v6, Ljava/time/Instant;->seconds:J

    move v8, v5

    invoke-static {v6, v7, v8}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v6

    :goto_0
    move-object v0, v6

    .line 648
    .end local v0    # "this":Ljava/time/Instant;
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    .end local v5    # "nval":I
    :goto_1
    return-object v0

    .line 637
    .restart local v0    # "this":Ljava/time/Instant;
    .restart local v4    # "f":Ljava/time/temporal/ChronoField;
    .restart local v5    # "nval":I
    :cond_0
    move-object v6, v0

    goto :goto_0

    .line 640
    .end local v5    # "nval":I
    :pswitch_1
    move-wide v6, v2

    long-to-int v6, v6

    const/16 v7, 0x3e8

    mul-int/lit16 v6, v6, 0x3e8

    move v5, v6

    .line 641
    .restart local v5    # "nval":I
    move v6, v5

    move-object v7, v0

    iget v7, v7, Ljava/time/Instant;->nanos:I

    if-eq v6, v7, :cond_1

    move-object v6, v0

    iget-wide v6, v6, Ljava/time/Instant;->seconds:J

    move v8, v5

    invoke-static {v6, v7, v8}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v6

    :goto_2
    move-object v0, v6

    goto :goto_1

    :cond_1
    move-object v6, v0

    goto :goto_2

    .line 643
    .end local v5    # "nval":I
    :pswitch_2
    move-wide v6, v2

    move-object v8, v0

    iget v8, v8, Ljava/time/Instant;->nanos:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-wide v6, v6, Ljava/time/Instant;->seconds:J

    move-wide v8, v2

    long-to-int v8, v8

    invoke-static {v6, v7, v8}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v6

    :goto_3
    move-object v0, v6

    goto :goto_1

    :cond_2
    move-object v6, v0

    goto :goto_3

    .line 644
    :pswitch_3
    move-wide v6, v2

    move-object v8, v0

    iget-wide v8, v8, Ljava/time/Instant;->seconds:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    move-wide v6, v2

    move-object v8, v0

    iget v8, v8, Ljava/time/Instant;->nanos:I

    invoke-static {v6, v7, v8}, Ljava/time/Instant;->create(JI)Ljava/time/Instant;

    move-result-object v6

    :goto_4
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v6, v0

    goto :goto_4

    .line 648
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :cond_4
    move-object v6, v1

    move-object v7, v0

    move-wide v8, v2

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    check-cast v6, Ljava/time/Instant;

    move-object v0, v6

    goto :goto_1

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Instant;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Instant;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljava/time/Instant;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/Instant;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/Instant;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/Instant;
    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1166
    move-object v1, p0

    .local v1, "this":Ljava/time/Instant;
    move-object v2, p1

    .local v2, "out":Ljava/io/DataOutput;
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Instant;->seconds:J

    invoke-interface {v3, v4, v5}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1167
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Ljava/time/Instant;->nanos:I

    invoke-interface {v3, v4}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1168
    return-void
.end method
