.class Ljava/time/bp/zone/ZoneRulesBuilder;
.super Ljava/lang/Object;
.source "ZoneRulesBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;,
        Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    }
.end annotation


# instance fields
.field private deduplicateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private windowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    .line 96
    return-void
.end method


# virtual methods
.method public addRuleToWindow(IILjava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Ljava/time/bp/zone/ZoneRulesBuilder;
    .locals 22

    .prologue
    .line 267
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    move/from16 v1, p1

    .local v1, "startYear":I
    move/from16 v2, p2

    .local v2, "endYear":I
    move-object/from16 v3, p3

    .local v3, "month":Ljava/time/Month;
    move/from16 v4, p4

    .local v4, "dayOfMonthIndicator":I
    move-object/from16 v5, p5

    .local v5, "dayOfWeek":Ljava/time/DayOfWeek;
    move-object/from16 v6, p6

    .local v6, "time":Ljava/time/LocalTime;
    move/from16 v7, p7

    .local v7, "timeEndOfDay":Z
    move-object/from16 v8, p8

    .local v8, "timeDefinition":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move/from16 v9, p9

    .local v9, "savingAmountSecs":I
    move-object v11, v3

    const-string v12, "month"

    invoke-static {v11, v12}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 268
    move-object v11, v6

    const-string v12, "time"

    invoke-static {v11, v12}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 269
    move-object v11, v8

    const-string v12, "timeDefinition"

    invoke-static {v11, v12}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 270
    sget-object v11, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move v12, v1

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v11

    .line 271
    sget-object v11, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move v12, v2

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v11

    .line 272
    move v11, v4

    const/16 v12, -0x1c

    if-lt v11, v12, :cond_0

    move v11, v4

    const/16 v12, 0x1f

    if-gt v11, v12, :cond_0

    move v11, v4

    if-nez v11, :cond_1

    .line 273
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    const-string v13, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 275
    :cond_1
    move v11, v7

    if-eqz v11, :cond_2

    move-object v11, v6

    sget-object v12, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {v11, v12}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 276
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    const-string v13, "Time must be midnight when end of day flag is true"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 278
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 279
    new-instance v11, Ljava/lang/IllegalStateException;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    const-string v13, "Must add a window before adding a rule"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 281
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;

    move-object v10, v11

    .line 282
    .local v10, "window":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v11, v10

    move v12, v1

    move v13, v2

    move-object v14, v3

    move v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v11 .. v20}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->addRule(IILjava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    .line 283
    move-object v11, v0

    move-object v0, v11

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    return-object v0
.end method

.method public addRuleToWindow(ILjava/time/Month;ILjava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Ljava/time/bp/zone/ZoneRulesBuilder;
    .locals 18

    .prologue
    .line 230
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    move/from16 v1, p1

    .local v1, "year":I
    move-object/from16 v2, p2

    .local v2, "month":Ljava/time/Month;
    move/from16 v3, p3

    .local v3, "dayOfMonthIndicator":I
    move-object/from16 v4, p4

    .local v4, "time":Ljava/time/LocalTime;
    move/from16 v5, p5

    .local v5, "timeEndOfDay":Z
    move-object/from16 v6, p6

    .local v6, "timeDefinition":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move/from16 v7, p7

    .local v7, "savingAmountSecs":I
    move-object v8, v0

    move v9, v1

    move v10, v1

    move-object v11, v2

    move v12, v3

    const/4 v13, 0x0

    move-object v14, v4

    move v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    invoke-virtual/range {v8 .. v17}, Ljava/time/bp/zone/ZoneRulesBuilder;->addRuleToWindow(IILjava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Ljava/time/bp/zone/ZoneRulesBuilder;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    return-object v0
.end method

.method public addRuleToWindow(Ljava/time/LocalDateTime;Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Ljava/time/bp/zone/ZoneRulesBuilder;
    .locals 14

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    move-object v1, p1

    .local v1, "transitionDateTime":Ljava/time/LocalDateTime;
    move-object/from16 v2, p2

    .local v2, "timeDefinition":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move/from16 v3, p3

    .local v3, "savingAmountSecs":I
    move-object v4, v1

    const-string v5, "transitionDateTime"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 196
    move-object v4, v0

    move-object v5, v1

    .line 197
    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getYear()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/LocalDateTime;->getYear()I

    move-result v6

    move-object v7, v1

    .line 198
    invoke-virtual {v7}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v1

    .line 199
    invoke-virtual {v10}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v2

    move v13, v3

    .line 196
    invoke-virtual/range {v4 .. v13}, Ljava/time/bp/zone/ZoneRulesBuilder;->addRuleToWindow(IILjava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)Ljava/time/bp/zone/ZoneRulesBuilder;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    return-object v0
.end method

.method public addWindow(Ljava/time/ZoneOffset;Ljava/time/LocalDateTime;Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)Ljava/time/bp/zone/ZoneRulesBuilder;
    .locals 13

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    move-object v1, p1

    .local v1, "standardOffset":Ljava/time/ZoneOffset;
    move-object v2, p2

    .local v2, "until":Ljava/time/LocalDateTime;
    move-object/from16 v3, p3

    .local v3, "untilDefinition":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move-object v6, v1

    const-string v7, "standardOffset"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 121
    move-object v6, v2

    const-string v7, "until"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 122
    move-object v6, v3

    const-string v7, "untilDefinition"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 123
    new-instance v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;-><init>(Ljava/time/bp/zone/ZoneRulesBuilder;Ljava/time/ZoneOffset;Ljava/time/LocalDateTime;Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)V

    move-object v4, v6

    .line 124
    .local v4, "window":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 125
    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;

    move-object v5, v6

    .line 126
    .local v5, "previous":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->validateWindowOrder(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)V

    .line 128
    .end local v5    # "previous":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 129
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    return-object v0
.end method

.method public addWindowForever(Ljava/time/ZoneOffset;)Ljava/time/bp/zone/ZoneRulesBuilder;
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    move-object v1, p1

    .local v1, "standardOffset":Ljava/time/ZoneOffset;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    sget-object v5, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v2, v3, v4, v5}, Ljava/time/bp/zone/ZoneRulesBuilder;->addWindow(Ljava/time/ZoneOffset;Ljava/time/LocalDateTime;Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)Ljava/time/bp/zone/ZoneRulesBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    return-object v0
.end method

.method deduplicate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 415
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    move-object v3, v1

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 417
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    return-object v0
.end method

.method public setFixedSavingsToWindow(I)Ljava/time/bp/zone/ZoneRulesBuilder;
    .locals 7

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    move v1, p1

    .local v1, "fixedSavingAmountSecs":I
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Must add a window before setting the fixed savings"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 171
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;

    move-object v2, v3

    .line 172
    .local v2, "window":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->setFixedSavings(I)V

    .line 173
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    return-object v0
.end method

.method public toRules(Ljava/lang/String;)Ljava/time/bp/zone/ZoneRules;
    .locals 7

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    move-object v1, p1

    .local v1, "zoneId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/time/bp/zone/ZoneRulesBuilder;->toRules(Ljava/lang/String;Ljava/util/Map;)Ljava/time/bp/zone/ZoneRules;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    return-object v0
.end method

.method toRules(Ljava/lang/String;Ljava/util/Map;)Ljava/time/bp/zone/ZoneRules;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/time/bp/zone/ZoneRules;"
        }
    .end annotation

    .prologue
    .line 315
    move-object/from16 v3, p0

    .local v3, "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    move-object/from16 v4, p1

    .local v4, "zoneId":Ljava/lang/String;
    move-object/from16 v5, p2

    .local v5, "deduplicateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v22, v4

    const-string v23, "zoneId"

    invoke-static/range {v22 .. v23}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .line 316
    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicateMap:Ljava/util/Map;

    .line 317
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 318
    new-instance v22, Ljava/lang/IllegalStateException;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    const-string v24, "No windows have been added to the builder"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 321
    :cond_0
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    const/16 v24, 0x4

    invoke-direct/range {v23 .. v24}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v6, v22

    .line 322
    .local v6, "standardTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneOffsetTransition;>;"
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    const/16 v24, 0x100

    invoke-direct/range {v23 .. v24}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v7, v22

    .line 323
    .local v7, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneOffsetTransition;>;"
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    const/16 v24, 0x2

    invoke-direct/range {v23 .. v24}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v8, v22

    .line 326
    .local v8, "lastTransitionRuleList":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneOffsetTransitionRule;>;"
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;

    move-object/from16 v9, v22

    .line 327
    .local v9, "firstWindow":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object/from16 v22, v9

    invoke-static/range {v22 .. v22}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/time/ZoneOffset;

    move-result-object v22

    move-object/from16 v10, v22

    .line 328
    .local v10, "loopStandardOffset":Ljava/time/ZoneOffset;
    const/16 v22, 0x0

    move/from16 v11, v22

    .line 329
    .local v11, "loopSavings":I
    move-object/from16 v22, v9

    invoke-static/range {v22 .. v22}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->access$100(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 330
    move-object/from16 v22, v9

    invoke-static/range {v22 .. v22}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->access$100(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v11, v22

    .line 332
    :cond_1
    move-object/from16 v22, v3

    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v23

    move/from16 v24, v11

    add-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/ZoneOffset;

    move-object/from16 v12, v22

    .line 333
    .local v12, "firstWallOffset":Ljava/time/ZoneOffset;
    move-object/from16 v22, v3

    const v23, -0x3b9ac9ff

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v23 .. v27}, Ljava/time/LocalDateTime;->of(IIIII)Ljava/time/LocalDateTime;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/LocalDateTime;

    move-object/from16 v13, v22

    .line 334
    .local v13, "loopWindowStart":Ljava/time/LocalDateTime;
    move-object/from16 v22, v12

    move-object/from16 v14, v22

    .line 337
    .local v14, "loopWindowOffset":Ljava/time/ZoneOffset;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/bp/zone/ZoneRulesBuilder;->windowList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v15, v22

    :goto_0
    move-object/from16 v22, v15

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v22, v15

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;

    move-object/from16 v16, v22

    .line 339
    .local v16, "window":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object/from16 v22, v16

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Ljava/time/LocalDateTime;->getYear()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->tidy(I)V

    .line 342
    move-object/from16 v22, v16

    invoke-static/range {v22 .. v22}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->access$100(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v17, v22

    .line 343
    .local v17, "effectiveSavings":Ljava/lang/Integer;
    move-object/from16 v22, v17

    if-nez v22, :cond_2

    .line 347
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v17, v22

    .line 348
    move-object/from16 v22, v16

    invoke-static/range {v22 .. v22}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->access$200(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v18, v22

    :goto_1
    move-object/from16 v22, v18

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v22, v18

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;

    move-object/from16 v19, v22

    .line 349
    .local v19, "rule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object/from16 v22, v19

    move-object/from16 v23, v10

    move/from16 v24, v11

    invoke-virtual/range {v22 .. v24}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->toTransition(Ljava/time/ZoneOffset;I)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v22

    move-object/from16 v20, v22

    .line 350
    .local v20, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object/from16 v22, v20

    invoke-virtual/range {v22 .. v22}, Ljava/time/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v22

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    invoke-virtual/range {v24 .. v25}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-lez v22, :cond_6

    .line 353
    .line 360
    .end local v19    # "rule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    .end local v20    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_2
    move-object/from16 v22, v10

    move-object/from16 v23, v16

    invoke-static/range {v23 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/time/ZoneOffset;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 361
    move-object/from16 v22, v6

    move-object/from16 v23, v3

    new-instance v24, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    .line 363
    invoke-virtual/range {v26 .. v27}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v29, v10

    invoke-static/range {v26 .. v29}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v26

    move-object/from16 v27, v10

    move-object/from16 v28, v16

    .line 364
    invoke-static/range {v28 .. v28}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/time/ZoneOffset;

    move-result-object v28

    invoke-direct/range {v25 .. v28}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    .line 361
    invoke-virtual/range {v23 .. v24}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 365
    move-object/from16 v22, v3

    move-object/from16 v23, v16

    invoke-static/range {v23 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/time/ZoneOffset;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/ZoneOffset;

    move-object/from16 v10, v22

    .line 369
    :cond_3
    move-object/from16 v22, v3

    move-object/from16 v23, v10

    invoke-virtual/range {v23 .. v23}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v23

    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/ZoneOffset;

    move-object/from16 v18, v22

    .line 370
    .local v18, "effectiveWallOffset":Ljava/time/ZoneOffset;
    move-object/from16 v22, v14

    move-object/from16 v23, v18

    invoke-virtual/range {v22 .. v23}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 371
    move-object/from16 v22, v3

    new-instance v23, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v18

    invoke-direct/range {v24 .. v27}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    invoke-virtual/range {v22 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object/from16 v19, v22

    .line 373
    .local v19, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object/from16 v22, v7

    move-object/from16 v23, v19

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 375
    .end local v19    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_4
    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v11, v22

    .line 378
    move-object/from16 v22, v16

    invoke-static/range {v22 .. v22}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->access$200(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v19, v22

    :goto_2
    move-object/from16 v22, v19

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v22, v19

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;

    move-object/from16 v20, v22

    .line 379
    .local v20, "rule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object/from16 v22, v3

    move-object/from16 v23, v20

    move-object/from16 v24, v10

    move/from16 v25, v11

    invoke-virtual/range {v23 .. v25}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->toTransition(Ljava/time/ZoneOffset;I)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object/from16 v21, v22

    .line 380
    .local v21, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object/from16 v22, v21

    invoke-virtual/range {v22 .. v22}, Ljava/time/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v22

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    invoke-virtual/range {v24 .. v25}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-gez v22, :cond_7

    const/16 v22, 0x1

    :goto_3
    if-nez v22, :cond_5

    move-object/from16 v22, v21

    .line 381
    invoke-virtual/range {v22 .. v22}, Ljava/time/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v22

    move-object/from16 v24, v16

    move/from16 v25, v11

    invoke-virtual/range {v24 .. v25}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->createDateTimeEpochSecond(I)J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-gez v22, :cond_5

    move-object/from16 v22, v21

    .line 382
    invoke-virtual/range {v22 .. v22}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v22

    move-object/from16 v23, v21

    invoke-virtual/range {v23 .. v23}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 383
    move-object/from16 v22, v7

    move-object/from16 v23, v21

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 384
    move-object/from16 v22, v20

    invoke-static/range {v22 .. v22}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v22

    move/from16 v11, v22

    .line 386
    :cond_5
    goto :goto_2

    .line 355
    .end local v18    # "effectiveWallOffset":Ljava/time/ZoneOffset;
    .end local v21    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    .local v19, "rule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    .local v20, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_6
    move-object/from16 v22, v19

    invoke-static/range {v22 .. v22}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v17, v22

    .line 356
    goto/16 :goto_1

    .line 380
    .end local v19    # "rule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    .restart local v18    # "effectiveWallOffset":Ljava/time/ZoneOffset;
    .local v20, "rule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    .restart local v21    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_7
    const/16 v22, 0x0

    goto :goto_3

    .line 389
    .end local v20    # "rule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    .end local v21    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_8
    move-object/from16 v22, v16

    invoke-static/range {v22 .. v22}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->access$400(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v19, v22

    :goto_4
    move-object/from16 v22, v19

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v22, v19

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;

    move-object/from16 v20, v22

    .line 390
    .local v20, "lastRule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object/from16 v22, v3

    move-object/from16 v23, v20

    move-object/from16 v24, v10

    move/from16 v25, v11

    invoke-virtual/range {v23 .. v25}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->toTransitionRule(Ljava/time/ZoneOffset;I)Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-object/from16 v21, v22

    .line 391
    .local v21, "transitionRule":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    move-object/from16 v22, v8

    move-object/from16 v23, v21

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v22

    .line 392
    move-object/from16 v22, v20

    invoke-static/range {v22 .. v22}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v22

    move/from16 v11, v22

    .line 393
    goto :goto_4

    .line 396
    .end local v20    # "lastRule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    .end local v21    # "transitionRule":Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    :cond_9
    move-object/from16 v22, v3

    move-object/from16 v23, v16

    move/from16 v24, v11

    invoke-virtual/range {v23 .. v24}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->createWallOffset(I)Ljava/time/ZoneOffset;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/ZoneOffset;

    move-object/from16 v14, v22

    .line 397
    move-object/from16 v22, v3

    move-object/from16 v23, v16

    move/from16 v24, v11

    .line 398
    invoke-virtual/range {v23 .. v24}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->createDateTimeEpochSecond(I)J

    move-result-wide v23

    const/16 v25, 0x0

    move-object/from16 v26, v14

    .line 397
    invoke-static/range {v23 .. v26}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/time/LocalDateTime;

    move-object/from16 v13, v22

    .line 399
    goto/16 :goto_0

    .line 400
    .end local v16    # "window":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    .end local v17    # "effectiveSavings":Ljava/lang/Integer;
    .end local v18    # "effectiveWallOffset":Ljava/time/ZoneOffset;
    :cond_a
    new-instance v22, Ljava/time/bp/zone/StandardZoneRules;

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    move-object/from16 v24, v9

    .line 401
    invoke-static/range {v24 .. v24}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->access$000(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/time/ZoneOffset;

    move-result-object v24

    move-object/from16 v25, v12

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    invoke-direct/range {v23 .. v28}, Ljava/time/bp/zone/StandardZoneRules;-><init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v3, v22

    .end local v3    # "this":Ljava/time/bp/zone/ZoneRulesBuilder;
    return-object v3
.end method
