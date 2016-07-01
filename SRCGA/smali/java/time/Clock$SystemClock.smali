.class final Ljava/time/Clock$SystemClock;
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
    name = "SystemClock"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5d8b8814510769ebL


# instance fields
.field private final zone:Ljava/time/ZoneId;


# direct methods
.method constructor <init>(Ljava/time/ZoneId;)V
    .locals 4

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$SystemClock;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/Clock;-><init>()V

    .line 404
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    .line 405
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$SystemClock;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/Clock$SystemClock;

    if-eqz v2, :cond_0

    .line 428
    move-object v2, v0

    iget-object v2, v2, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    move-object v3, v1

    check-cast v3, Ljava/time/Clock$SystemClock;

    iget-object v3, v3, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v2, v3}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 430
    .end local v0    # "this":Ljava/time/Clock$SystemClock;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/Clock$SystemClock;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getZone()Ljava/time/ZoneId;
    .locals 2

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$SystemClock;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Clock$SystemClock;
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$SystemClock;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1}, Ljava/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljava/time/Clock$SystemClock;
    return v0
.end method

.method public instant()Ljava/time/Instant;
    .locals 4

    .prologue
    .line 423
    move-object v1, p0

    .local v1, "this":Ljava/time/Clock$SystemClock;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/Clock$SystemClock;->millis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljava/time/Clock$SystemClock;
    return-object v1
.end method

.method public millis()J
    .locals 3

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$SystemClock;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/Clock$SystemClock;
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$SystemClock;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemClock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Clock$SystemClock;
    return-object v0
.end method

.method public withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 6

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Ljava/time/Clock$SystemClock;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/Clock$SystemClock;->zone:Ljava/time/ZoneId;

    invoke-virtual {v2, v3}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    move-object v2, v0

    move-object v0, v2

    .line 415
    .end local v0    # "this":Ljava/time/Clock$SystemClock;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Clock$SystemClock;
    :cond_0
    new-instance v2, Ljava/time/Clock$SystemClock;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/Clock$SystemClock;-><init>(Ljava/time/ZoneId;)V

    move-object v0, v2

    goto :goto_0
.end method
