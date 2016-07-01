.class final Ljava/time/bp/zone/StandardZoneRules;
.super Ljava/time/bp/zone/ZoneRules;
.source "StandardZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LAST_CACHED_YEAR:I = 0x834

.field private static final serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field private final lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

.field private final lastRulesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/time/bp/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final savingsInstantTransitions:[J

.field private final savingsLocalTransitions:[Ljava/time/LocalDateTime;

.field private final standardOffsets:[Ljava/time/ZoneOffset;

.field private final standardTransitions:[J

.field private final wallOffsets:[Ljava/time/ZoneOffset;


# direct methods
.method constructor <init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneOffset;",
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/ZoneOffsetTransitionRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object/from16 v1, p1

    .local v1, "baseStandardOffset":Ljava/time/ZoneOffset;
    move-object/from16 v2, p2

    .local v2, "baseWallOffset":Ljava/time/ZoneOffset;
    move-object/from16 v3, p3

    .local v3, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneOffsetTransition;>;"
    move-object/from16 v4, p4

    .local v4, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneOffsetTransition;>;"
    move-object/from16 v5, p5

    .local v5, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneOffsetTransitionRule;>;"
    move-object v10, v0

    invoke-direct {v10}, Ljava/time/bp/zone/ZoneRules;-><init>()V

    .line 101
    move-object v10, v0

    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v11, v10, Ljava/time/bp/zone/StandardZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 122
    move-object v10, v0

    move-object v11, v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [J

    iput-object v11, v10, Ljava/time/bp/zone/StandardZoneRules;->standardTransitions:[J

    .line 123
    move-object v10, v0

    move-object v11, v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    new-array v11, v11, [Ljava/time/ZoneOffset;

    iput-object v11, v10, Ljava/time/bp/zone/StandardZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 124
    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    .line 125
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    :goto_0
    move v10, v6

    move-object v11, v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 126
    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->standardTransitions:[J

    move v11, v6

    move-object v12, v3

    move v13, v6

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/time/bp/zone/ZoneOffsetTransition;

    invoke-virtual {v12}, Ljava/time/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 127
    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v3

    move v13, v6

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/time/bp/zone/ZoneOffsetTransition;

    invoke-virtual {v12}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v12

    aput-object v12, v10, v11

    .line 125
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 131
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v10

    .line 132
    .local v6, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v10

    .line 133
    .local v7, "localTransitionOffsetList":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    move-object v10, v7

    move-object v11, v2

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 134
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    :goto_1
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v9, v10

    .line 135
    .local v9, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v10, v9

    invoke-virtual {v10}, Ljava/time/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 136
    move-object v10, v6

    move-object v11, v9

    invoke-virtual {v11}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 137
    move-object v10, v6

    move-object v11, v9

    invoke-virtual {v11}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 142
    :goto_2
    move-object v10, v7

    move-object v11, v9

    invoke-virtual {v11}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 143
    goto :goto_1

    .line 139
    :cond_1
    move-object v10, v6

    move-object v11, v9

    invoke-virtual {v11}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 140
    move-object v10, v6

    move-object v11, v9

    invoke-virtual {v11}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_2

    .line 144
    .end local v9    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_2
    move-object v10, v0

    move-object v11, v6

    move-object v12, v6

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/time/LocalDateTime;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/time/LocalDateTime;

    iput-object v11, v10, Ljava/time/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    .line 145
    move-object v10, v0

    move-object v11, v7

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/time/ZoneOffset;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/time/ZoneOffset;

    iput-object v11, v10, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 148
    move-object v10, v0

    move-object v11, v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [J

    iput-object v11, v10, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    .line 149
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_3
    move v10, v8

    move-object v11, v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 150
    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move v11, v8

    move-object v12, v4

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/time/bp/zone/ZoneOffsetTransition;

    invoke-virtual {v12}, Ljava/time/bp/zone/ZoneOffsetTransition;->getInstant()Ljava/time/Instant;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 149
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 154
    :cond_3
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0xf

    if-le v10, v11, :cond_4

    .line 155
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "Too many transition rules"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 157
    :cond_4
    move-object v10, v0

    move-object v11, v5

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    iput-object v11, v10, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    .line 158
    return-void
.end method

.method private constructor <init>([J[Ljava/time/ZoneOffset;[J[Ljava/time/ZoneOffset;[Ljava/time/bp/zone/ZoneOffsetTransitionRule;)V
    .locals 19

    .prologue
    .line 175
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object/from16 v2, p1

    .local v2, "standardTransitions":[J
    move-object/from16 v3, p2

    .local v3, "standardOffsets":[Ljava/time/ZoneOffset;
    move-object/from16 v4, p3

    .local v4, "savingsInstantTransitions":[J
    move-object/from16 v5, p4

    .local v5, "wallOffsets":[Ljava/time/ZoneOffset;
    move-object/from16 v6, p5

    .local v6, "lastRules":[Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v12, v1

    invoke-direct {v12}, Ljava/time/bp/zone/ZoneRules;-><init>()V

    .line 101
    move-object v12, v1

    new-instance v13, Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    invoke-direct {v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v13, v12, Ljava/time/bp/zone/StandardZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 177
    move-object v12, v1

    move-object v13, v2

    iput-object v13, v12, Ljava/time/bp/zone/StandardZoneRules;->standardTransitions:[J

    .line 178
    move-object v12, v1

    move-object v13, v3

    iput-object v13, v12, Ljava/time/bp/zone/StandardZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 179
    move-object v12, v1

    move-object v13, v4

    iput-object v13, v12, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    .line 180
    move-object v12, v1

    move-object v13, v5

    iput-object v13, v12, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 181
    move-object v12, v1

    move-object v13, v6

    iput-object v13, v12, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    .line 184
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v12

    .line 185
    .local v7, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    const/4 v12, 0x0

    move v8, v12

    .local v8, "i":I
    :goto_0
    move v12, v8

    move-object v13, v4

    array-length v13, v13

    if-ge v12, v13, :cond_1

    .line 186
    move-object v12, v5

    move v13, v8

    aget-object v12, v12, v13

    move-object v9, v12

    .line 187
    .local v9, "before":Ljava/time/ZoneOffset;
    move-object v12, v5

    move v13, v8

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget-object v12, v12, v13

    move-object v10, v12

    .line 188
    .local v10, "after":Ljava/time/ZoneOffset;
    new-instance v12, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v4

    move v15, v8

    aget-wide v14, v14, v15

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v13 .. v17}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object v11, v12

    .line 189
    .local v11, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v12, v11

    invoke-virtual {v12}, Ljava/time/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 190
    move-object v12, v7

    move-object v13, v11

    invoke-virtual {v13}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 191
    move-object v12, v7

    move-object v13, v11

    invoke-virtual {v13}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 185
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 193
    :cond_0
    move-object v12, v7

    move-object v13, v11

    invoke-virtual {v13}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 194
    move-object v12, v7

    move-object v13, v11

    invoke-virtual {v13}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_1

    .line 197
    .end local v9    # "before":Ljava/time/ZoneOffset;
    .end local v10    # "after":Ljava/time/ZoneOffset;
    .end local v11    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_1
    move-object v12, v1

    move-object v13, v7

    move-object v14, v7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/time/LocalDateTime;

    invoke-interface {v13, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/time/LocalDateTime;

    iput-object v13, v12, Ljava/time/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    .line 198
    return-void
.end method

.method private findOffsetInfo(Ljava/time/LocalDateTime;Ljava/time/bp/zone/ZoneOffsetTransition;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, p1

    .local v1, "dt":Ljava/time/LocalDateTime;
    move-object v2, p2

    .local v2, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v3, v4

    .line 389
    .local v3, "localTransition":Ljava/time/LocalDateTime;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 390
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v0, v4

    .line 405
    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :goto_0
    return-object v0

    .line 393
    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 394
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 396
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 399
    :cond_2
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 400
    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 402
    :cond_3
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 403
    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 405
    :cond_4
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method private findTransitionArray(I)[Ljava/time/bp/zone/ZoneOffsetTransition;
    .locals 10

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move v1, p1

    .local v1, "year":I
    move v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, v6

    .line 424
    .local v2, "yearObj":Ljava/lang/Integer;
    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/StandardZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v3, v6

    .line 425
    .local v3, "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 426
    move-object v6, v3

    move-object v0, v6

    .line 436
    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :goto_0
    return-object v0

    .line 428
    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-object v4, v6

    .line 429
    .local v4, "ruleArray":[Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v6, v4

    array-length v6, v6

    new-array v6, v6, [Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v3, v6

    .line 430
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move-object v7, v4

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 431
    move-object v6, v3

    move v7, v5

    move-object v8, v4

    move v9, v5

    aget-object v8, v8, v9

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->createTransition(I)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v8

    aput-object v8, v6, v7

    .line 430
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 433
    :cond_1
    move v6, v1

    const/16 v7, 0x834

    if-ge v6, v7, :cond_2

    .line 434
    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/StandardZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    move-object v7, v2

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 436
    :cond_2
    move-object v6, v3

    move-object v0, v6

    goto :goto_0
.end method

.method private findYear(JLjava/time/ZoneOffset;)I
    .locals 13

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-wide v1, p1

    .local v1, "epochSecond":J
    move-object/from16 v3, p3

    .local v3, "offset":Ljava/time/ZoneOffset;
    move-wide v8, v1

    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-wide v4, v8

    .line 541
    .local v4, "localSecond":J
    move-wide v8, v4

    const-wide/32 v10, 0x15180

    invoke-static {v8, v9, v10, v11}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v8

    move-wide v6, v8

    .line 542
    .local v6, "localEpochDay":J
    move-wide v8, v6

    invoke-static {v8, v9}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/LocalDate;->getYear()I

    move-result v8

    move v0, v8

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return v0
.end method

.method private getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, p1

    .local v1, "dt":Ljava/time/LocalDateTime;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    array-length v8, v8

    if-lez v8, :cond_3

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    .line 335
    invoke-virtual {v8, v9}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 336
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljava/time/LocalDateTime;->getYear()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/time/bp/zone/StandardZoneRules;->findTransitionArray(I)[Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v8

    move-object v2, v8

    .line 337
    .local v2, "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    const/4 v8, 0x0

    move-object v3, v8

    .line 338
    .local v3, "info":Ljava/lang/Object;
    move-object v8, v2

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    .end local v3    # "info":Ljava/lang/Object;
    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 339
    .local v7, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    invoke-direct {v8, v9, v10}, Ljava/time/bp/zone/StandardZoneRules;->findOffsetInfo(Ljava/time/LocalDateTime;Ljava/time/bp/zone/ZoneOffsetTransition;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    .line 340
    .restart local v3    # "info":Ljava/lang/Object;
    move-object v8, v3

    instance-of v8, v8, Ljava/time/bp/zone/ZoneOffsetTransition;

    if-nez v8, :cond_0

    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v9}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 341
    :cond_0
    move-object v8, v3

    move-object v0, v8

    .line 376
    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    .end local v2    # "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    .end local v3    # "info":Ljava/lang/Object;
    .end local v7    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :goto_1
    return-object v0

    .line 338
    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    .restart local v2    # "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    .restart local v3    # "info":Ljava/lang/Object;
    .restart local v7    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 344
    .end local v3    # "info":Ljava/lang/Object;
    .end local v7    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_2
    move-object v8, v3

    move-object v0, v8

    goto :goto_1

    .line 348
    .end local v2    # "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    move-object v9, v1

    invoke-static {v8, v9}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v2, v8

    .line 349
    .local v2, "index":I
    move v8, v2

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 351
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v0, v8

    goto :goto_1

    .line 353
    :cond_4
    move v8, v2

    if-gez v8, :cond_6

    .line 355
    move v8, v2

    neg-int v8, v8

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    move v2, v8

    .line 361
    :cond_5
    :goto_2
    move v8, v2

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_8

    .line 363
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    move v9, v2

    aget-object v8, v8, v9

    move-object v3, v8

    .line 364
    .local v3, "dtBefore":Ljava/time/LocalDateTime;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    move-object v4, v8

    .line 365
    .local v4, "dtAfter":Ljava/time/LocalDateTime;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move v9, v2

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    aget-object v8, v8, v9

    move-object v5, v8

    .line 366
    .local v5, "offsetBefore":Ljava/time/ZoneOffset;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move v9, v2

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    move-object v6, v8

    .line 367
    .local v6, "offsetAfter":Ljava/time/ZoneOffset;
    move-object v8, v6

    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v8

    move-object v9, v5

    invoke-virtual {v9}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    if-le v8, v9, :cond_7

    .line 369
    new-instance v8, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    invoke-direct {v9, v10, v11, v12}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object v0, v8

    goto :goto_1

    .line 356
    .end local v3    # "dtBefore":Ljava/time/LocalDateTime;
    .end local v4    # "dtAfter":Ljava/time/LocalDateTime;
    .end local v5    # "offsetBefore":Ljava/time/ZoneOffset;
    .end local v6    # "offsetAfter":Ljava/time/ZoneOffset;
    :cond_6
    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_5

    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    move v9, v2

    aget-object v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/StandardZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    .line 357
    invoke-virtual {v8, v9}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 372
    .restart local v3    # "dtBefore":Ljava/time/LocalDateTime;
    .restart local v4    # "dtAfter":Ljava/time/LocalDateTime;
    .restart local v5    # "offsetBefore":Ljava/time/ZoneOffset;
    .restart local v6    # "offsetAfter":Ljava/time/ZoneOffset;
    :cond_7
    new-instance v8, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct {v9, v10, v11, v12}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object v0, v8

    goto/16 :goto_1

    .line 376
    .end local v3    # "dtBefore":Ljava/time/LocalDateTime;
    .end local v4    # "dtAfter":Ljava/time/LocalDateTime;
    .end local v5    # "offsetBefore":Ljava/time/ZoneOffset;
    .end local v6    # "offsetAfter":Ljava/time/ZoneOffset;
    :cond_8
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move v9, v2

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    move-object v0, v8

    goto/16 :goto_1
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/bp/zone/StandardZoneRules;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 245
    move-object/from16 v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v10, v0

    invoke-interface {v10}, Ljava/io/DataInput;->readInt()I

    move-result v10

    move v1, v10

    .line 246
    .local v1, "stdSize":I
    move v10, v1

    new-array v10, v10, [J

    move-object v2, v10

    .line 247
    .local v2, "stdTrans":[J
    const/4 v10, 0x0

    move v3, v10

    .local v3, "i":I
    :goto_0
    move v10, v3

    move v11, v1

    if-ge v10, v11, :cond_0

    .line 248
    move-object v10, v2

    move v11, v3

    move-object v12, v0

    invoke-static {v12}, Ljava/time/bp/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_0
    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    new-array v10, v10, [Ljava/time/ZoneOffset;

    move-object v3, v10

    .line 251
    .local v3, "stdOffsets":[Ljava/time/ZoneOffset;
    const/4 v10, 0x0

    move v4, v10

    .local v4, "i":I
    :goto_1
    move v10, v4

    move-object v11, v3

    array-length v11, v11

    if-ge v10, v11, :cond_1

    .line 252
    move-object v10, v3

    move v11, v4

    move-object v12, v0

    invoke-static {v12}, Ljava/time/bp/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v12

    aput-object v12, v10, v11

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 254
    :cond_1
    move-object v10, v0

    invoke-interface {v10}, Ljava/io/DataInput;->readInt()I

    move-result v10

    move v4, v10

    .line 255
    .local v4, "savSize":I
    move v10, v4

    new-array v10, v10, [J

    move-object v5, v10

    .line 256
    .local v5, "savTrans":[J
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    :goto_2
    move v10, v6

    move v11, v4

    if-ge v10, v11, :cond_2

    .line 257
    move-object v10, v5

    move v11, v6

    move-object v12, v0

    invoke-static {v12}, Ljava/time/bp/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 256
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 259
    :cond_2
    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    new-array v10, v10, [Ljava/time/ZoneOffset;

    move-object v6, v10

    .line 260
    .local v6, "savOffsets":[Ljava/time/ZoneOffset;
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_3
    move v10, v7

    move-object v11, v6

    array-length v11, v11

    if-ge v10, v11, :cond_3

    .line 261
    move-object v10, v6

    move v11, v7

    move-object v12, v0

    invoke-static {v12}, Ljava/time/bp/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v12

    aput-object v12, v10, v11

    .line 260
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 263
    :cond_3
    move-object v10, v0

    invoke-interface {v10}, Ljava/io/DataInput;->readByte()B

    move-result v10

    move v7, v10

    .line 264
    .local v7, "ruleSize":I
    move v10, v7

    new-array v10, v10, [Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-object v8, v10

    .line 265
    .local v8, "rules":[Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_4
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_4

    .line 266
    move-object v10, v8

    move v11, v9

    move-object v12, v0

    invoke-static {v12}, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-result-object v12

    aput-object v12, v10, v11

    .line 265
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 268
    :cond_4
    new-instance v10, Ljava/time/bp/zone/StandardZoneRules;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v2

    move-object v13, v3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Ljava/time/bp/zone/StandardZoneRules;-><init>([J[Ljava/time/ZoneOffset;[J[Ljava/time/ZoneOffset;[Ljava/time/bp/zone/ZoneOffsetTransitionRule;)V

    move-object v0, v10

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    new-instance v1, Ljava/time/bp/zone/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/bp/zone/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 564
    const/4 v3, 0x1

    move v0, v3

    .line 577
    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :goto_0
    return v0

    .line 566
    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/bp/zone/StandardZoneRules;

    if-eqz v3, :cond_2

    .line 567
    move-object v3, v1

    check-cast v3, Ljava/time/bp/zone/StandardZoneRules;

    move-object v2, v3

    .line 568
    .local v2, "other":Ljava/time/bp/zone/StandardZoneRules;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/StandardZoneRules;->standardTransitions:[J

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/StandardZoneRules;->standardTransitions:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/StandardZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/StandardZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 569
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    .line 570
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 571
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    .line 572
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 574
    .end local v2    # "other":Ljava/time/bp/zone/StandardZoneRules;
    :cond_2
    move-object v3, v1

    instance-of v3, v3, Ljava/time/bp/zone/ZoneRules$Fixed;

    if-eqz v3, :cond_4

    .line 575
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/bp/zone/StandardZoneRules;->isFixedOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    sget-object v4, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/StandardZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/time/bp/zone/ZoneRules$Fixed;

    sget-object v5, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    invoke-virtual {v4, v5}, Ljava/time/bp/zone/ZoneRules$Fixed;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 577
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getDaylightSavings(Ljava/time/Instant;)Ljava/time/Duration;
    .locals 6

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/time/bp/zone/StandardZoneRules;->getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v2, v4

    .line 454
    .local v2, "standardOffset":Ljava/time/ZoneOffset;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/time/bp/zone/StandardZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v3, v4

    .line 455
    .local v3, "actualOffset":Ljava/time/ZoneOffset;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return-object v0
.end method

.method public getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .locals 14

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v8

    move-wide v2, v8

    .line 283
    .local v2, "epochSec":J
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    array-length v8, v8

    if-lez v8, :cond_2

    move-wide v8, v2

    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move-object v11, v0

    iget-object v11, v11, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-wide v10, v10, v11

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 285
    move-object v8, v0

    move-wide v9, v2

    move-object v11, v0

    iget-object v11, v11, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v12, v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    invoke-direct {v8, v9, v10, v11}, Ljava/time/bp/zone/StandardZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v8

    move v4, v8

    .line 286
    .local v4, "year":I
    move-object v8, v0

    move v9, v4

    invoke-direct {v8, v9}, Ljava/time/bp/zone/StandardZoneRules;->findTransitionArray(I)[Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v8

    move-object v5, v8

    .line 287
    .local v5, "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    const/4 v8, 0x0

    move-object v6, v8

    .line 288
    .local v6, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move-object v9, v5

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 289
    move-object v8, v5

    move v9, v7

    aget-object v8, v8, v9

    move-object v6, v8

    .line 290
    move-wide v8, v2

    move-object v10, v6

    invoke-virtual {v10}, Ljava/time/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 291
    move-object v8, v6

    invoke-virtual {v8}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v8

    move-object v0, v8

    .line 303
    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    .end local v4    # "year":I
    .end local v5    # "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    .end local v6    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    .end local v7    # "i":I
    :goto_1
    return-object v0

    .line 288
    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    .restart local v4    # "year":I
    .restart local v5    # "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    .restart local v6    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    .restart local v7    # "i":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 294
    :cond_1
    move-object v8, v6

    invoke-virtual {v8}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v8

    move-object v0, v8

    goto :goto_1

    .line 298
    .end local v4    # "year":I
    .end local v5    # "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    .end local v6    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    .end local v7    # "i":I
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move-wide v9, v2

    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    move v4, v8

    .line 299
    .local v4, "index":I
    move v8, v4

    if-gez v8, :cond_3

    .line 301
    move v8, v4

    neg-int v8, v8

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    move v4, v8

    .line 303
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    move-object v0, v8

    goto :goto_1
.end method

.method public getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;
    .locals 5

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, p1

    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/bp/zone/StandardZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 310
    .local v2, "info":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Ljava/time/bp/zone/ZoneOffsetTransition;

    if-eqz v3, :cond_0

    .line 311
    move-object v3, v2

    check-cast v3, Ljava/time/bp/zone/ZoneOffsetTransition;

    invoke-virtual {v3}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v3

    move-object v0, v3

    .line 313
    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :cond_0
    move-object v3, v2

    check-cast v3, Ljava/time/ZoneOffset;

    move-object v0, v3

    goto :goto_0
.end method

.method public getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .locals 8

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v5

    move-wide v2, v5

    .line 443
    .local v2, "epochSec":J
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/StandardZoneRules;->standardTransitions:[J

    move-wide v6, v2

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    move v4, v5

    .line 444
    .local v4, "index":I
    move v5, v4

    if-gez v5, :cond_0

    .line 446
    move v5, v4

    neg-int v5, v5

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    move v4, v5

    .line 448
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/StandardZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    move-object v0, v5

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return-object v0
.end method

.method public getTransition(Ljava/time/LocalDateTime;)Ljava/time/bp/zone/ZoneOffsetTransition;
    .locals 5

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, p1

    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/bp/zone/StandardZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 329
    .local v2, "info":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Ljava/time/bp/zone/ZoneOffsetTransition;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/time/bp/zone/ZoneOffsetTransition;

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return-object v0

    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
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
    .line 557
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .locals 13
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
    .line 548
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    new-instance v3, Ljava/util/ArrayList;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 549
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneOffsetTransition;>;"
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 550
    move-object v3, v1

    new-instance v4, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move v7, v2

    aget-wide v6, v6, v7

    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move v9, v2

    aget-object v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return-object v0
.end method

.method public getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;
    .locals 5
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
    .line 319
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, p1

    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/bp/zone/StandardZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 320
    .local v2, "info":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Ljava/time/bp/zone/ZoneOffsetTransition;

    if-eqz v3, :cond_0

    .line 321
    move-object v3, v2

    check-cast v3, Ljava/time/bp/zone/ZoneOffsetTransition;

    invoke-virtual {v3}, Ljava/time/bp/zone/ZoneOffsetTransition;->getValidOffsets()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 323
    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :cond_0
    move-object v3, v2

    check-cast v3, Ljava/time/ZoneOffset;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/StandardZoneRules;->standardTransitions:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/StandardZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 583
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    .line 584
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    xor-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 585
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    .line 586
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return v0
.end method

.method public isDaylightSavings(Ljava/time/Instant;)Z
    .locals 5

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/bp/zone/StandardZoneRules;->getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/StandardZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return v0

    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFixedOffset()Z
    .locals 2

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return v0

    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z
    .locals 5

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v1, p1

    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    move-object v2, p2

    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/StandardZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return v0
.end method

.method public nextTransition(Ljava/time/Instant;)Ljava/time/bp/zone/ZoneOffsetTransition;
    .locals 19

    .prologue
    .line 466
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object/from16 v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v10

    move-wide v2, v10

    .line 469
    .local v2, "epochSec":J
    move-wide v10, v2

    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move-object v13, v0

    iget-object v13, v13, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v13, v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    aget-wide v12, v12, v13

    cmp-long v10, v10, v12

    if-ltz v10, :cond_4

    .line 470
    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    array-length v10, v10

    if-nez v10, :cond_0

    .line 471
    const/4 v10, 0x0

    move-object v0, v10

    .line 496
    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :goto_0
    return-object v0

    .line 474
    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    :cond_0
    move-object v10, v0

    move-wide v11, v2

    move-object v13, v0

    iget-object v13, v13, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move-object v14, v0

    iget-object v14, v14, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v14, v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget-object v13, v13, v14

    invoke-direct {v10, v11, v12, v13}, Ljava/time/bp/zone/StandardZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v10

    move v4, v10

    .line 475
    .local v4, "year":I
    move-object v10, v0

    move v11, v4

    invoke-direct {v10, v11}, Ljava/time/bp/zone/StandardZoneRules;->findTransitionArray(I)[Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v10

    move-object v5, v10

    .line 476
    .local v5, "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v10, v5

    move-object v6, v10

    move-object v10, v6

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_2

    move-object v10, v6

    move v11, v8

    aget-object v10, v10, v11

    move-object v9, v10

    .line 477
    .local v9, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-wide v10, v2

    move-object v12, v9

    invoke-virtual {v12}, Ljava/time/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 478
    move-object v10, v9

    move-object v0, v10

    goto :goto_0

    .line 476
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 482
    .end local v9    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_2
    move v10, v4

    const v11, 0x3b9ac9ff

    if-ge v10, v11, :cond_3

    .line 483
    move-object v10, v0

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v10, v11}, Ljava/time/bp/zone/StandardZoneRules;->findTransitionArray(I)[Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v10

    move-object v5, v10

    .line 484
    move-object v10, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v0, v10

    goto :goto_0

    .line 486
    :cond_3
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 490
    .end local v4    # "year":I
    .end local v5    # "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move-wide v11, v2

    invoke-static {v10, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v10

    move v4, v10

    .line 491
    .local v4, "index":I
    move v10, v4

    if-gez v10, :cond_5

    .line 492
    move v10, v4

    neg-int v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v4, v10

    .line 496
    :goto_2
    new-instance v10, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move v13, v4

    aget-wide v12, v12, v13

    move-object v14, v0

    iget-object v14, v14, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move v15, v4

    aget-object v14, v14, v15

    move-object v15, v0

    iget-object v15, v15, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move/from16 v16, v4

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    aget-object v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object v0, v10

    goto/16 :goto_0

    .line 494
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public previousTransition(Ljava/time/Instant;)Ljava/time/bp/zone/ZoneOffsetTransition;
    .locals 18

    .prologue
    .line 501
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object/from16 v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v10

    move-wide v2, v10

    .line 502
    .local v2, "epochSec":J
    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/Instant;->getNano()I

    move-result v10

    if-lez v10, :cond_0

    move-wide v10, v2

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    .line 503
    move-wide v10, v2

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-wide v2, v10

    .line 507
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move-object v11, v0

    iget-object v11, v11, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-wide v10, v10, v11

    move-wide v4, v10

    .line 508
    .local v4, "lastHistoric":J
    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    array-length v10, v10

    if-lez v10, :cond_3

    move-wide v10, v2

    move-wide v12, v4

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    .line 510
    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move-object v11, v0

    iget-object v11, v11, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    move-object v6, v10

    .line 511
    .local v6, "lastHistoricOffset":Ljava/time/ZoneOffset;
    move-object v10, v0

    move-wide v11, v2

    move-object v13, v6

    invoke-direct {v10, v11, v12, v13}, Ljava/time/bp/zone/StandardZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v10

    move v7, v10

    .line 512
    .local v7, "year":I
    move-object v10, v0

    move v11, v7

    invoke-direct {v10, v11}, Ljava/time/bp/zone/StandardZoneRules;->findTransitionArray(I)[Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v10

    move-object v8, v10

    .line 513
    .local v8, "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v10, v8

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v9, v10

    .local v9, "i":I
    :goto_0
    move v10, v9

    if-ltz v10, :cond_2

    .line 514
    move-wide v10, v2

    move-object v12, v8

    move v13, v9

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/time/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 515
    move-object v10, v8

    move v11, v9

    aget-object v10, v10, v11

    move-object v0, v10

    .line 535
    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    .end local v6    # "lastHistoricOffset":Ljava/time/ZoneOffset;
    .end local v7    # "year":I
    .end local v8    # "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    .end local v9    # "i":I
    :goto_1
    return-object v0

    .line 513
    .restart local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    .restart local v6    # "lastHistoricOffset":Ljava/time/ZoneOffset;
    .restart local v7    # "year":I
    .restart local v8    # "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    .restart local v9    # "i":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 519
    :cond_2
    move-object v10, v0

    move-wide v11, v4

    move-object v13, v6

    invoke-direct {v10, v11, v12, v13}, Ljava/time/bp/zone/StandardZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v10

    move v9, v10

    .line 520
    .local v9, "lastHistoricYear":I
    add-int/lit8 v7, v7, -0x1

    move v10, v7

    move v11, v9

    if-le v10, v11, :cond_3

    .line 521
    move-object v10, v0

    move v11, v7

    invoke-direct {v10, v11}, Ljava/time/bp/zone/StandardZoneRules;->findTransitionArray(I)[Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v10

    move-object v8, v10

    .line 522
    move-object v10, v8

    move-object v11, v8

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    move-object v0, v10

    goto :goto_1

    .line 528
    .end local v6    # "lastHistoricOffset":Ljava/time/ZoneOffset;
    .end local v7    # "year":I
    .end local v8    # "transArray":[Ljava/time/bp/zone/ZoneOffsetTransition;
    .end local v9    # "lastHistoricYear":I
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move-wide v11, v2

    invoke-static {v10, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v10

    move v6, v10

    .line 529
    .local v6, "index":I
    move v10, v6

    if-gez v10, :cond_4

    .line 530
    move v10, v6

    neg-int v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v6, v10

    .line 532
    :cond_4
    move v10, v6

    if-gtz v10, :cond_5

    .line 533
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_1

    .line 535
    :cond_5
    new-instance v10, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    aget-wide v12, v12, v13

    move-object v14, v0

    iget-object v14, v14, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget-object v14, v14, v15

    move-object v15, v0

    iget-object v15, v15, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move/from16 v16, v6

    aget-object v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object v0, v10

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/StandardZoneRules;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StandardZoneRules[currentStandardOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/StandardZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/StandardZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/StandardZoneRules;
    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v1, p0

    .local v1, "this":Ljava/time/bp/zone/StandardZoneRules;
    move-object v2, p1

    .local v2, "out":Ljava/io/DataOutput;
    move-object v8, v2

    move-object v9, v1

    iget-object v9, v9, Ljava/time/bp/zone/StandardZoneRules;->standardTransitions:[J

    array-length v9, v9

    invoke-interface {v8, v9}, Ljava/io/DataOutput;->writeInt(I)V

    .line 218
    move-object v8, v1

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->standardTransitions:[J

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_0

    move-object v8, v3

    move v9, v5

    aget-wide v8, v8, v9

    move-wide v6, v8

    .line 219
    .local v6, "trans":J
    move-wide v8, v6

    move-object v10, v2

    invoke-static {v8, v9, v10}, Ljava/time/bp/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 218
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    .end local v6    # "trans":J
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 222
    .local v6, "offset":Ljava/time/ZoneOffset;
    move-object v8, v6

    move-object v9, v2

    invoke-static {v8, v9}, Ljava/time/bp/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 221
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 224
    .end local v6    # "offset":Ljava/time/ZoneOffset;
    :cond_1
    move-object v8, v2

    move-object v9, v1

    iget-object v9, v9, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    array-length v9, v9

    invoke-interface {v8, v9}, Ljava/io/DataOutput;->writeInt(I)V

    .line 225
    move-object v8, v1

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->savingsInstantTransitions:[J

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_2
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_2

    move-object v8, v3

    move v9, v5

    aget-wide v8, v8, v9

    move-wide v6, v8

    .line 226
    .local v6, "trans":J
    move-wide v8, v6

    move-object v10, v2

    invoke-static {v8, v9, v10}, Ljava/time/bp/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 225
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 228
    .end local v6    # "trans":J
    :cond_2
    move-object v8, v1

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_3
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_3

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 229
    .local v6, "offset":Ljava/time/ZoneOffset;
    move-object v8, v6

    move-object v9, v2

    invoke-static {v8, v9}, Ljava/time/bp/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 228
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 231
    .end local v6    # "offset":Ljava/time/ZoneOffset;
    :cond_3
    move-object v8, v2

    move-object v9, v1

    iget-object v9, v9, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    array-length v9, v9

    invoke-interface {v8, v9}, Ljava/io/DataOutput;->writeByte(I)V

    .line 232
    move-object v8, v1

    iget-object v8, v8, Ljava/time/bp/zone/StandardZoneRules;->lastRules:[Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_4
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_4

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .line 233
    .local v6, "rule":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object v8, v6

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/time/bp/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    .line 232
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 235
    .end local v6    # "rule":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    :cond_4
    return-void
.end method
