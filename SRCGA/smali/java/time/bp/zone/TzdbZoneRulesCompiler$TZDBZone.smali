.class final Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;
.super Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;
.source "TzdbZoneRulesCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/bp/zone/TzdbZoneRulesCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TZDBZone"
.end annotation


# instance fields
.field fixedSavingsSecs:Ljava/lang/Integer;

.field savingsRule:Ljava/lang/String;

.field standardOffset:Ljava/time/ZoneOffset;

.field text:Ljava/lang/String;

.field final synthetic this$0:Ljava/time/bp/zone/TzdbZoneRulesCompiler;

.field year:Ljava/time/Year;


# direct methods
.method constructor <init>(Ljava/time/bp/zone/TzdbZoneRulesCompiler;)V
    .locals 4

    .prologue
    .line 1077
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;
    move-object v1, p1

    .local v1, "this$0":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->this$0:Ljava/time/bp/zone/TzdbZoneRulesCompiler;

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;-><init>(Ljava/time/bp/zone/TzdbZoneRulesCompiler;)V

    return-void
.end method

.method private toDateTime(I)Ljava/time/LocalDateTime;
    .locals 8

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;
    move v1, p1

    .local v1, "year":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->adjustToFowards(I)V

    .line 1114
    move-object v4, v0

    iget v4, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->dayOfMonth:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1115
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->month:Ljava/time/Month;

    move v6, v1

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/time/Year;->isLeap(J)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/time/Month;->length(Z)I

    move-result v5

    iput v5, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->dayOfMonth:I

    .line 1116
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->month:Ljava/time/Month;

    move-object v6, v0

    iget v6, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->dayOfMonth:I

    invoke-static {v4, v5, v6}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v4

    move-object v2, v4

    .line 1117
    .local v2, "date":Ljava/time/LocalDate;
    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->dayOfWeek:Ljava/time/DayOfWeek;

    if-eqz v4, :cond_0

    .line 1118
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->dayOfWeek:Ljava/time/DayOfWeek;

    invoke-static {v5}, Ljava/time/temporal/TemporalAdjusters;->previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v4

    move-object v2, v4

    .line 1126
    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->this$0:Ljava/time/bp/zone/TzdbZoneRulesCompiler;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/LocalDate;

    move-object v2, v4

    .line 1127
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->time:Ljava/time/LocalTime;

    invoke-static {v4, v5}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v3, v4

    .line 1128
    .local v3, "ldt":Ljava/time/LocalDateTime;
    move-object v4, v0

    iget-boolean v4, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->endOfDay:Z

    if-eqz v4, :cond_1

    .line 1129
    move-object v4, v3

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v3, v4

    .line 1131
    :cond_1
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;
    return-object v0

    .line 1121
    .end local v2    # "date":Ljava/time/LocalDate;
    .end local v3    # "ldt":Ljava/time/LocalDateTime;
    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;
    :cond_2
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->month:Ljava/time/Month;

    move-object v6, v0

    iget v6, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->dayOfMonth:I

    invoke-static {v4, v5, v6}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v4

    move-object v2, v4

    .line 1122
    .restart local v2    # "date":Ljava/time/LocalDate;
    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->dayOfWeek:Ljava/time/DayOfWeek;

    if-eqz v4, :cond_0

    .line 1123
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->dayOfWeek:Ljava/time/DayOfWeek;

    invoke-static {v5}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method


# virtual methods
.method addToBuilder(Ljava/time/bp/zone/ZoneRulesBuilder;Ljava/util/Map;)Ljava/time/bp/zone/ZoneRulesBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/bp/zone/ZoneRulesBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;",
            ">;>;)",
            "Ljava/time/bp/zone/ZoneRulesBuilder;"
        }
    .end annotation

    .prologue
    .line 1090
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;
    move-object v1, p1

    .local v1, "bld":Ljava/time/bp/zone/ZoneRulesBuilder;
    move-object v2, p2

    .local v2, "rules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;>;>;"
    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->year:Ljava/time/Year;

    if-eqz v6, :cond_1

    .line 1091
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->standardOffset:Ljava/time/ZoneOffset;

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->year:Ljava/time/Year;

    invoke-virtual {v9}, Ljava/time/Year;->getValue()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->toDateTime(I)Ljava/time/LocalDateTime;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/bp/zone/ZoneRulesBuilder;->addWindow(Ljava/time/ZoneOffset;Ljava/time/LocalDateTime;Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)Ljava/time/bp/zone/ZoneRulesBuilder;

    move-result-object v6

    .line 1096
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->fixedSavingsSecs:Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 1097
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->fixedSavingsSecs:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/time/bp/zone/ZoneRulesBuilder;->setFixedSavingsToWindow(I)Ljava/time/bp/zone/ZoneRulesBuilder;

    move-result-object v6

    .line 1108
    :cond_0
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;
    return-object v0

    .line 1093
    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;
    :cond_1
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v6, v7}, Ljava/time/bp/zone/ZoneRulesBuilder;->addWindowForever(Ljava/time/ZoneOffset;)Ljava/time/bp/zone/ZoneRulesBuilder;

    move-result-object v6

    goto :goto_0

    .line 1099
    :cond_2
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->savingsRule:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v3, v6

    .line 1100
    .local v3, "tzdbRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;>;"
    move-object v6, v3

    if-nez v6, :cond_3

    .line 1101
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rule not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->savingsRule:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1103
    :cond_3
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;

    move-object v5, v6

    .line 1104
    .local v5, "tzdbRule":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->addToBuilder(Ljava/time/bp/zone/ZoneRulesBuilder;)V

    .line 1105
    goto :goto_1
.end method
