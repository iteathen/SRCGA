.class public final Ljava/time/LocalTime;
.super Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;
.source "LocalTime.java"

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
        "Ljava/time/LocalTime;",
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
            "Ljava/time/LocalTime;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOURS:[Ljava/time/LocalTime;

.field static final HOURS_PER_DAY:I = 0x18

.field public static final MAX:Ljava/time/LocalTime;

.field static final MICROS_PER_DAY:J = 0x141dd76000L

.field public static final MIDNIGHT:Ljava/time/LocalTime;

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MIN:Ljava/time/LocalTime;

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field public static final NOON:Ljava/time/LocalTime;

.field static final SECONDS_PER_DAY:I = 0x15180

.field static final SECONDS_PER_HOUR:I = 0xe10

.field static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x5904a8b626e1a4f1L


# instance fields
.field private final hour:B

.field private final minute:B

.field private final nano:I

.field private final second:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 113
    new-instance v1, Ljava/time/LocalTime$1;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    invoke-direct {v2}, Ljava/time/LocalTime$1;-><init>()V

    sput-object v1, Ljava/time/LocalTime;->FROM:Ljava/time/temporal/TemporalQuery;

    .line 122
    const/16 v1, 0x18

    new-array v1, v1, [Ljava/time/LocalTime;

    sput-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    .line 124
    const/4 v1, 0x0

    move v0, v1

    .local v0, "i":I
    :goto_0
    move v1, v0

    sget-object v2, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 125
    sget-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    move v2, v0

    new-instance v3, Ljava/time/LocalTime;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/time/LocalTime;-><init>(IIII)V

    aput-object v3, v1, v2

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    sget-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sput-object v1, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    .line 128
    sget-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    sput-object v1, Ljava/time/LocalTime;->NOON:Ljava/time/LocalTime;

    .line 129
    sget-object v1, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sput-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    .line 130
    new-instance v1, Ljava/time/LocalTime;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    const/16 v3, 0x17

    const/16 v4, 0x3b

    const/16 v5, 0x3b

    const v6, 0x3b9ac9ff

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/LocalTime;-><init>(IIII)V

    sput-object v1, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    .line 131
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 7

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move v1, p1

    .local v1, "hour":I
    move v2, p2

    .local v2, "minute":I
    move v3, p3

    .local v3, "second":I
    move v4, p4

    .local v4, "nanoOfSecond":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 468
    move-object v5, v0

    move v6, v1

    int-to-byte v6, v6

    iput-byte v6, v5, Ljava/time/LocalTime;->hour:B

    .line 469
    move-object v5, v0

    move v6, v2

    int-to-byte v6, v6

    iput-byte v6, v5, Ljava/time/LocalTime;->minute:B

    .line 470
    move-object v5, v0

    move v6, v3

    int-to-byte v6, v6

    iput-byte v6, v5, Ljava/time/LocalTime;->second:B

    .line 471
    move-object v5, v0

    move v6, v4

    iput v6, v5, Ljava/time/LocalTime;->nano:I

    .line 472
    return-void
.end method

.method private static create(IIII)Ljava/time/LocalTime;
    .locals 11

    .prologue
    .line 453
    move v0, p0

    .local v0, "hour":I
    move v1, p1

    .local v1, "minute":I
    move v2, p2

    .local v2, "second":I
    move v3, p3

    .local v3, "nanoOfSecond":I
    move v4, v1

    move v5, v2

    or-int/2addr v4, v5

    move v5, v3

    or-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 454
    sget-object v4, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    move v5, v0

    aget-object v4, v4, v5

    move-object v0, v4

    .line 456
    .end local v0    # "hour":I
    :goto_0
    return-object v0

    .restart local v0    # "hour":I
    :cond_0
    new-instance v4, Ljava/time/LocalTime;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/time/LocalTime;-><init>(IIII)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;
    .locals 7

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalTime;

    move-object v1, v2

    .line 403
    .local v1, "time":Ljava/time/LocalTime;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 404
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to obtain LocalTime from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 405
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

    .line 407
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object v0
.end method

.method private get0(Ljava/time/temporal/TemporalField;)I
    .locals 9

    .prologue
    .line 623
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    sget-object v4, Ljava/time/LocalTime$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v5, v2

    check-cast v5, Ljava/time/temporal/ChronoField;

    invoke-virtual {v5}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 640
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 624
    :pswitch_0
    move-object v4, v1

    iget v4, v4, Ljava/time/LocalTime;->nano:I

    move v1, v4

    .line 638
    .end local v1    # "this":Ljava/time/LocalTime;
    :goto_0
    return v1

    .line 625
    .restart local v1    # "this":Ljava/time/LocalTime;
    :pswitch_1
    new-instance v4, Ljava/time/DateTimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Field too large for an int: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 626
    :pswitch_2
    move-object v4, v1

    iget v4, v4, Ljava/time/LocalTime;->nano:I

    const/16 v5, 0x3e8

    div-int/lit16 v4, v4, 0x3e8

    move v1, v4

    goto :goto_0

    .line 627
    :pswitch_3
    new-instance v4, Ljava/time/DateTimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Field too large for an int: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 628
    :pswitch_4
    move-object v4, v1

    iget v4, v4, Ljava/time/LocalTime;->nano:I

    const v5, 0xf4240

    div-int/2addr v4, v5

    move v1, v4

    goto :goto_0

    .line 629
    :pswitch_5
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    long-to-int v4, v4

    move v1, v4

    goto :goto_0

    .line 630
    :pswitch_6
    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->second:B

    move v1, v4

    goto :goto_0

    .line 631
    :pswitch_7
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v4

    move v1, v4

    goto :goto_0

    .line 632
    :pswitch_8
    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->minute:B

    move v1, v4

    goto :goto_0

    .line 633
    :pswitch_9
    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->hour:B

    const/16 v5, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    move-object v5, v1

    iget-byte v5, v5, Ljava/time/LocalTime;->minute:B

    add-int/2addr v4, v5

    move v1, v4

    goto :goto_0

    .line 634
    :pswitch_a
    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->hour:B

    const/16 v5, 0xc

    rem-int/lit8 v4, v4, 0xc

    move v1, v4

    goto/16 :goto_0

    .line 635
    :pswitch_b
    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->hour:B

    const/16 v5, 0xc

    rem-int/lit8 v4, v4, 0xc

    move v3, v4

    .local v3, "ham":I
    move v4, v3

    const/16 v5, 0xc

    rem-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_0

    const/16 v4, 0xc

    :goto_1
    move v1, v4

    goto/16 :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    .line 636
    .end local v3    # "ham":I
    :pswitch_c
    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->hour:B

    move v1, v4

    goto/16 :goto_0

    .line 637
    :pswitch_d
    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->hour:B

    if-nez v4, :cond_1

    const/16 v4, 0x18

    :goto_2
    move v1, v4

    goto/16 :goto_0

    :cond_1
    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->hour:B

    goto :goto_2

    .line 638
    :pswitch_e
    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->hour:B

    const/16 v5, 0xc

    div-int/lit8 v4, v4, 0xc

    move v1, v4

    goto/16 :goto_0

    .line 623
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static now()Ljava/time/LocalTime;
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalTime;->now(Ljava/time/Clock;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/LocalTime;
    .locals 10

    .prologue
    .line 247
    move-object v1, p0

    .local v1, "clock":Ljava/time/Clock;
    move-object v6, v1

    const-string v7, "clock"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 249
    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v6

    move-object v2, v6

    .line 250
    .local v2, "now":Ljava/time/Instant;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/time/bp/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v6

    move-object v3, v6

    .line 251
    .local v3, "offset":Ljava/time/ZoneOffset;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    const-wide/32 v8, 0x15180

    rem-long/2addr v6, v8

    move-wide v4, v6

    .line 252
    .local v4, "secsOfDay":J
    move-wide v6, v4

    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/32 v8, 0x15180

    rem-long/2addr v6, v8

    move-wide v4, v6

    .line 253
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 254
    move-wide v6, v4

    const-wide/32 v8, 0x15180

    add-long/2addr v6, v8

    move-wide v4, v6

    .line 256
    :cond_0
    move-wide v6, v4

    move-object v8, v2

    invoke-virtual {v8}, Ljava/time/Instant;->getNano()I

    move-result v8

    invoke-static {v6, v7, v8}, Ljava/time/LocalTime;->ofSecondOfDay(JI)Ljava/time/LocalTime;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "clock":Ljava/time/Clock;
    return-object v1
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/LocalTime;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/LocalTime;->now(Ljava/time/Clock;)Ljava/time/LocalTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(II)Ljava/time/LocalTime;
    .locals 10

    .prologue
    .line 273
    move v1, p0

    .local v1, "hour":I
    move v2, p1

    .local v2, "minute":I
    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 274
    move v3, v2

    if-nez v3, :cond_0

    .line 275
    sget-object v3, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    move v4, v1

    aget-object v3, v3, v4

    move-object v1, v3

    .line 278
    .end local v1    # "hour":I
    :goto_0
    return-object v1

    .line 277
    .restart local v1    # "hour":I
    :cond_0
    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 278
    new-instance v3, Ljava/time/LocalTime;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/time/LocalTime;-><init>(IIII)V

    move-object v1, v3

    goto :goto_0
.end method

.method public static of(III)Ljava/time/LocalTime;
    .locals 10

    .prologue
    .line 295
    move v0, p0

    .local v0, "hour":I
    move v1, p1

    .local v1, "minute":I
    move v2, p2

    .local v2, "second":I
    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move v4, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 296
    move v3, v1

    move v4, v2

    or-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 297
    sget-object v3, Ljava/time/LocalTime;->HOURS:[Ljava/time/LocalTime;

    move v4, v0

    aget-object v3, v3, v4

    move-object v0, v3

    .line 301
    .end local v0    # "hour":I
    :goto_0
    return-object v0

    .line 299
    .restart local v0    # "hour":I
    :cond_0
    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 300
    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 301
    new-instance v3, Ljava/time/LocalTime;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move v5, v0

    move v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/time/LocalTime;-><init>(IIII)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static of(IIII)Ljava/time/LocalTime;
    .locals 9

    .prologue
    .line 317
    move v1, p0

    .local v1, "hour":I
    move v2, p1

    .local v2, "minute":I
    move v3, p2

    .local v3, "second":I
    move v4, p3

    .local v4, "nanoOfSecond":I
    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move v6, v1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v5

    .line 318
    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move v6, v2

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v5

    .line 319
    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    move v6, v3

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v5

    .line 320
    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move v6, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v5

    .line 321
    move v5, v1

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-static {v5, v6, v7, v8}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "hour":I
    return-object v1
.end method

.method public static ofNanoOfDay(J)Ljava/time/LocalTime;
    .locals 12

    .prologue
    .line 374
    move-wide v1, p0

    .local v1, "nanoOfDay":J
    sget-object v6, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 375
    move-wide v6, v1

    const-wide v8, 0x34630b8a000L

    div-long/2addr v6, v8

    long-to-int v6, v6

    move v3, v6

    .line 376
    .local v3, "hours":I
    move-wide v6, v1

    move v8, v3

    int-to-long v8, v8

    const-wide v10, 0x34630b8a000L

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    move-wide v1, v6

    .line 377
    move-wide v6, v1

    const-wide v8, 0xdf8475800L

    div-long/2addr v6, v8

    long-to-int v6, v6

    move v4, v6

    .line 378
    .local v4, "minutes":I
    move-wide v6, v1

    move v8, v4

    int-to-long v8, v8

    const-wide v10, 0xdf8475800L

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    move-wide v1, v6

    .line 379
    move-wide v6, v1

    const-wide/32 v8, 0x3b9aca00

    div-long/2addr v6, v8

    long-to-int v6, v6

    move v5, v6

    .line 380
    .local v5, "seconds":I
    move-wide v6, v1

    move v8, v5

    int-to-long v8, v8

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    move-wide v1, v6

    .line 381
    move v6, v3

    move v7, v4

    move v8, v5

    move-wide v9, v1

    long-to-int v9, v9

    invoke-static {v6, v7, v8, v9}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "nanoOfDay":J
    return-object v1
.end method

.method public static ofSecondOfDay(J)Ljava/time/LocalTime;
    .locals 8

    .prologue
    .line 335
    move-wide v0, p0

    .local v0, "secondOfDay":J
    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v4

    .line 336
    move-wide v4, v0

    const-wide/16 v6, 0xe10

    div-long/2addr v4, v6

    long-to-int v4, v4

    move v2, v4

    .line 337
    .local v2, "hours":I
    move-wide v4, v0

    move v6, v2

    const/16 v7, 0xe10

    mul-int/lit16 v6, v6, 0xe10

    int-to-long v6, v6

    sub-long/2addr v4, v6

    move-wide v0, v4

    .line 338
    move-wide v4, v0

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    long-to-int v4, v4

    move v3, v4

    .line 339
    .local v3, "minutes":I
    move-wide v4, v0

    move v6, v3

    const/16 v7, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    int-to-long v6, v6

    sub-long/2addr v4, v6

    move-wide v0, v4

    .line 340
    move v4, v2

    move v5, v3

    move-wide v6, v0

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "secondOfDay":J
    return-object v0
.end method

.method static ofSecondOfDay(JI)Ljava/time/LocalTime;
    .locals 10

    .prologue
    .line 355
    move-wide v1, p0

    .local v1, "secondOfDay":J
    move v3, p2

    .local v3, "nanoOfSecond":I
    sget-object v6, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 356
    sget-object v6, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move v7, v3

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 357
    move-wide v6, v1

    const-wide/16 v8, 0xe10

    div-long/2addr v6, v8

    long-to-int v6, v6

    move v4, v6

    .line 358
    .local v4, "hours":I
    move-wide v6, v1

    move v8, v4

    const/16 v9, 0xe10

    mul-int/lit16 v8, v8, 0xe10

    int-to-long v8, v8

    sub-long/2addr v6, v8

    move-wide v1, v6

    .line 359
    move-wide v6, v1

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    long-to-int v6, v6

    move v5, v6

    .line 360
    .local v5, "minutes":I
    move-wide v6, v1

    move v8, v5

    const/16 v9, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    int-to-long v8, v8

    sub-long/2addr v6, v8

    move-wide v1, v6

    .line 361
    move v6, v4

    move v7, v5

    move-wide v8, v1

    long-to-int v8, v8

    move v9, v3

    invoke-static {v6, v7, v8, v9}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "secondOfDay":J
    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;
    .locals 3

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;
    .locals 5

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 437
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/LocalTime;->FROM:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalTime;

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/LocalTime;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1546
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v5, v0

    invoke-interface {v5}, Ljava/io/DataInput;->readByte()B

    move-result v5

    move v1, v5

    .line 1547
    .local v1, "hour":I
    const/4 v5, 0x0

    move v2, v5

    .line 1548
    .local v2, "minute":I
    const/4 v5, 0x0

    move v3, v5

    .line 1549
    .local v3, "second":I
    const/4 v5, 0x0

    move v4, v5

    .line 1550
    .local v4, "nano":I
    move v5, v1

    if-gez v5, :cond_0

    .line 1551
    move v5, v1

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v1, v5

    .line 1565
    :goto_0
    move v5, v1

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-static {v5, v6, v7, v8}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0

    .line 1553
    .restart local v0    # "in":Ljava/io/DataInput;
    :cond_0
    move-object v5, v0

    invoke-interface {v5}, Ljava/io/DataInput;->readByte()B

    move-result v5

    move v2, v5

    .line 1554
    move v5, v2

    if-gez v5, :cond_1

    .line 1555
    move v5, v2

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v2, v5

    goto :goto_0

    .line 1557
    :cond_1
    move-object v5, v0

    invoke-interface {v5}, Ljava/io/DataInput;->readByte()B

    move-result v5

    move v3, v5

    .line 1558
    move v5, v3

    if-gez v5, :cond_2

    .line 1559
    move v5, v3

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v3, v5

    goto :goto_0

    .line 1561
    :cond_2
    move-object v5, v0

    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    move-result v5

    move v4, v5

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1520
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
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
    .line 1511
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x5

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    .prologue
    .line 1243
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;
    .locals 4

    .prologue
    .line 1319
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "date":Ljava/time/LocalDate;
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public atOffset(Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;
    .locals 4

    .prologue
    .line 1332
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return v0
.end method

.method public compareTo(Ljava/time/LocalTime;)I
    .locals 5

    .prologue
    .line 1376
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/LocalTime;
    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->hour:B

    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->hour:B

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v3

    move v2, v3

    .line 1377
    .local v2, "cmp":I
    move v3, v2

    if-nez v3, :cond_0

    .line 1378
    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->minute:B

    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->minute:B

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v3

    move v2, v3

    .line 1379
    move v3, v2

    if-nez v3, :cond_0

    .line 1380
    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->second:B

    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->second:B

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v3

    move v2, v3

    .line 1381
    move v3, v2

    if-nez v3, :cond_0

    .line 1382
    move-object v3, v0

    iget v3, v3, Ljava/time/LocalTime;->nano:I

    move-object v4, v1

    iget v4, v4, Ljava/time/LocalTime;->nano:I

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->compareInts(II)I

    move-result v3

    move v2, v3

    .line 1386
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Ljava/time/LocalTime;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1430
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 1431
    const/4 v3, 0x1

    move v0, v3

    .line 1438
    .end local v0    # "this":Ljava/time/LocalTime;
    :goto_0
    return v0

    .line 1433
    .restart local v0    # "this":Ljava/time/LocalTime;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/LocalTime;

    if-eqz v3, :cond_2

    .line 1434
    move-object v3, v1

    check-cast v3, Ljava/time/LocalTime;

    move-object v2, v3

    .line 1435
    .local v2, "other":Ljava/time/LocalTime;
    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->hour:B

    move-object v4, v2

    iget-byte v4, v4, Ljava/time/LocalTime;->hour:B

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->minute:B

    move-object v4, v2

    iget-byte v4, v4, Ljava/time/LocalTime;->minute:B

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->second:B

    move-object v4, v2

    iget-byte v4, v4, Ljava/time/LocalTime;->second:B

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Ljava/time/LocalTime;->nano:I

    move-object v4, v2

    iget v4, v4, Ljava/time/LocalTime;->nano:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1438
    .end local v2    # "other":Ljava/time/LocalTime;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1505
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1506
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 4

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 581
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/time/LocalTime;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move v0, v2

    .line 583
    .end local v0    # "this":Ljava/time/LocalTime;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/LocalTime;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getHour()I
    .locals 2

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, v0

    iget-byte v1, v1, Ljava/time/LocalTime;->hour:B

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalTime;
    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 6

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 611
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 612
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    move-wide v0, v2

    .line 619
    .end local v0    # "this":Ljava/time/LocalTime;
    :goto_0
    return-wide v0

    .line 614
    .restart local v0    # "this":Ljava/time/LocalTime;
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    .line 615
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    move-wide v0, v2

    goto :goto_0

    .line 617
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/time/LocalTime;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 619
    :cond_2
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
    .line 659
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, v0

    iget-byte v1, v1, Ljava/time/LocalTime;->minute:B

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalTime;
    return v0
.end method

.method public getNano()I
    .locals 2

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, v0

    iget v1, v1, Ljava/time/LocalTime;->nano:I

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalTime;
    return v0
.end method

.method public getSecond()I
    .locals 2

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, v0

    iget-byte v1, v1, Ljava/time/LocalTime;->second:B

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalTime;
    return v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 1448
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    move-wide v2, v4

    .line 1449
    .local v2, "nod":J
    move-wide v4, v2

    move-wide v6, v2

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    move v1, v4

    .end local v1    # "this":Ljava/time/LocalTime;
    return v1
.end method

.method public isAfter(Ljava/time/LocalTime;)Z
    .locals 4

    .prologue
    .line 1399
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/LocalTime;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return v0

    .restart local v0    # "this":Ljava/time/LocalTime;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBefore(Ljava/time/LocalTime;)Z
    .locals 4

    .prologue
    .line 1412
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "other":Ljava/time/LocalTime;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return v0

    .restart local v0    # "this":Ljava/time/LocalTime;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 514
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v2

    move v0, v2

    .line 516
    .end local v0    # "this":Ljava/time/LocalTime;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/LocalTime;
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

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

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .locals 4

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_0

    .line 522
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalUnit;->isTimeBased()Z

    move-result v2

    move v0, v2

    .line 524
    .end local v0    # "this":Ljava/time/LocalTime;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/LocalTime;
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

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;
    .locals 9

    .prologue
    .line 1117
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
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

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v5

    const-wide/16 v6, 0x1

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalTime;
    return-object v1

    .restart local v1    # "this":Ljava/time/LocalTime;
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    neg-long v6, v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v5

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;
    .locals 4

    .prologue
    .line 1097
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/LocalTime;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 88
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalTime;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public minusHours(J)Ljava/time/LocalTime;
    .locals 9

    .prologue
    .line 1133
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-wide v1, p1

    .local v1, "hoursToSubtract":J
    move-object v3, v0

    move-wide v4, v1

    const-wide/16 v6, 0x18

    rem-long/2addr v4, v6

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public minusMinutes(J)Ljava/time/LocalTime;
    .locals 9

    .prologue
    .line 1148
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-wide v1, p1

    .local v1, "minutesToSubtract":J
    move-object v3, v0

    move-wide v4, v1

    const-wide/16 v6, 0x5a0

    rem-long/2addr v4, v6

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public minusNanos(J)Ljava/time/LocalTime;
    .locals 9

    .prologue
    .line 1178
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-wide v1, p1

    .local v1, "nanosToSubtract":J
    move-object v3, v0

    move-wide v4, v1

    const-wide v6, 0x4e94914f0000L

    rem-long/2addr v4, v6

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public minusSeconds(J)Ljava/time/LocalTime;
    .locals 9

    .prologue
    .line 1163
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-wide v1, p1

    .local v1, "secondsToSubtract":J
    move-object v3, v0

    move-wide v4, v1

    const-wide/32 v6, 0x15180

    rem-long/2addr v4, v6

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;
    .locals 11

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-wide v1, p1

    .local v1, "amountToAdd":J
    move-object v3, p3

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v3

    instance-of v5, v5, Ljava/time/temporal/ChronoUnit;

    if-eqz v5, :cond_0

    .line 964
    move-object v5, v3

    check-cast v5, Ljava/time/temporal/ChronoUnit;

    move-object v4, v5

    .line 965
    .local v4, "f":Ljava/time/temporal/ChronoUnit;
    sget-object v5, Ljava/time/LocalTime$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 974
    new-instance v5, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported unit: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 966
    :pswitch_0
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    .line 976
    .end local v0    # "this":Ljava/time/LocalTime;
    .end local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :goto_0
    return-object v0

    .line 967
    .restart local v0    # "this":Ljava/time/LocalTime;
    .restart local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :pswitch_1
    move-object v5, v0

    move-wide v6, v1

    const-wide v8, 0x141dd76000L

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 968
    :pswitch_2
    move-object v5, v0

    move-wide v6, v1

    const-wide/32 v8, 0x5265c00

    rem-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusNanos(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 969
    :pswitch_3
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 970
    :pswitch_4
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 971
    :pswitch_5
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 972
    :pswitch_6
    move-object v5, v0

    move-wide v6, v1

    const-wide/16 v8, 0x2

    rem-long/2addr v6, v8

    const-wide/16 v8, 0xc

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 976
    .end local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_0
    move-object v5, v3

    move-object v6, v0

    move-wide v7, v1

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    check-cast v5, Ljava/time/LocalTime;

    move-object v0, v5

    goto :goto_0

    .line 965
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

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;
    .locals 4

    .prologue
    .line 943
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/LocalTime;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 88
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalTime;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public plusHours(J)Ljava/time/LocalTime;
    .locals 9

    .prologue
    .line 992
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-wide v1, p1

    .local v1, "hoursToAdd":J
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 993
    move-object v4, v0

    move-object v0, v4

    .line 996
    .end local v0    # "this":Ljava/time/LocalTime;
    :goto_0
    return-object v0

    .line 995
    .restart local v0    # "this":Ljava/time/LocalTime;
    :cond_0
    move-wide v4, v1

    const-wide/16 v6, 0x18

    rem-long/2addr v4, v6

    long-to-int v4, v4

    move-object v5, v0

    iget-byte v5, v5, Ljava/time/LocalTime;->hour:B

    add-int/2addr v4, v5

    const/16 v5, 0x18

    add-int/lit8 v4, v4, 0x18

    const/16 v5, 0x18

    rem-int/lit8 v4, v4, 0x18

    move v3, v4

    .line 996
    .local v3, "newHour":I
    move v4, v3

    move-object v5, v0

    iget-byte v5, v5, Ljava/time/LocalTime;->minute:B

    move-object v6, v0

    iget-byte v6, v6, Ljava/time/LocalTime;->second:B

    move-object v7, v0

    iget v7, v7, Ljava/time/LocalTime;->nano:I

    invoke-static {v4, v5, v6, v7}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public plusMinutes(J)Ljava/time/LocalTime;
    .locals 13

    .prologue
    .line 1011
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move-wide v2, p1

    .local v2, "minutesToAdd":J
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1012
    move-object v8, v1

    move-object v1, v8

    .line 1021
    .end local v1    # "this":Ljava/time/LocalTime;
    :goto_0
    return-object v1

    .line 1014
    .restart local v1    # "this":Ljava/time/LocalTime;
    :cond_0
    move-object v8, v1

    iget-byte v8, v8, Ljava/time/LocalTime;->hour:B

    const/16 v9, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    move-object v9, v1

    iget-byte v9, v9, Ljava/time/LocalTime;->minute:B

    add-int/2addr v8, v9

    move v4, v8

    .line 1015
    .local v4, "mofd":I
    move-wide v8, v2

    const-wide/16 v10, 0x5a0

    rem-long/2addr v8, v10

    long-to-int v8, v8

    move v9, v4

    add-int/2addr v8, v9

    const/16 v9, 0x5a0

    add-int/lit16 v8, v8, 0x5a0

    const/16 v9, 0x5a0

    rem-int/lit16 v8, v8, 0x5a0

    move v5, v8

    .line 1016
    .local v5, "newMofd":I
    move v8, v4

    move v9, v5

    if-ne v8, v9, :cond_1

    .line 1017
    move-object v8, v1

    move-object v1, v8

    goto :goto_0

    .line 1019
    :cond_1
    move v8, v5

    const/16 v9, 0x3c

    div-int/lit8 v8, v8, 0x3c

    move v6, v8

    .line 1020
    .local v6, "newHour":I
    move v8, v5

    const/16 v9, 0x3c

    rem-int/lit8 v8, v8, 0x3c

    move v7, v8

    .line 1021
    .local v7, "newMinute":I
    move v8, v6

    move v9, v7

    move-object v10, v1

    iget-byte v10, v10, Ljava/time/LocalTime;->second:B

    move-object v11, v1

    iget v11, v11, Ljava/time/LocalTime;->nano:I

    invoke-static {v8, v9, v10, v11}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v8

    move-object v1, v8

    goto :goto_0
.end method

.method public plusNanos(J)Ljava/time/LocalTime;
    .locals 17

    .prologue
    .line 1063
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move-wide/from16 v2, p1

    .local v2, "nanosToAdd":J
    move-wide v12, v2

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 1064
    move-object v12, v1

    move-object v1, v12

    .line 1075
    .end local v1    # "this":Ljava/time/LocalTime;
    :goto_0
    return-object v1

    .line 1066
    .restart local v1    # "this":Ljava/time/LocalTime;
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v12

    move-wide v4, v12

    .line 1067
    .local v4, "nofd":J
    move-wide v12, v2

    const-wide v14, 0x4e94914f0000L

    rem-long/2addr v12, v14

    move-wide v14, v4

    add-long/2addr v12, v14

    const-wide v14, 0x4e94914f0000L

    add-long/2addr v12, v14

    const-wide v14, 0x4e94914f0000L

    rem-long/2addr v12, v14

    move-wide v6, v12

    .line 1068
    .local v6, "newNofd":J
    move-wide v12, v4

    move-wide v14, v6

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    .line 1069
    move-object v12, v1

    move-object v1, v12

    goto :goto_0

    .line 1071
    :cond_1
    move-wide v12, v6

    const-wide v14, 0x34630b8a000L

    div-long/2addr v12, v14

    long-to-int v12, v12

    move v8, v12

    .line 1072
    .local v8, "newHour":I
    move-wide v12, v6

    const-wide v14, 0xdf8475800L

    div-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    rem-long/2addr v12, v14

    long-to-int v12, v12

    move v9, v12

    .line 1073
    .local v9, "newMinute":I
    move-wide v12, v6

    const-wide/32 v14, 0x3b9aca00

    div-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    rem-long/2addr v12, v14

    long-to-int v12, v12

    move v10, v12

    .line 1074
    .local v10, "newSecond":I
    move-wide v12, v6

    const-wide/32 v14, 0x3b9aca00

    rem-long/2addr v12, v14

    long-to-int v12, v12

    move v11, v12

    .line 1075
    .local v11, "newNano":I
    move v12, v8

    move v13, v9

    move v14, v10

    move v15, v11

    invoke-static {v12, v13, v14, v15}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v12

    move-object v1, v12

    goto :goto_0
.end method

.method public plusSeconds(J)Ljava/time/LocalTime;
    .locals 13

    .prologue
    .line 1036
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-wide v1, p1

    .local v1, "secondstoAdd":J
    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1037
    move-object v8, v0

    move-object v0, v8

    .line 1048
    .end local v0    # "this":Ljava/time/LocalTime;
    :goto_0
    return-object v0

    .line 1039
    .restart local v0    # "this":Ljava/time/LocalTime;
    :cond_0
    move-object v8, v0

    iget-byte v8, v8, Ljava/time/LocalTime;->hour:B

    const/16 v9, 0xe10

    mul-int/lit16 v8, v8, 0xe10

    move-object v9, v0

    iget-byte v9, v9, Ljava/time/LocalTime;->minute:B

    const/16 v10, 0x3c

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v8, v9

    move-object v9, v0

    iget-byte v9, v9, Ljava/time/LocalTime;->second:B

    add-int/2addr v8, v9

    move v3, v8

    .line 1041
    .local v3, "sofd":I
    move-wide v8, v1

    const-wide/32 v10, 0x15180

    rem-long/2addr v8, v10

    long-to-int v8, v8

    move v9, v3

    add-int/2addr v8, v9

    const v9, 0x15180

    add-int/2addr v8, v9

    const v9, 0x15180

    rem-int/2addr v8, v9

    move v4, v8

    .line 1042
    .local v4, "newSofd":I
    move v8, v3

    move v9, v4

    if-ne v8, v9, :cond_1

    .line 1043
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    .line 1045
    :cond_1
    move v8, v4

    const/16 v9, 0xe10

    div-int/lit16 v8, v8, 0xe10

    move v5, v8

    .line 1046
    .local v5, "newHour":I
    move v8, v4

    const/16 v9, 0x3c

    div-int/lit8 v8, v8, 0x3c

    const/16 v9, 0x3c

    rem-int/lit8 v8, v8, 0x3c

    move v6, v8

    .line 1047
    .local v6, "newMinute":I
    move v8, v4

    const/16 v9, 0x3c

    rem-int/lit8 v8, v8, 0x3c

    move v7, v8

    .line 1048
    .local v7, "newSecond":I
    move v8, v5

    move v9, v6

    move v10, v7

    move-object v11, v0

    iget v11, v11, Ljava/time/LocalTime;->nano:I

    invoke-static {v8, v9, v10, v11}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v8

    move-object v0, v8

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
    .line 1203
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1204
    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v2

    .line 1214
    .end local v0    # "this":Ljava/time/LocalTime;
    :goto_0
    return-object v0

    .line 1205
    .restart local v0    # "this":Ljava/time/LocalTime;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1206
    move-object v2, v0

    move-object v0, v2

    goto :goto_0

    .line 1209
    :cond_1
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    .line 1210
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    .line 1211
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 1212
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 1214
    :cond_3
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
    .line 551
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public toNanoOfDay()J
    .locals 10

    .prologue
    .line 1356
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->hour:B

    int-to-long v4, v4

    const-wide v6, 0x34630b8a000L

    mul-long/2addr v4, v6

    move-wide v2, v4

    .line 1357
    .local v2, "total":J
    move-wide v4, v2

    move-object v6, v1

    iget-byte v6, v6, Ljava/time/LocalTime;->minute:B

    int-to-long v6, v6

    const-wide v8, 0xdf8475800L

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 1358
    move-wide v4, v2

    move-object v6, v1

    iget-byte v6, v6, Ljava/time/LocalTime;->second:B

    int-to-long v6, v6

    const-wide/32 v8, 0x3b9aca00

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 1359
    move-wide v4, v2

    move-object v6, v1

    iget v6, v6, Ljava/time/LocalTime;->nano:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 1360
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Ljava/time/LocalTime;
    return-wide v1
.end method

.method public toSecondOfDay()I
    .locals 5

    .prologue
    .line 1343
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v2, v0

    iget-byte v2, v2, Ljava/time/LocalTime;->hour:B

    const/16 v3, 0xe10

    mul-int/lit16 v2, v2, 0xe10

    move v1, v2

    .line 1344
    .local v1, "total":I
    move v2, v1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->minute:B

    const/16 v4, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    move v1, v2

    .line 1345
    move v2, v1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->second:B

    add-int/2addr v2, v3

    move v1, v2

    .line 1346
    move v2, v1

    move v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1471
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/16 v8, 0x12

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v6

    .line 1472
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v6, v0

    iget-byte v6, v6, Ljava/time/LocalTime;->hour:B

    move v2, v6

    .line 1473
    .local v2, "hourValue":I
    move-object v6, v0

    iget-byte v6, v6, Ljava/time/LocalTime;->minute:B

    move v3, v6

    .line 1474
    .local v3, "minuteValue":I
    move-object v6, v0

    iget-byte v6, v6, Ljava/time/LocalTime;->second:B

    move v4, v6

    .line 1475
    .local v4, "secondValue":I
    move-object v6, v0

    iget v6, v6, Ljava/time/LocalTime;->nano:I

    move v5, v6

    .line 1476
    .local v5, "nanoValue":I
    move-object v6, v1

    move v7, v2

    const/16 v8, 0xa

    if-ge v7, v8, :cond_2

    const-string v7, "0"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    const/16 v8, 0xa

    if-ge v7, v8, :cond_3

    const-string v7, ":0"

    .line 1477
    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1478
    move v6, v4

    if-gtz v6, :cond_0

    move v6, v5

    if-lez v6, :cond_1

    .line 1479
    :cond_0
    move-object v6, v1

    move v7, v4

    const/16 v8, 0xa

    if-ge v7, v8, :cond_4

    const-string v7, ":0"

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1480
    move v6, v5

    if-lez v6, :cond_1

    .line 1481
    move-object v6, v1

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1482
    move v6, v5

    const v7, 0xf4240

    rem-int/2addr v6, v7

    if-nez v6, :cond_5

    .line 1483
    move-object v6, v1

    move v7, v5

    const v8, 0xf4240

    div-int/2addr v7, v8

    const/16 v8, 0x3e8

    add-int/lit16 v7, v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1491
    :cond_1
    :goto_3
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0

    .line 1476
    .restart local v0    # "this":Ljava/time/LocalTime;
    :cond_2
    const-string v7, ""

    goto :goto_0

    :cond_3
    const-string v7, ":"

    goto :goto_1

    .line 1479
    :cond_4
    const-string v7, ":"

    goto :goto_2

    .line 1484
    :cond_5
    move v6, v5

    const/16 v7, 0x3e8

    rem-int/lit16 v6, v6, 0x3e8

    if-nez v6, :cond_6

    .line 1485
    move-object v6, v1

    move v7, v5

    const/16 v8, 0x3e8

    div-int/lit16 v7, v7, 0x3e8

    const v8, 0xf4240

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_3

    .line 1487
    :cond_6
    move-object v6, v1

    move v7, v5

    const v8, 0x3b9aca00

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_3
.end method

.method public truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/LocalTime;
    .locals 13

    .prologue
    .line 909
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move-object v2, p1

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v8, v2

    sget-object v9, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_0

    .line 910
    move-object v8, v1

    move-object v1, v8

    .line 921
    .end local v1    # "this":Ljava/time/LocalTime;
    :goto_0
    return-object v1

    .line 912
    .restart local v1    # "this":Ljava/time/LocalTime;
    :cond_0
    move-object v8, v2

    invoke-interface {v8}, Ljava/time/temporal/TemporalUnit;->getDuration()Ljava/time/Duration;

    move-result-object v8

    move-object v3, v8

    .line 913
    .local v3, "unitDur":Ljava/time/Duration;
    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v8

    const-wide/32 v10, 0x15180

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 914
    new-instance v8, Ljava/time/DateTimeException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Unit is too large to be used for truncation"

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 916
    :cond_1
    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/Duration;->toNanos()J

    move-result-wide v8

    move-wide v4, v8

    .line 917
    .local v4, "dur":J
    const-wide v8, 0x4e94914f0000L

    move-wide v10, v4

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 918
    new-instance v8, Ljava/time/DateTimeException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Unit must divide into a standard day without remainder"

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 920
    :cond_2
    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v8

    move-wide v6, v8

    .line 921
    .local v6, "nod":J
    move-wide v8, v6

    move-wide v10, v4

    div-long/2addr v8, v10

    move-wide v10, v4

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v8

    move-object v1, v8

    goto :goto_0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 11

    .prologue
    .line 1291
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v2, p2

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v6, v1

    invoke-static {v6}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v6

    move-object v3, v6

    .line 1292
    .local v3, "end":Ljava/time/LocalTime;
    move-object v6, v2

    instance-of v6, v6, Ljava/time/temporal/ChronoUnit;

    if-eqz v6, :cond_0

    .line 1293
    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 1294
    .local v4, "nanosUntil":J
    sget-object v6, Ljava/time/LocalTime$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v7, v2

    check-cast v7, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v7}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1303
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

    .line 1295
    :pswitch_0
    move-wide v6, v4

    move-wide v0, v6

    .line 1305
    .end local v0    # "this":Ljava/time/LocalTime;
    .end local v4    # "nanosUntil":J
    :goto_0
    return-wide v0

    .line 1296
    .restart local v0    # "this":Ljava/time/LocalTime;
    .restart local v4    # "nanosUntil":J
    :pswitch_1
    move-wide v6, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1297
    :pswitch_2
    move-wide v6, v4

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1298
    :pswitch_3
    move-wide v6, v4

    const-wide/32 v8, 0x3b9aca00

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1299
    :pswitch_4
    move-wide v6, v4

    const-wide v8, 0xdf8475800L

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1300
    :pswitch_5
    move-wide v6, v4

    const-wide v8, 0x34630b8a000L

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1301
    :pswitch_6
    move-wide v6, v4

    const-wide v8, 0x274a48a78000L

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 1305
    .end local v4    # "nanosUntil":J
    :cond_0
    move-object v6, v2

    move-object v7, v0

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v6

    move-wide v0, v6

    goto :goto_0

    .line 1294
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

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalTime;
    .locals 4

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalTime;

    if-eqz v2, :cond_0

    .line 706
    move-object v2, v1

    check-cast v2, Ljava/time/LocalTime;

    move-object v0, v2

    .line 708
    .end local v0    # "this":Ljava/time/LocalTime;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalTime;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/LocalTime;

    move-object v0, v2

    goto :goto_0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;
    .locals 12

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v5, v1

    instance-of v5, v5, Ljava/time/temporal/ChronoField;

    if-eqz v5, :cond_2

    .line 795
    move-object v5, v1

    check-cast v5, Ljava/time/temporal/ChronoField;

    move-object v4, v5

    .line 796
    .local v4, "f":Ljava/time/temporal/ChronoField;
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v5

    .line 797
    sget-object v5, Ljava/time/LocalTime$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 814
    new-instance v5, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported field: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 798
    :pswitch_0
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    .line 816
    .end local v0    # "this":Ljava/time/LocalTime;
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v0

    .line 799
    .restart local v0    # "this":Ljava/time/LocalTime;
    .restart local v4    # "f":Ljava/time/temporal/ChronoField;
    :pswitch_1
    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 800
    :pswitch_2
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    const/16 v7, 0x3e8

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5, v6}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 801
    :pswitch_3
    move-wide v5, v2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 802
    :pswitch_4
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    const v7, 0xf4240

    mul-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/time/LocalTime;->withNano(I)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 803
    :pswitch_5
    move-wide v5, v2

    const-wide/32 v7, 0xf4240

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 804
    :pswitch_6
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/LocalTime;->withSecond(I)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 805
    :pswitch_7
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusSeconds(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 806
    :pswitch_8
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/LocalTime;->withMinute(I)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 807
    :pswitch_9
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    iget-byte v8, v8, Ljava/time/LocalTime;->hour:B

    const/16 v9, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    move-object v9, v0

    iget-byte v9, v9, Ljava/time/LocalTime;->minute:B

    add-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusMinutes(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 808
    :pswitch_a
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    iget-byte v8, v8, Ljava/time/LocalTime;->hour:B

    const/16 v9, 0xc

    rem-int/lit8 v8, v8, 0xc

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 809
    :pswitch_b
    move-object v5, v0

    move-wide v6, v2

    const-wide/16 v8, 0xc

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    :goto_1
    move-object v8, v0

    iget-byte v8, v8, Ljava/time/LocalTime;->hour:B

    const/16 v9, 0xc

    rem-int/lit8 v8, v8, 0xc

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    :cond_0
    move-wide v6, v2

    goto :goto_1

    .line 810
    :pswitch_c
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 811
    :pswitch_d
    move-object v5, v0

    move-wide v6, v2

    const-wide/16 v8, 0x18

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    :goto_2
    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/LocalTime;->withHour(I)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    :cond_1
    move-wide v6, v2

    goto :goto_2

    .line 812
    :pswitch_e
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    iget-byte v8, v8, Ljava/time/LocalTime;->hour:B

    const/16 v9, 0xc

    div-int/lit8 v8, v8, 0xc

    int-to-long v8, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 816
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :cond_2
    move-object v5, v1

    move-object v6, v0

    move-wide v7, v2

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    check-cast v5, Ljava/time/LocalTime;

    move-object v0, v5

    goto/16 :goto_0

    .line 797
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/LocalTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/LocalTime;
    return-object v0
.end method

.method public withHour(I)Ljava/time/LocalTime;
    .locals 7

    .prologue
    .line 830
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move v2, p1

    .local v2, "hour":I
    move-object v3, v1

    iget-byte v3, v3, Ljava/time/LocalTime;->hour:B

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 831
    move-object v3, v1

    move-object v1, v3

    .line 834
    .end local v1    # "this":Ljava/time/LocalTime;
    :goto_0
    return-object v1

    .line 833
    .restart local v1    # "this":Ljava/time/LocalTime;
    :cond_0
    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 834
    move v3, v2

    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->minute:B

    move-object v5, v1

    iget-byte v5, v5, Ljava/time/LocalTime;->second:B

    move-object v6, v1

    iget v6, v6, Ljava/time/LocalTime;->nano:I

    invoke-static {v3, v4, v5, v6}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method public withMinute(I)Ljava/time/LocalTime;
    .locals 7

    .prologue
    .line 847
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move v2, p1

    .local v2, "minute":I
    move-object v3, v1

    iget-byte v3, v3, Ljava/time/LocalTime;->minute:B

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 848
    move-object v3, v1

    move-object v1, v3

    .line 851
    .end local v1    # "this":Ljava/time/LocalTime;
    :goto_0
    return-object v1

    .line 850
    .restart local v1    # "this":Ljava/time/LocalTime;
    :cond_0
    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 851
    move-object v3, v1

    iget-byte v3, v3, Ljava/time/LocalTime;->hour:B

    move v4, v2

    move-object v5, v1

    iget-byte v5, v5, Ljava/time/LocalTime;->second:B

    move-object v6, v1

    iget v6, v6, Ljava/time/LocalTime;->nano:I

    invoke-static {v3, v4, v5, v6}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method public withNano(I)Ljava/time/LocalTime;
    .locals 7

    .prologue
    .line 881
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move v2, p1

    .local v2, "nanoOfSecond":I
    move-object v3, v1

    iget v3, v3, Ljava/time/LocalTime;->nano:I

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 882
    move-object v3, v1

    move-object v1, v3

    .line 885
    .end local v1    # "this":Ljava/time/LocalTime;
    :goto_0
    return-object v1

    .line 884
    .restart local v1    # "this":Ljava/time/LocalTime;
    :cond_0
    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 885
    move-object v3, v1

    iget-byte v3, v3, Ljava/time/LocalTime;->hour:B

    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->minute:B

    move-object v5, v1

    iget-byte v5, v5, Ljava/time/LocalTime;->second:B

    move v6, v2

    invoke-static {v3, v4, v5, v6}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method public withSecond(I)Ljava/time/LocalTime;
    .locals 7

    .prologue
    .line 864
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalTime;
    move v2, p1

    .local v2, "second":I
    move-object v3, v1

    iget-byte v3, v3, Ljava/time/LocalTime;->second:B

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 865
    move-object v3, v1

    move-object v1, v3

    .line 868
    .end local v1    # "this":Ljava/time/LocalTime;
    :goto_0
    return-object v1

    .line 867
    .restart local v1    # "this":Ljava/time/LocalTime;
    :cond_0
    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 868
    move-object v3, v1

    iget-byte v3, v3, Ljava/time/LocalTime;->hour:B

    move-object v4, v1

    iget-byte v4, v4, Ljava/time/LocalTime;->minute:B

    move v5, v2

    move-object v6, v1

    iget v6, v6, Ljava/time/LocalTime;->nano:I

    invoke-static {v3, v4, v5, v6}, Ljava/time/LocalTime;->create(IIII)Ljava/time/LocalTime;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1524
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalTime;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v0

    iget v2, v2, Ljava/time/LocalTime;->nano:I

    if-nez v2, :cond_2

    .line 1525
    move-object v2, v0

    iget-byte v2, v2, Ljava/time/LocalTime;->second:B

    if-nez v2, :cond_1

    .line 1526
    move-object v2, v0

    iget-byte v2, v2, Ljava/time/LocalTime;->minute:B

    if-nez v2, :cond_0

    .line 1527
    move-object v2, v1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->hour:B

    const/4 v4, -0x1

    xor-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1543
    :goto_0
    return-void

    .line 1529
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->hour:B

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1530
    move-object v2, v1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->minute:B

    const/4 v4, -0x1

    xor-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 1533
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->hour:B

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1534
    move-object v2, v1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->minute:B

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1535
    move-object v2, v1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->second:B

    const/4 v4, -0x1

    xor-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 1538
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->hour:B

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1539
    move-object v2, v1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->minute:B

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1540
    move-object v2, v1

    move-object v3, v0

    iget-byte v3, v3, Ljava/time/LocalTime;->second:B

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1541
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/LocalTime;->nano:I

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0
.end method
