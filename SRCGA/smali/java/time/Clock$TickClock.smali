.class final Ljava/time/Clock$TickClock;
.super Ljava/time/Clock;
.source "Clock.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TickClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5a4531089f29d952L


# instance fields
.field private final baseClock:Ljava/time/Clock;

.field private final tickNanos:J


# direct methods
.method constructor <init>(Ljava/time/Clock;J)V
    .locals 8

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$TickClock;
    move-object v1, p1

    .local v1, "baseClock":Ljava/time/Clock;
    move-wide v2, p2

    .local v2, "tickNanos":J
    move-object v4, v0

    invoke-direct {v4}, Ljava/time/Clock;-><init>()V

    .line 553
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    .line 554
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Ljava/time/Clock$TickClock;->tickNanos:J

    .line 555
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 585
    move-object v1, p0

    .local v1, "this":Ljava/time/Clock$TickClock;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    instance-of v4, v4, Ljava/time/Clock$TickClock;

    if-eqz v4, :cond_1

    .line 586
    move-object v4, v2

    check-cast v4, Ljava/time/Clock$TickClock;

    move-object v3, v4

    .line 587
    .local v3, "other":Ljava/time/Clock$TickClock;
    move-object v4, v1

    iget-object v4, v4, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    move-object v5, v3

    iget-object v5, v5, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v4, v5}, Ljava/time/Clock;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/Clock$TickClock;->tickNanos:J

    move-object v6, v3

    iget-wide v6, v6, Ljava/time/Clock$TickClock;->tickNanos:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 589
    .end local v1    # "this":Ljava/time/Clock$TickClock;
    .end local v3    # "other":Ljava/time/Clock$TickClock;
    :goto_1
    return v1

    .line 587
    .restart local v1    # "this":Ljava/time/Clock$TickClock;
    .restart local v3    # "other":Ljava/time/Clock$TickClock;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 589
    .end local v3    # "other":Ljava/time/Clock$TickClock;
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1
.end method

.method public getZone()Ljava/time/ZoneId;
    .locals 2

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$TickClock;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Clock$TickClock;
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$TickClock;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-wide v2, v2, Ljava/time/Clock$TickClock;->tickNanos:J

    move-object v4, v0

    iget-wide v4, v4, Ljava/time/Clock$TickClock;->tickNanos:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/Clock$TickClock;
    return v0
.end method

.method public instant()Ljava/time/Instant;
    .locals 14

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$TickClock;
    move-object v6, v0

    iget-wide v6, v6, Ljava/time/Clock$TickClock;->tickNanos:J

    const-wide/32 v8, 0xf4240

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 575
    move-object v6, v0

    iget-object v6, v6, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    move-wide v1, v6

    .line 576
    .local v1, "millis":J
    move-wide v6, v1

    move-wide v8, v1

    move-object v10, v0

    iget-wide v10, v10, Ljava/time/Clock$TickClock;->tickNanos:J

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v6

    move-object v0, v6

    .line 581
    .end local v0    # "this":Ljava/time/Clock$TickClock;
    .end local v1    # "millis":J
    :goto_0
    return-object v0

    .line 578
    .restart local v0    # "this":Ljava/time/Clock$TickClock;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v6

    move-object v1, v6

    .line 579
    .local v1, "instant":Ljava/time/Instant;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/Instant;->getNano()I

    move-result v6

    int-to-long v6, v6

    move-wide v2, v6

    .line 580
    .local v2, "nanos":J
    move-wide v6, v2

    move-object v8, v0

    iget-wide v8, v8, Ljava/time/Clock$TickClock;->tickNanos:J

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v6

    move-wide v4, v6

    .line 581
    .local v4, "adjust":J
    move-object v6, v1

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/time/Instant;->minusNanos(J)Ljava/time/Instant;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public millis()J
    .locals 12

    .prologue
    .line 569
    move-object v1, p0

    .local v1, "this":Ljava/time/Clock$TickClock;
    move-object v4, v1

    iget-object v4, v4, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    move-wide v2, v4

    .line 570
    .local v2, "millis":J
    move-wide v4, v2

    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Ljava/time/Clock$TickClock;->tickNanos:J

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Ljava/time/Clock$TickClock;
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$TickClock;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TickClock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljava/time/Clock$TickClock;->tickNanos:J

    invoke-static {v2, v3}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Clock$TickClock;
    return-object v0
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 9

    .prologue
    .line 562
    move-object v1, p0

    .local v1, "this":Ljava/time/Clock$TickClock;
    move-object v2, p1

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    move-object v3, v1

    move-object v1, v3

    .line 565
    .end local v1    # "this":Ljava/time/Clock$TickClock;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljava/time/Clock$TickClock;
    :cond_0
    new-instance v3, Ljava/time/Clock$TickClock;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    iget-object v5, v5, Ljava/time/Clock$TickClock;->baseClock:Ljava/time/Clock;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/time/Clock;->withZone(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Ljava/time/Clock$TickClock;->tickNanos:J

    invoke-direct {v4, v5, v6, v7}, Ljava/time/Clock$TickClock;-><init>(Ljava/time/Clock;J)V

    move-object v1, v3

    goto :goto_0
.end method
