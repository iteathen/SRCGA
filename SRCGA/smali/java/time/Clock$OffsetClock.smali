.class final Ljava/time/Clock$OffsetClock;
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
    name = "OffsetClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1bdc04b7477ef050L


# instance fields
.field private final baseClock:Ljava/time/Clock;

.field private final offset:Ljava/time/Duration;


# direct methods
.method constructor <init>(Ljava/time/Clock;Ljava/time/Duration;)V
    .locals 5

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$OffsetClock;
    move-object v1, p1

    .local v1, "baseClock":Ljava/time/Clock;
    move-object v2, p2

    .local v2, "offset":Ljava/time/Duration;
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/Clock;-><init>()V

    .line 503
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    .line 504
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    .line 505
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$OffsetClock;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Ljava/time/Clock$OffsetClock;

    if-eqz v3, :cond_1

    .line 528
    move-object v3, v1

    check-cast v3, Ljava/time/Clock$OffsetClock;

    move-object v2, v3

    .line 529
    .local v2, "other":Ljava/time/Clock$OffsetClock;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v3, v4}, Ljava/time/Clock;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v3, v4}, Ljava/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 531
    .end local v0    # "this":Ljava/time/Clock$OffsetClock;
    .end local v2    # "other":Ljava/time/Clock$OffsetClock;
    :goto_1
    return v0

    .line 529
    .restart local v0    # "this":Ljava/time/Clock$OffsetClock;
    .restart local v2    # "other":Ljava/time/Clock$OffsetClock;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 531
    .end local v2    # "other":Ljava/time/Clock$OffsetClock;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public getZone()Ljava/time/ZoneId;
    .locals 2

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$OffsetClock;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Clock$OffsetClock;
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$OffsetClock;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/Clock$OffsetClock;
    return v0
.end method

.method public instant()Ljava/time/Instant;
    .locals 3

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$OffsetClock;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Clock$OffsetClock;
    return-object v0
.end method

.method public millis()J
    .locals 6

    .prologue
    .line 519
    move-object v1, p0

    .local v1, "this":Ljava/time/Clock$OffsetClock;
    move-object v2, v1

    iget-object v2, v2, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    move-object v4, v1

    iget-object v4, v4, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Ljava/time/Clock$OffsetClock;
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$OffsetClock;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OffsetClock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Clock$OffsetClock;
    return-object v0
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 7

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$OffsetClock;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    move-object v2, v0

    move-object v0, v2

    .line 515
    .end local v0    # "this":Ljava/time/Clock$OffsetClock;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Clock$OffsetClock;
    :cond_0
    new-instance v2, Ljava/time/Clock$OffsetClock;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljava/time/Clock$OffsetClock;->baseClock:Ljava/time/Clock;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/time/Clock;->withZone(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljava/time/Clock$OffsetClock;->offset:Ljava/time/Duration;

    invoke-direct {v3, v4, v5}, Ljava/time/Clock$OffsetClock;-><init>(Ljava/time/Clock;Ljava/time/Duration;)V

    move-object v0, v2

    goto :goto_0
.end method
