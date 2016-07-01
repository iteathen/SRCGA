.class public abstract Ljava/time/bp/zone/ZoneRules;
.super Ljava/lang/Object;
.source "ZoneRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/bp/zone/ZoneRules$Fixed;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRules;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static of(Ljava/time/ZoneOffset;)Ljava/time/bp/zone/ZoneRules;
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "offset":Ljava/time/ZoneOffset;
    move-object v1, v0

    const-string v2, "offset"

    invoke-static {v1, v2}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    new-instance v1, Ljava/time/bp/zone/ZoneRules$Fixed;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/time/bp/zone/ZoneRules$Fixed;-><init>(Ljava/time/ZoneOffset;)V

    move-object v0, v1

    .end local v0    # "offset":Ljava/time/ZoneOffset;
    return-object v0
.end method

.method public static of(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/time/bp/zone/ZoneRules;
    .locals 13
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
            ">;)",
            "Ljava/time/bp/zone/ZoneRules;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "baseStandardOffset":Ljava/time/ZoneOffset;
    move-object v1, p1

    .local v1, "baseWallOffset":Ljava/time/ZoneOffset;
    move-object v2, p2

    .local v2, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneOffsetTransition;>;"
    move-object/from16 v3, p3

    .local v3, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneOffsetTransition;>;"
    move-object/from16 v4, p4

    .local v4, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneOffsetTransitionRule;>;"
    move-object v5, v0

    const-string v6, "baseStandardOffset"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 86
    move-object v5, v1

    const-string v6, "baseWallOffset"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 87
    move-object v5, v2

    const-string v6, "standardOffsetTransitionList"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 88
    move-object v5, v3

    const-string v6, "transitionList"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 89
    move-object v5, v4

    const-string v6, "lastRules"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 90
    new-instance v5, Ljava/time/bp/zone/StandardZoneRules;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-direct/range {v6 .. v11}, Ljava/time/bp/zone/StandardZoneRules;-><init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object v0, v5

    .end local v0    # "baseStandardOffset":Ljava/time/ZoneOffset;
    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getDaylightSavings(Ljava/time/Instant;)Ljava/time/Duration;
.end method

.method public abstract getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
.end method

.method public abstract getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;
.end method

.method public abstract getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
.end method

.method public abstract getTransition(Ljava/time/LocalDateTime;)Ljava/time/bp/zone/ZoneOffsetTransition;
.end method

.method public abstract getTransitionRules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/ZoneOffsetTransitionRule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransitions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;
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
.end method

.method public abstract hashCode()I
.end method

.method public abstract isDaylightSavings(Ljava/time/Instant;)Z
.end method

.method public abstract isFixedOffset()Z
.end method

.method public abstract isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z
.end method

.method public abstract nextTransition(Ljava/time/Instant;)Ljava/time/bp/zone/ZoneOffsetTransition;
.end method

.method public abstract previousTransition(Ljava/time/Instant;)Ljava/time/bp/zone/ZoneOffsetTransition;
.end method
