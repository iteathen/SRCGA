.class final Ljava/time/chrono/ChronoLocalDateTimeImpl;
.super Ljava/time/chrono/ChronoLocalDateTime;
.source "ChronoLocalDateTimeImpl.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/time/chrono/AbstractChronoLocalDate;",
        ">",
        "Ljava/time/chrono/ChronoLocalDateTime",
        "<TD;>;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final HOURS_PER_DAY:I = 0x18

.field private static final MICROS_PER_DAY:J = 0x141dd76000L

.field private static final MILLIS_PER_DAY:J = 0x5265c00L

.field private static final MINUTES_PER_DAY:I = 0x5a0

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field private static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field private static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final date:Ljava/time/chrono/AbstractChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final time:Ljava/time/LocalTime;


# direct methods
.method private constructor <init>(Ljava/time/chrono/AbstractChronoLocalDate;Ljava/time/LocalTime;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/time/LocalTime;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "date":Ljava/time/chrono/AbstractChronoLocalDate;, "TD;"
    move-object v2, p2

    .local v2, "time":Ljava/time/LocalTime;
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/chrono/ChronoLocalDateTime;-><init>()V

    .line 153
    move-object v3, v1

    const-string v4, "date"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 154
    move-object v3, v2

    const-string v4, "time"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 155
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    .line 156
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    .line 157
    return-void
.end method

.method static of(Ljava/time/chrono/AbstractChronoLocalDate;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/time/chrono/AbstractChronoLocalDate;",
            ">(TR;",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "date":Ljava/time/chrono/AbstractChronoLocalDate;, "TR;"
    move-object v1, p1

    .local v1, "time":Ljava/time/LocalTime;
    new-instance v2, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/time/chrono/ChronoLocalDateTimeImpl;-><init>(Ljava/time/chrono/AbstractChronoLocalDate;Ljava/time/LocalTime;)V

    move-object v0, v2

    .end local v0    # "date":Ljava/time/chrono/AbstractChronoLocalDate;, "TR;"
    return-object v0
.end method

.method private plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 274
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-wide v2, p1

    .local v2, "days":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-wide v6, v2

    sget-object v8, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/AbstractChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {v4, v5, v6}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v1
.end method

.method private plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 278
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-wide/from16 v2, p1

    .local v2, "hours":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-wide v6, v2

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v4 .. v13}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/AbstractChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v1
.end method

.method private plusMinutes(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 282
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-wide/from16 v2, p1

    .local v2, "minutes":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    const-wide/16 v6, 0x0

    move-wide v8, v2

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v4 .. v13}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/AbstractChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v1
.end method

.method private plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 290
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-wide/from16 v2, p1

    .local v2, "nanos":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-wide v12, v2

    invoke-direct/range {v4 .. v13}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/AbstractChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v1
.end method

.method private plusWithOverflow(Ljava/time/chrono/AbstractChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 296
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object/from16 v2, p1

    .local v2, "newDate":Ljava/time/chrono/AbstractChronoLocalDate;, "TD;"
    move-wide/from16 v3, p2

    .local v3, "hours":J
    move-wide/from16 v5, p4

    .local v5, "minutes":J
    move-wide/from16 v7, p6

    .local v7, "seconds":J
    move-wide/from16 v9, p8

    .local v9, "nanos":J
    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    or-long v20, v20, v22

    move-wide/from16 v22, v7

    or-long v20, v20, v22

    move-wide/from16 v22, v9

    or-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_0

    .line 297
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v20

    move-object/from16 v1, v20

    .line 312
    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :goto_0
    return-object v1

    .line 299
    .restart local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :cond_0
    move-wide/from16 v20, v9

    const-wide v22, 0x4e94914f0000L

    div-long v20, v20, v22

    move-wide/from16 v22, v7

    const-wide/32 v24, 0x15180

    div-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v22, v5

    const-wide/16 v24, 0x5a0

    div-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v22, v3

    const-wide/16 v24, 0x18

    div-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v11, v20

    .line 303
    .local v11, "totDays":J
    move-wide/from16 v20, v9

    const-wide v22, 0x4e94914f0000L

    rem-long v20, v20, v22

    move-wide/from16 v22, v7

    const-wide/32 v24, 0x15180

    rem-long v22, v22, v24

    const-wide/32 v24, 0x3b9aca00

    mul-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v22, v5

    const-wide/16 v24, 0x5a0

    rem-long v22, v22, v24

    const-wide v24, 0xdf8475800L

    mul-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v22, v3

    const-wide/16 v24, 0x18

    rem-long v22, v22, v24

    const-wide v24, 0x34630b8a000L

    mul-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v13, v20

    .line 307
    .local v13, "totNanos":J
    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v20

    move-wide/from16 v15, v20

    .line 308
    .local v15, "curNoD":J
    move-wide/from16 v20, v13

    move-wide/from16 v22, v15

    add-long v20, v20, v22

    move-wide/from16 v13, v20

    .line 309
    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    const-wide v24, 0x4e94914f0000L

    invoke-static/range {v22 .. v25}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v22

    add-long v20, v20, v22

    move-wide/from16 v11, v20

    .line 310
    move-wide/from16 v20, v13

    const-wide v22, 0x4e94914f0000L

    invoke-static/range {v20 .. v23}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v20

    move-wide/from16 v17, v20

    .line 311
    .local v17, "newNoD":J
    move-wide/from16 v20, v17

    move-wide/from16 v22, v15

    cmp-long v20, v20, v22

    if-nez v20, :cond_1

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object/from16 v20, v0

    :goto_1
    move-object/from16 v19, v20

    .line 312
    .local v19, "newTime":Ljava/time/LocalTime;
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-wide/from16 v22, v11

    sget-object v24, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v21 .. v24}, Ljava/time/chrono/AbstractChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v21

    move-object/from16 v22, v19

    invoke-direct/range {v20 .. v22}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v20

    move-object/from16 v1, v20

    goto/16 :goto_0

    .line 311
    .end local v19    # "newTime":Ljava/time/LocalTime;
    :cond_1
    move-wide/from16 v20, v17

    invoke-static/range {v20 .. v21}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v20

    goto :goto_1
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "in":Ljava/io/ObjectInput;
    move-object v3, v0

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v1, v3

    .line 362
    .local v1, "date":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v3, v0

    invoke-interface {v3}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/LocalTime;

    move-object v2, v3

    .line 363
    .local v2, "time":Ljava/time/LocalTime;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "in":Ljava/io/ObjectInput;
    return-object v0
.end method

.method private with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/Temporal;",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "newDate":Ljava/time/temporal/Temporal;
    move-object v2, p2

    .local v2, "newTime":Ljava/time/LocalTime;
    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v5, v1

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object v5, v2

    if-ne v4, v5, :cond_0

    .line 169
    move-object v4, v0

    move-object v0, v4

    .line 173
    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :goto_0
    return-object v0

    .line 172
    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDate(Ljava/time/temporal/Temporal;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    move-object v3, v4

    .line 173
    .local v3, "cd":Ljava/time/chrono/AbstractChronoLocalDate;, "TD;"
    new-instance v4, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;-><init>(Ljava/time/chrono/AbstractChronoLocalDate;Ljava/time/LocalTime;)V

    move-object v0, v4

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    new-instance v1, Ljava/time/chrono/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0xc

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v0
.end method


# virtual methods
.method public atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "zoneId":Ljava/time/ZoneId;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 7

    .prologue
    .line 214
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v3, v2

    instance-of v3, v3, Ljava/time/temporal/ChronoField;

    if-eqz v3, :cond_1

    .line 215
    move-object v3, v2

    invoke-interface {v3}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    :goto_0
    move v1, v3

    .line 217
    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :goto_1
    return v1

    .line 215
    .restart local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    goto :goto_0

    .line 217
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    move v1, v3

    goto :goto_1
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 223
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    :goto_0
    move-wide v0, v2

    .line 225
    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :goto_1
    return-wide v0

    .line 223
    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    goto :goto_0

    .line 225
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_1
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 191
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

    .line 193
    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :goto_1
    return v0

    .line 191
    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 193
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
    .line 198
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 199
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

    .line 201
    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :goto_1
    return v0

    .line 199
    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 201
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

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 9

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v1
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-wide v1, p1

    .local v1, "amountToAdd":J
    move-object v3, p3

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v3

    instance-of v5, v5, Ljava/time/temporal/ChronoUnit;

    if-eqz v5, :cond_0

    .line 258
    move-object v5, v3

    check-cast v5, Ljava/time/temporal/ChronoUnit;

    move-object v4, v5

    .line 259
    .local v4, "f":Ljava/time/temporal/ChronoUnit;
    sget-object v5, Ljava/time/chrono/ChronoLocalDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 268
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-wide v7, v1

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/chrono/AbstractChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-object v0, v5

    .line 270
    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .end local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :goto_0
    return-object v0

    .line 260
    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .restart local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :pswitch_0
    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 261
    :pswitch_1
    move-object v5, v0

    move-wide v6, v1

    const-wide v8, 0x141dd76000L

    div-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-wide v6, v1

    const-wide v8, 0x141dd76000L

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 262
    :pswitch_2
    move-object v5, v0

    move-wide v6, v1

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-wide v6, v1

    const-wide/32 v8, 0x5265c00

    rem-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusNanos(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 263
    :pswitch_3
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 264
    :pswitch_4
    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusMinutes(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 265
    :pswitch_5
    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 266
    :pswitch_6
    move-object v5, v0

    move-wide v6, v1

    const-wide/16 v8, 0x100

    div-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusDays(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-wide v6, v1

    const-wide/16 v8, 0x100

    rem-long/2addr v6, v8

    const-wide/16 v8, 0xc

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusHours(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 270
    .end local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-virtual {v5}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v5

    move-object v6, v3

    move-object v7, v0

    move-wide v8, v1

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 259
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

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v1
.end method

.method plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 286
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-wide/from16 v2, p1

    .local v2, "seconds":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide v10, v2

    const-wide/16 v12, 0x0

    invoke-direct/range {v4 .. v13}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusWithOverflow(Ljava/time/chrono/AbstractChronoLocalDate;JJJJ)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v1
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 4

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 207
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 209
    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :goto_1
    return-object v0

    .line 207
    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    goto :goto_0

    .line 209
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_1
.end method

.method public toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v0
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 13

    .prologue
    .line 325
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v2, p1

    .local v2, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v3, p2

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v8

    move-object v4, v8

    .line 326
    .local v4, "end":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v8, v3

    instance-of v8, v8, Ljava/time/temporal/ChronoUnit;

    if-eqz v8, :cond_2

    .line 327
    move-object v8, v3

    check-cast v8, Ljava/time/temporal/ChronoUnit;

    move-object v5, v8

    .line 328
    .local v5, "f":Ljava/time/temporal/ChronoUnit;
    move-object v8, v5

    invoke-virtual {v8}, Ljava/time/temporal/ChronoUnit;->isTimeBased()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 329
    move-object v8, v4

    sget-object v9, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/chrono/ChronoLocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    move-object v10, v1

    iget-object v10, v10, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    sget-object v11, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11}, Ljava/time/chrono/AbstractChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    move-wide v6, v8

    .line 330
    .local v6, "amount":J
    sget-object v8, Ljava/time/chrono/ChronoLocalDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v9, v5

    invoke-virtual {v9}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 339
    :goto_0
    move-wide v8, v6

    move-object v10, v1

    iget-object v10, v10, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object v11, v4

    invoke-virtual {v11}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Ljava/time/LocalTime;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v8

    move-wide v1, v8

    .line 347
    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .end local v5    # "f":Ljava/time/temporal/ChronoUnit;
    .end local v6    # "amount":J
    :goto_1
    return-wide v1

    .line 331
    .restart local v1    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    .restart local v5    # "f":Ljava/time/temporal/ChronoUnit;
    .restart local v6    # "amount":J
    :pswitch_0
    move-wide v8, v6

    const-wide v10, 0x4e94914f0000L

    invoke-static {v8, v9, v10, v11}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v8

    move-wide v6, v8

    goto :goto_0

    .line 332
    :pswitch_1
    move-wide v8, v6

    const-wide v10, 0x141dd76000L

    invoke-static {v8, v9, v10, v11}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v8

    move-wide v6, v8

    goto :goto_0

    .line 333
    :pswitch_2
    move-wide v8, v6

    const-wide/32 v10, 0x5265c00

    invoke-static {v8, v9, v10, v11}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v8

    move-wide v6, v8

    goto :goto_0

    .line 334
    :pswitch_3
    move-wide v8, v6

    const v10, 0x15180

    invoke-static {v8, v9, v10}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v8

    move-wide v6, v8

    goto :goto_0

    .line 335
    :pswitch_4
    move-wide v8, v6

    const/16 v10, 0x5a0

    invoke-static {v8, v9, v10}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v8

    move-wide v6, v8

    goto :goto_0

    .line 336
    :pswitch_5
    move-wide v8, v6

    const/16 v10, 0x18

    invoke-static {v8, v9, v10}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v8

    move-wide v6, v8

    goto :goto_0

    .line 337
    :pswitch_6
    move-wide v8, v6

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v8

    move-wide v6, v8

    goto :goto_0

    .line 341
    .end local v6    # "amount":J
    :cond_0
    move-object v8, v4

    invoke-virtual {v8}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v8

    move-object v6, v8

    .line 342
    .local v6, "endDate":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v8, v4

    invoke-virtual {v8}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v8

    move-object v9, v1

    iget-object v9, v9, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-virtual {v8, v9}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 343
    move-object v8, v6

    const-wide/16 v9, 0x1

    sget-object v11, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/time/chrono/AbstractChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v8

    move-object v6, v8

    .line 345
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v9, v6

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/time/chrono/AbstractChronoLocalDate;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v8

    move-wide v1, v8

    goto :goto_1

    .line 347
    .end local v5    # "f":Ljava/time/temporal/ChronoUnit;
    .end local v6    # "endDate":Ljava/time/chrono/AbstractChronoLocalDate;
    :cond_2
    move-object v8, v3

    move-object v9, v1

    move-object v10, v4

    invoke-interface {v8, v9, v10}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v8

    move-wide v1, v8

    goto :goto_1

    .line 330
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

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAdjuster;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v2, :cond_0

    .line 233
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    move-object v0, v2

    .line 239
    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :goto_0
    return-object v0

    .line 234
    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalTime;

    if-eqz v2, :cond_1

    .line 235
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v4, v1

    check-cast v4, Ljava/time/LocalTime;

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 236
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    if-eqz v2, :cond_2

    .line 237
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 239
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v3

    check-cast v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v4, v1

    instance-of v4, v4, Ljava/time/temporal/ChronoField;

    if-eqz v4, :cond_1

    .line 245
    move-object v4, v1

    invoke-interface {v4}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v4

    move-object v0, v4

    .line 251
    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :goto_0
    return-object v0

    .line 248
    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/AbstractChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-direct {v4, v5, v6}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/Temporal;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 251
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    move-object v5, v1

    move-object v6, v0

    move-wide v7, v2

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 357
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoLocalDateTimeImpl;->time:Ljava/time/LocalTime;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 358
    return-void
.end method
