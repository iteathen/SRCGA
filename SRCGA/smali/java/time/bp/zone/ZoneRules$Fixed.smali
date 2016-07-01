.class final Ljava/time/bp/zone/ZoneRules$Fixed;
.super Ljava/time/bp/zone/ZoneRules;
.source "ZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/bp/zone/ZoneRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fixed"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7934694b7c9bb149L


# instance fields
.field private final offset:Ljava/time/ZoneOffset;


# direct methods
.method constructor <init>(Ljava/time/ZoneOffset;)V
    .locals 4

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/bp/zone/ZoneRules;-><init>()V

    .line 414
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    .line 415
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 489
    const/4 v3, 0x1

    move v0, v3

    .line 498
    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    :goto_0
    return v0

    .line 491
    .restart local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/bp/zone/ZoneRules$Fixed;

    if-eqz v3, :cond_1

    .line 492
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    move-object v4, v1

    check-cast v4, Ljava/time/bp/zone/ZoneRules$Fixed;

    iget-object v4, v4, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 494
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Ljava/time/bp/zone/StandardZoneRules;

    if-eqz v3, :cond_3

    .line 495
    move-object v3, v1

    check-cast v3, Ljava/time/bp/zone/StandardZoneRules;

    move-object v2, v3

    .line 496
    .local v2, "szr":Ljava/time/bp/zone/StandardZoneRules;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/time/bp/zone/StandardZoneRules;->isFixedOffset()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    move-object v4, v2

    sget-object v5, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    invoke-virtual {v4, v5}, Ljava/time/bp/zone/StandardZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 498
    .end local v2    # "szr":Ljava/time/bp/zone/StandardZoneRules;
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getDaylightSavings(Ljava/time/Instant;)Ljava/time/Duration;
    .locals 3

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    sget-object v2, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return-object v0
.end method

.method public getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .locals 3

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return-object v0
.end method

.method public getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;
    .locals 3

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return-object v0
.end method

.method public getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .locals 3

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return-object v0
.end method

.method public getTransition(Ljava/time/LocalDateTime;)Ljava/time/bp/zone/ZoneOffsetTransition;
    .locals 3

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return-object v0
.end method

.method public getTransitionRules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/ZoneOffsetTransitionRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return-object v0
.end method

.method public getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    const/4 v1, 0x1

    const/16 v2, 0x1f

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    .line 504
    invoke-virtual {v3}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    const/4 v2, 0x1

    xor-int/lit8 v1, v1, 0x1

    const/16 v2, 0x1f

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    .line 506
    invoke-virtual {v3}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    const/4 v2, 0x1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return v0
.end method

.method public isDaylightSavings(Ljava/time/Instant;)Z
    .locals 3

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return v0
.end method

.method public isFixedOffset()Z
    .locals 2

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return v0
.end method

.method public isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z
    .locals 5

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "dateTime":Ljava/time/LocalDateTime;
    move-object v2, p2

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return v0
.end method

.method public nextTransition(Ljava/time/Instant;)Ljava/time/bp/zone/ZoneOffsetTransition;
    .locals 3

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return-object v0
.end method

.method public previousTransition(Ljava/time/Instant;)Ljava/time/bp/zone/ZoneOffsetTransition;
    .locals 3

    .prologue
    .line 472
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FixedRules:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRules$Fixed;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRules$Fixed;
    return-object v0
.end method
