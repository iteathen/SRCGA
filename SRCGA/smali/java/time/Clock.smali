.class public abstract Ljava/time/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/Clock$TickClock;,
        Ljava/time/Clock$OffsetClock;,
        Ljava/time/Clock$FixedClock;,
        Ljava/time/Clock$SystemClock;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method public static fixed(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 7

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "fixedInstant":Ljava/time/Instant;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    const-string v3, "fixedInstant"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 275
    move-object v2, v1

    const-string v3, "zone"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 276
    new-instance v2, Ljava/time/Clock$FixedClock;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/time/Clock$FixedClock;-><init>(Ljava/time/Instant;Ljava/time/ZoneId;)V

    move-object v0, v2

    .end local v0    # "fixedInstant":Ljava/time/Instant;
    return-object v0
.end method

.method public static offset(Ljava/time/Clock;Ljava/time/Duration;)Ljava/time/Clock;
    .locals 7

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "baseClock":Ljava/time/Clock;
    move-object v1, p1

    .local v1, "offsetDuration":Ljava/time/Duration;
    move-object v2, v0

    const-string v3, "baseClock"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 301
    move-object v2, v1

    const-string v3, "offsetDuration"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 302
    move-object v2, v1

    sget-object v3, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v2, v3}, Ljava/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    move-object v2, v0

    move-object v0, v2

    .line 305
    .end local v0    # "baseClock":Ljava/time/Clock;
    :goto_0
    return-object v0

    .restart local v0    # "baseClock":Ljava/time/Clock;
    :cond_0
    new-instance v2, Ljava/time/Clock$OffsetClock;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/time/Clock$OffsetClock;-><init>(Ljava/time/Clock;Ljava/time/Duration;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static system(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    const-string v2, "zone"

    invoke-static {v1, v2}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    new-instance v1, Ljava/time/Clock$SystemClock;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static systemDefaultZone()Ljava/time/Clock;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Ljava/time/Clock$SystemClock;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static systemUTC()Ljava/time/Clock;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Ljava/time/Clock$SystemClock;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v1, v2}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static tick(Ljava/time/Clock;Ljava/time/Duration;)Ljava/time/Clock;
    .locals 10

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "baseClock":Ljava/time/Clock;
    move-object v1, p1

    .local v1, "tickDuration":Ljava/time/Duration;
    move-object v4, v0

    const-string v5, "baseClock"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 240
    move-object v4, v1

    const-string v5, "tickDuration"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 241
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/Duration;->isNegative()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Tick duration must not be negative"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/Duration;->toNanos()J

    move-result-wide v4

    move-wide v2, v4

    .line 245
    .local v2, "tickNanos":J
    move-wide v4, v2

    const-wide/32 v6, 0xf4240

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 252
    :goto_0
    move-wide v4, v2

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 253
    move-object v4, v0

    move-object v0, v4

    .line 255
    .end local v0    # "baseClock":Ljava/time/Clock;
    :goto_1
    return-object v0

    .line 247
    .restart local v0    # "baseClock":Ljava/time/Clock;
    :cond_1
    const-wide/32 v4, 0x3b9aca00

    move-wide v6, v2

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    goto :goto_0

    .line 250
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Invalid tick duration"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 255
    :cond_3
    new-instance v4, Ljava/time/Clock$TickClock;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-wide v7, v2

    invoke-direct {v5, v6, v7, v8}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    move-object v0, v4

    goto :goto_1
.end method

.method public static tickMinutes(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 7

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    new-instance v1, Ljava/time/Clock$TickClock;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    invoke-static {v3}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v3

    const-wide v4, 0xdf8475800L

    invoke-direct {v2, v3, v4, v5}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static tickSeconds(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 7

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    new-instance v1, Ljava/time/Clock$TickClock;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    invoke-static {v3}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v3

    const-wide/32 v4, 0x3b9aca00

    invoke-direct {v2, v3, v4, v5}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/Clock;
    return v0
.end method

.method public abstract getZone()Ljava/time/ZoneId;
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock;
    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/Clock;
    return v0
.end method

.method public abstract instant()Ljava/time/Instant;
.end method

.method public millis()J
    .locals 3

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/Clock;
    return-wide v0
.end method

.method public abstract withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
.end method
