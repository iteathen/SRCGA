.class public final Ljava/time/bp/zone/ZoneOffsetTransition;
.super Ljava/lang/Object;
.source "ZoneOffsetTransition.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/bp/zone/ZoneOffsetTransition;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60654e82b3c68362L


# instance fields
.field private final offsetAfter:Ljava/time/ZoneOffset;

.field private final offsetBefore:Ljava/time/ZoneOffset;

.field private final transition:Ljava/time/LocalDateTime;


# direct methods
.method constructor <init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .locals 11

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-wide v1, p1

    .local v1, "epochSecond":J
    move-object v3, p3

    .local v3, "offsetBefore":Ljava/time/ZoneOffset;
    move-object v4, p4

    .local v4, "offsetAfter":Ljava/time/ZoneOffset;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 135
    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x0

    move-object v9, v3

    invoke-static {v6, v7, v8, v9}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v6

    iput-object v6, v5, Ljava/time/bp/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    .line 136
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 137
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    .line 138
    return-void
.end method

.method constructor <init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .locals 6

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, p1

    .local v1, "transition":Ljava/time/LocalDateTime;
    move-object v2, p2

    .local v2, "offsetBefore":Ljava/time/ZoneOffset;
    move-object v3, p3

    .local v3, "offsetAfter":Ljava/time/ZoneOffset;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 122
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/time/bp/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    .line 123
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 124
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    .line 125
    return-void
.end method

.method private getDurationSeconds()I
    .locals 3

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return v0
.end method

.method public static of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/bp/zone/ZoneOffsetTransition;
    .locals 9

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "transition":Ljava/time/LocalDateTime;
    move-object v1, p1

    .local v1, "offsetBefore":Ljava/time/ZoneOffset;
    move-object v2, p2

    .local v2, "offsetAfter":Ljava/time/ZoneOffset;
    move-object v3, v0

    const-string v4, "transition"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 103
    move-object v3, v1

    const-string v4, "offsetBefore"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 104
    move-object v3, v2

    const-string v4, "offsetAfter"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Offsets must not be equal"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/LocalDateTime;->getNano()I

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Nano-of-second must be zero"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_1
    new-instance v3, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object v0, v3

    .end local v0    # "transition":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/bp/zone/ZoneOffsetTransition;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    move-object v1, p0

    .local v1, "in":Ljava/io/DataInput;
    move-object v6, v1

    invoke-static {v6}, Ljava/time/bp/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v6

    move-wide v2, v6

    .line 171
    .local v2, "epochSecond":J
    move-object v6, v1

    invoke-static {v6}, Ljava/time/bp/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v6

    move-object v4, v6

    .line 172
    .local v4, "before":Ljava/time/ZoneOffset;
    move-object v6, v1

    invoke-static {v6}, Ljava/time/bp/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v6

    move-object v5, v6

    .line 173
    .local v5, "after":Ljava/time/ZoneOffset;
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "Offsets must not be equal"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 176
    :cond_0
    new-instance v6, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-wide v8, v2

    move-object v10, v4

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object v1, v6

    .end local v1    # "in":Ljava/io/DataInput;
    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    new-instance v1, Ljava/time/bp/zone/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/bp/zone/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/bp/zone/ZoneOffsetTransition;

    invoke-virtual {v2, v3}, Ljava/time/bp/zone/ZoneOffsetTransition;->compareTo(Ljava/time/bp/zone/ZoneOffsetTransition;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return v0
.end method

.method public compareTo(Ljava/time/bp/zone/ZoneOffsetTransition;)I
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, p1

    .local v1, "transition":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/bp/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/bp/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 360
    const/4 v3, 0x1

    move v0, v3

    .line 367
    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    :goto_0
    return v0

    .line 362
    .restart local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/bp/zone/ZoneOffsetTransition;

    if-eqz v3, :cond_2

    .line 363
    move-object v3, v1

    check-cast v3, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v2, v3

    .line 364
    .local v2, "d":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-virtual {v3, v4}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 365
    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

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

    .line 367
    .end local v2    # "d":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getDateTimeAfter()Ljava/time/LocalDateTime;
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    move-object v2, v0

    invoke-direct {v2}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return-object v0
.end method

.method public getDateTimeBefore()Ljava/time/LocalDateTime;
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return-object v0
.end method

.method public getDuration()Ljava/time/Duration;
    .locals 4

    .prologue
    .line 267
    move-object v1, p0

    .local v1, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v2, v1

    invoke-direct {v2}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return-object v1
.end method

.method public getInstant()Ljava/time/Instant;
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return-object v0
.end method

.method public getOffsetAfter()Ljava/time/ZoneOffset;
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return-object v0
.end method

.method public getOffsetBefore()Ljava/time/ZoneOffset;
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return-object v0
.end method

.method getValidOffsets()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 330
    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/time/ZoneOffset;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    invoke-virtual {v1}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return v0
.end method

.method public isGap()Z
    .locals 3

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return v0

    .restart local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverlap()Z
    .locals 3

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return v0

    .restart local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidOffset(Ljava/time/ZoneOffset;)Z
    .locals 4

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return v0

    .restart local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toEpochSecond()J
    .locals 3

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 389
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, "Transition["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    .line 390
    invoke-virtual {v3}, Ljava/time/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Gap"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    .line 391
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransition;->transition:Ljava/time/LocalDateTime;

    .line 392
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    .line 393
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    .line 396
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 397
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    return-object v0

    .line 390
    .restart local v0    # "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_0
    const-string v3, "Overlap"

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
    .line 157
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v2

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljava/time/bp/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 158
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetBefore:Ljava/time/ZoneOffset;

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/bp/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 159
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneOffsetTransition;->offsetAfter:Ljava/time/ZoneOffset;

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/bp/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 160
    return-void
.end method
