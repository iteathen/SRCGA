.class final Ljava/time/Clock$FixedClock;
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
    name = "FixedClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x671e0bb19c27c88eL


# instance fields
.field private final instant:Ljava/time/Instant;

.field private final zone:Ljava/time/ZoneId;


# direct methods
.method constructor <init>(Ljava/time/Instant;Ljava/time/ZoneId;)V
    .locals 5

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$FixedClock;
    move-object v1, p1

    .local v1, "fixedInstant":Ljava/time/Instant;
    move-object v2, p2

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/Clock;-><init>()V

    .line 453
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    .line 454
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    .line 455
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$FixedClock;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Ljava/time/Clock$FixedClock;

    if-eqz v3, :cond_1

    .line 478
    move-object v3, v1

    check-cast v3, Ljava/time/Clock$FixedClock;

    move-object v2, v3

    .line 479
    .local v2, "other":Ljava/time/Clock$FixedClock;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v3, v4}, Ljava/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v3, v4}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 481
    .end local v0    # "this":Ljava/time/Clock$FixedClock;
    .end local v2    # "other":Ljava/time/Clock$FixedClock;
    :goto_1
    return v0

    .line 479
    .restart local v0    # "this":Ljava/time/Clock$FixedClock;
    .restart local v2    # "other":Ljava/time/Clock$FixedClock;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 481
    .end local v2    # "other":Ljava/time/Clock$FixedClock;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public getZone()Ljava/time/ZoneId;
    .locals 2

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$FixedClock;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Clock$FixedClock;
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$FixedClock;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v1}, Ljava/time/Instant;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v2}, Ljava/time/ZoneId;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/Clock$FixedClock;
    return v0
.end method

.method public instant()Ljava/time/Instant;
    .locals 2

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$FixedClock;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Clock$FixedClock;
    return-object v0
.end method

.method public millis()J
    .locals 3

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$FixedClock;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/Clock$FixedClock;
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$FixedClock;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FixedClock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Clock$FixedClock;
    return-object v0
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 7

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$FixedClock;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/Clock$FixedClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v2, v3}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    move-object v2, v0

    move-object v0, v2

    .line 465
    .end local v0    # "this":Ljava/time/Clock$FixedClock;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Clock$FixedClock;
    :cond_0
    new-instance v2, Ljava/time/Clock$FixedClock;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljava/time/Clock$FixedClock;->instant:Ljava/time/Instant;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/time/Clock$FixedClock;-><init>(Ljava/time/Instant;Ljava/time/ZoneId;)V

    move-object v0, v2

    goto :goto_0
.end method
