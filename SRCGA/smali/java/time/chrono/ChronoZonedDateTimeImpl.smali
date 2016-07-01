.class final Ljava/time/chrono/ChronoZonedDateTimeImpl;
.super Ljava/time/chrono/ChronoZonedDateTime;
.source "ChronoZonedDateTimeImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/time/chrono/AbstractChronoLocalDate;",
        ">",
        "Ljava/time/chrono/ChronoZonedDateTime",
        "<TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;"
        }
    .end annotation
.end field

.field private final offset:Ljava/time/ZoneOffset;

.field private final zone:Ljava/time/ZoneId;


# direct methods
.method private constructor <init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TD;>;",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneId;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "dateTime":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TD;>;"
    move-object v2, p2

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, p3

    .local v3, "zone":Ljava/time/ZoneId;
    move-object v4, v0

    invoke-direct {v4}, Ljava/time/chrono/ChronoZonedDateTime;-><init>()V

    .line 170
    move-object v4, v0

    move-object v5, v1

    const-string v6, "dateTime"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    iput-object v5, v4, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    .line 171
    move-object v4, v0

    move-object v5, v2

    const-string v6, "offset"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/ZoneOffset;

    iput-object v5, v4, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    .line 172
    move-object v4, v0

    move-object v5, v3

    const-string v6, "zone"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/ZoneId;

    iput-object v5, v4, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    .line 173
    return-void
.end method

.method private create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTimeImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v2, p2

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofInstant(Ljava/time/chrono/AbstractChronology;Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    return-object v0
.end method

.method static ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/time/chrono/AbstractChronoLocalDate;",
            ">(",
            "Ljava/time/chrono/ChronoLocalDateTimeImpl",
            "<TR;>;",
            "Ljava/time/ZoneId;",
            "Ljava/time/ZoneOffset;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v1, p0

    .local v1, "localDateTime":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TR;>;"
    move-object/from16 v2, p1

    .local v2, "zone":Ljava/time/ZoneId;
    move-object/from16 v3, p2

    .local v3, "preferredOffset":Ljava/time/ZoneOffset;
    move-object v9, v1

    const-string v10, "localDateTime"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 107
    move-object v9, v2

    const-string v10, "zone"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 108
    move-object v9, v2

    instance-of v9, v9, Ljava/time/ZoneOffset;

    if-eqz v9, :cond_0

    .line 109
    new-instance v9, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    move-object v12, v2

    check-cast v12, Ljava/time/ZoneOffset;

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v1, v9

    .line 129
    .end local v1    # "localDateTime":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TR;>;"
    :goto_0
    return-object v1

    .line 111
    .restart local v1    # "localDateTime":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TR;>;"
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v9

    move-object v4, v9

    .line 112
    .local v4, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v9, v1

    invoke-static {v9}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v9

    move-object v5, v9

    .line 113
    .local v5, "isoLDT":Ljava/time/LocalDateTime;
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/time/bp/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v9

    move-object v6, v9

    .line 115
    .local v6, "validOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 116
    move-object v9, v6

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/time/ZoneOffset;

    move-object v7, v9

    .line 128
    .local v7, "offset":Ljava/time/ZoneOffset;
    :goto_1
    move-object v9, v7

    const-string v10, "offset"

    invoke-static {v9, v10}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 129
    new-instance v9, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    move-object v12, v7

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v1, v9

    goto :goto_0

    .line 117
    .end local v7    # "offset":Ljava/time/ZoneOffset;
    :cond_1
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 118
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/time/bp/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v9

    move-object v8, v9

    .line 119
    .local v8, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v10}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDuration()Ljava/time/Duration;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plusSeconds(J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v9

    move-object v1, v9

    .line 120
    move-object v9, v8

    invoke-virtual {v9}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v9

    move-object v7, v9

    .line 121
    .restart local v7    # "offset":Ljava/time/ZoneOffset;
    goto :goto_1

    .line 122
    .end local v7    # "offset":Ljava/time/ZoneOffset;
    .end local v8    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_2
    move-object v9, v3

    if-eqz v9, :cond_3

    move-object v9, v6

    move-object v10, v3

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 123
    move-object v9, v3

    move-object v7, v9

    .restart local v7    # "offset":Ljava/time/ZoneOffset;
    goto :goto_1

    .line 125
    .end local v7    # "offset":Ljava/time/ZoneOffset;
    :cond_3
    move-object v9, v6

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/time/ZoneOffset;

    move-object v7, v9

    .restart local v7    # "offset":Ljava/time/ZoneOffset;
    goto :goto_1
.end method

.method static ofInstant(Ljava/time/chrono/AbstractChronology;Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/time/chrono/AbstractChronoLocalDate;",
            ">(",
            "Ljava/time/chrono/AbstractChronology;",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTimeImpl",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 141
    move-object v1, p0

    .local v1, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v2, p1

    .local v2, "instant":Ljava/time/Instant;
    move-object/from16 v3, p2

    .local v3, "zone":Ljava/time/ZoneId;
    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v8

    move-object v4, v8

    .line 142
    .local v4, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/time/bp/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v8

    move-object v5, v8

    .line 143
    .local v5, "offset":Ljava/time/ZoneOffset;
    move-object v8, v5

    const-string v9, "offset"

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 144
    move-object v8, v2

    invoke-virtual {v8}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljava/time/Instant;->getNano()I

    move-result v10

    move-object v11, v5

    invoke-static {v8, v9, v10, v11}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v8

    move-object v6, v8

    .line 146
    .local v6, "ldt":Ljava/time/LocalDateTime;
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v8

    check-cast v8, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v7, v8

    .line 147
    .local v7, "cldt":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<TR;>;"
    new-instance v8, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v7

    move-object v11, v5

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v1, v8

    .end local v1    # "chrono":Ljava/time/chrono/AbstractChronology;
    return-object v1
.end method

.method static readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
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
    .line 297
    move-object v0, p0

    .local v0, "in":Ljava/io/ObjectInput;
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/chrono/ChronoLocalDateTime;

    move-object v1, v4

    .line 298
    .local v1, "dateTime":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/ZoneOffset;

    move-object v2, v4

    .line 299
    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/ZoneId;

    move-object v3, v4

    .line 300
    .local v3, "zone":Ljava/time/ZoneId;
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/chrono/ChronoZonedDateTime;->withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "in":Ljava/io/ObjectInput;
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
    .line 287
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
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
    .line 278
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v1, Ljava/time/chrono/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0xd

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 308
    const/4 v2, 0x1

    move v0, v2

    .line 313
    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :goto_0
    return v0

    .line 310
    .restart local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v2, :cond_2

    .line 311
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-virtual {v2, v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->compareTo(Ljava/time/chrono/ChronoZonedDateTime;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 313
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getOffset()Ljava/time/ZoneOffset;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    return-object v0
.end method

.method public getZone()Ljava/time/ZoneId;
    .locals 2

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/chrono/ChronoLocalDateTime;->hashCode()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    return v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 179
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

    .line 181
    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :goto_1
    return v0

    .line 179
    .restart local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 181
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

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 258
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-wide v2, p1

    .local v2, "amountToAdd":J
    move-object v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v4

    instance-of v5, v5, Ljava/time/temporal/ChronoUnit;

    if-eqz v5, :cond_0

    .line 259
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-wide v7, v2

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v5

    move-object v1, v5

    .line 261
    .end local v1    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v5

    move-object v6, v4

    move-object v7, v1

    move-wide v8, v2

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/chrono/AbstractChronology;->ensureChronoZonedDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v5

    move-object v1, v5

    goto :goto_0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 73
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    return-object v1
.end method

.method public toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/chrono/ChronoLocalDateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 324
    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 327
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 7

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v2, p2

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v4

    move-object v3, v4

    .line 269
    .local v3, "end":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    move-object v4, v2

    instance-of v4, v4, Ljava/time/temporal/ChronoUnit;

    if-eqz v4, :cond_0

    .line 270
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v4, v5}, Ljava/time/chrono/ChronoZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v4

    move-object v3, v4

    .line 271
    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v5, v3

    invoke-virtual {v5}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    move-wide v0, v4

    .line 273
    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :goto_0
    return-wide v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_0
    move-object v4, v2

    move-object v5, v0

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 241
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-wide v3, p2

    .local v3, "newValue":J
    move-object v7, v2

    instance-of v7, v7, Ljava/time/temporal/ChronoField;

    if-eqz v7, :cond_0

    .line 242
    move-object v7, v2

    check-cast v7, Ljava/time/temporal/ChronoField;

    move-object v5, v7

    .line 243
    .local v5, "f":Ljava/time/temporal/ChronoField;
    sget-object v7, Ljava/time/chrono/ChronoZonedDateTimeImpl$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v8, v5

    invoke-virtual {v8}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 250
    move-object v7, v1

    iget-object v7, v7, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v8, v2

    move-wide v9, v3

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    move-object v9, v1

    iget-object v9, v9, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-static {v7, v8, v9}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v7

    move-object v1, v7

    .line 252
    .end local v1    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    .end local v5    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v1

    .line 244
    .restart local v1    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    .restart local v5    # "f":Ljava/time/temporal/ChronoField;
    :pswitch_0
    move-object v7, v1

    move-wide v8, v3

    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toEpochSecond()J

    move-result-wide v10

    sub-long/2addr v8, v10

    sget-object v10, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 246
    :pswitch_1
    move-object v7, v5

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    invoke-static {v7}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v7

    move-object v6, v7

    .line 247
    .local v6, "offset":Ljava/time/ZoneOffset;
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v8

    move-object v9, v1

    iget-object v9, v9, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {v7, v8, v9}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 252
    .end local v5    # "f":Ljava/time/temporal/ChronoField;
    .end local v6    # "offset":Ljava/time/ZoneOffset;
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v7

    move-object v8, v2

    move-object v9, v1

    move-wide v10, v3

    invoke-interface {v8, v9, v10, v11}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/time/chrono/AbstractChronology;->ensureChronoZonedDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    return-object v0
.end method

.method public withEarlierOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v3

    move-object v1, v3

    .line 191
    .local v1, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/bp/zone/ZoneOffsetTransition;->isOverlap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v3

    move-object v2, v3

    .line 193
    .local v2, "earlierOffset":Ljava/time/ZoneOffset;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    new-instance v3, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {v4, v5, v6, v7}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v0, v3

    .line 197
    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    .end local v2    # "earlierOffset":Ljava/time/ZoneOffset;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_0
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public withLaterOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v3

    move-object v1, v3

    .line 203
    .local v1, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 204
    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v3

    move-object v2, v3

    .line 205
    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    new-instance v3, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-direct {v4, v5, v6, v7}, Ljava/time/chrono/ChronoZonedDateTimeImpl;-><init>(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneOffset;Ljava/time/ZoneId;)V

    move-object v0, v3

    .line 209
    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    .end local v2    # "offset":Ljava/time/ZoneOffset;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_0
    move-object v3, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
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
    .line 228
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v1

    const-string v3, "zone"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 229
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-virtual {v3, v4}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object v3

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->create(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v2

    goto :goto_0
.end method

.method public withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
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
    .line 223
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-static {v2, v3, v4}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
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
    .line 291
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoZonedDateTimeImpl;, "Ljava/time/chrono/ChronoZonedDateTimeImpl<TD;>;"
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoZonedDateTimeImpl;->dateTime:Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 292
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoZonedDateTimeImpl;->offset:Ljava/time/ZoneOffset;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 293
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoZonedDateTimeImpl;->zone:Ljava/time/ZoneId;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 294
    return-void
.end method
