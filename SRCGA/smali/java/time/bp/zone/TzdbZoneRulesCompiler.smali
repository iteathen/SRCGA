.class final Ljava/time/bp/zone/TzdbZoneRulesCompiler;
.super Ljava/lang/Object;
.source "TzdbZoneRulesCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;,
        Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;,
        Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;,
        Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;
    }
.end annotation


# static fields
.field private static final MJD_1972_01_01:J = 0xa165L

.field private static final TIME_PARSER:Ljava/time/format/DateTimeFormatter;


# instance fields
.field private final builtZones:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;"
        }
    .end annotation
.end field

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

.field private final leapSeconds:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/time/LocalDate;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final leapSecondsFile:Ljava/io/File;

.field private final links:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sourceFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final verbose:Z

.field private final version:Ljava/lang/String;

.field private final zones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 89
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->TIME_PARSER:Ljava/time/format/DateTimeFormatter;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "version":Ljava/lang/String;
    move-object v2, p2

    .local v2, "sourceFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v3, p3

    .local v3, "leapSecondsFile":Ljava/io/File;
    move v4, p4

    .local v4, "verbose":Z
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 491
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->rules:Ljava/util/Map;

    .line 493
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->zones:Ljava/util/Map;

    .line 495
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->links:Ljava/util/Map;

    .line 497
    move-object v5, v0

    new-instance v6, Ljava/util/TreeMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    .line 499
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    .line 501
    move-object v5, v0

    new-instance v6, Ljava/util/TreeMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->leapSeconds:Ljava/util/SortedMap;

    .line 520
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->version:Ljava/lang/String;

    .line 521
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->sourceFiles:Ljava/util/List;

    .line 522
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->leapSecondsFile:Ljava/io/File;

    .line 523
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->verbose:Z

    .line 524
    return-void
.end method

.method private buildZoneRules()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 958
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->zones:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v7

    :goto_0
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v2, v7

    .line 959
    .local v2, "zoneId":Ljava/lang/String;
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Building zone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 960
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v2, v7

    .line 961
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->zones:Ljava/util/Map;

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v3, v7

    .line 962
    .local v3, "tzdbZones":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;>;"
    new-instance v7, Ljava/time/bp/zone/ZoneRulesBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/time/bp/zone/ZoneRulesBuilder;-><init>()V

    move-object v4, v7

    .line 963
    .local v4, "bld":Ljava/time/bp/zone/ZoneRulesBuilder;
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_1
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;

    move-object v6, v7

    .line 964
    .local v6, "tzdbZone":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;
    move-object v7, v6

    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->rules:Ljava/util/Map;

    invoke-virtual {v7, v8, v9}, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->addToBuilder(Ljava/time/bp/zone/ZoneRulesBuilder;Ljava/util/Map;)Ljava/time/bp/zone/ZoneRulesBuilder;

    move-result-object v7

    move-object v4, v7

    .line 965
    goto :goto_1

    .line 966
    .end local v6    # "tzdbZone":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;
    :cond_0
    move-object v7, v4

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    invoke-virtual {v7, v8, v9}, Ljava/time/bp/zone/ZoneRulesBuilder;->toRules(Ljava/lang/String;Ljava/util/Map;)Ljava/time/bp/zone/ZoneRules;

    move-result-object v7

    move-object v5, v7

    .line 967
    .local v5, "buildRules":Ljava/time/bp/zone/ZoneRules;
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    move-object v8, v2

    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 968
    goto :goto_0

    .line 971
    .end local v2    # "zoneId":Ljava/lang/String;
    .end local v3    # "tzdbZones":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;>;"
    .end local v4    # "bld":Ljava/time/bp/zone/ZoneRulesBuilder;
    .end local v5    # "buildRules":Ljava/time/bp/zone/ZoneRules;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->links:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v7

    :goto_2
    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v2, v7

    .line 972
    .local v2, "aliasId":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v2, v7

    .line 973
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->links:Ljava/util/Map;

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v3, v7

    .line 974
    .local v3, "realId":Ljava/lang/String;
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Linking alias "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 975
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/time/bp/zone/ZoneRules;

    move-object v4, v7

    .line 976
    .local v4, "realRules":Ljava/time/bp/zone/ZoneRules;
    move-object v7, v4

    if-nez v7, :cond_2

    .line 977
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->links:Ljava/util/Map;

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v3, v7

    .line 978
    move-object v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Relinking alias "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 979
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/time/bp/zone/ZoneRules;

    move-object v4, v7

    .line 980
    move-object v7, v4

    if-nez v7, :cond_2

    .line 981
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Alias \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' links to invalid zone \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' for \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->version:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 984
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    move-object v8, v2

    move-object v9, v4

    invoke-interface {v7, v8, v9}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 985
    goto/16 :goto_2

    .line 988
    .end local v2    # "aliasId":Ljava/lang/String;
    .end local v3    # "realId":Ljava/lang/String;
    .end local v4    # "realRules":Ljava/time/bp/zone/ZoneRules;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    const-string v8, "UTC"

    invoke-interface {v7, v8}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 989
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    const-string v8, "GMT"

    invoke-interface {v7, v8}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 990
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    const-string v8, "GMT0"

    invoke-interface {v7, v8}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 991
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    const-string v8, "GMT+0"

    invoke-interface {v7, v8}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 992
    move-object v7, v0

    iget-object v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    const-string v8, "GMT-0"

    invoke-interface {v7, v8}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 993
    return-void
.end method

.method private getMostRecentLeapSecond()Ljava/time/LocalDate;
    .locals 2

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->leapSeconds:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    return-object v0

    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->leapSeconds:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDate;

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 21

    .prologue
    .line 105
    move-object/from16 v1, p0

    .local v1, "args":[Ljava/lang/String;
    move-object v15, v1

    array-length v15, v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 106
    invoke-static {}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputHelp()V

    .line 107
    .line 208
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v15, 0x0

    move-object v2, v15

    .line 112
    .local v2, "version":Ljava/lang/String;
    const/4 v15, 0x0

    move-object v3, v15

    .line 113
    .local v3, "baseSrcDir":Ljava/io/File;
    const/4 v15, 0x0

    move-object v4, v15

    .line 114
    .local v4, "dstDir":Ljava/io/File;
    const/4 v15, 0x0

    move v5, v15

    .line 115
    .local v5, "unpacked":Z
    const/4 v15, 0x0

    move v6, v15

    .line 119
    .local v6, "verbose":Z
    const/4 v15, 0x0

    move v7, v15

    .local v7, "i":I
    :goto_1
    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 120
    move-object v15, v1

    move/from16 v16, v7

    aget-object v15, v15, v16

    move-object v8, v15

    .line 121
    .local v8, "arg":Ljava/lang/String;
    move-object v15, v8

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 122
    .line 157
    .end local v8    # "arg":Ljava/lang/String;
    :cond_1
    move-object v15, v3

    if-nez v15, :cond_9

    .line 158
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Source directory must be specified using -srcdir: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    goto :goto_0

    .line 124
    .restart local v8    # "arg":Ljava/lang/String;
    :cond_2
    const-string v15, "-srcdir"

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 125
    move-object v15, v3

    if-nez v15, :cond_8

    add-int/lit8 v7, v7, 0x1

    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 126
    new-instance v15, Ljava/io/File;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v17, v1

    move/from16 v18, v7

    aget-object v17, v17, v18

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v15

    .line 119
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 129
    :cond_3
    const-string v15, "-dstdir"

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 130
    move-object v15, v4

    if-nez v15, :cond_8

    add-int/lit8 v7, v7, 0x1

    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 131
    new-instance v15, Ljava/io/File;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v17, v1

    move/from16 v18, v7

    aget-object v17, v17, v18

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v15

    .line 132
    goto :goto_2

    .line 134
    :cond_4
    const-string v15, "-version"

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 135
    move-object v15, v2

    if-nez v15, :cond_8

    add-int/lit8 v7, v7, 0x1

    move v15, v7

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 136
    move-object v15, v1

    move/from16 v16, v7

    aget-object v15, v15, v16

    move-object v2, v15

    .line 137
    goto :goto_2

    .line 139
    :cond_5
    const-string v15, "-unpacked"

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 140
    move v15, v5

    if-nez v15, :cond_8

    .line 141
    const/4 v15, 0x1

    move v5, v15

    .line 142
    goto :goto_2

    .line 144
    :cond_6
    const-string v15, "-verbose"

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 145
    move v15, v6

    if-nez v15, :cond_8

    .line 146
    const/4 v15, 0x1

    move v6, v15

    .line 147
    goto :goto_2

    .line 149
    :cond_7
    const-string v15, "-help"

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 150
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unrecognised option: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    :cond_8
    invoke-static {}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputHelp()V

    .line 153
    goto/16 :goto_0

    .line 161
    .end local v8    # "arg":Ljava/lang/String;
    :cond_9
    move-object v15, v3

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_a

    .line 162
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Source does not exist or is not a directory: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    goto/16 :goto_0

    .line 165
    :cond_a
    move-object v15, v4

    if-eqz v15, :cond_c

    move-object v15, v4

    :goto_3
    move-object v4, v15

    .line 168
    move-object v15, v1

    move/from16 v16, v7

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object v8, v15

    .line 169
    .local v8, "srcFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v15, v8

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 170
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Source filenames not specified, using default set"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "(africa antarctica asia australasia backward etcetera europe northamerica southamerica)"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/String;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x0

    const-string v18, "africa"

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x1

    const-string v18, "antarctica"

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x2

    const-string v18, "asia"

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x3

    const-string v18, "australasia"

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x4

    const-string v18, "backward"

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x5

    const-string v18, "etcetera"

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x6

    const-string v18, "europe"

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x7

    const-string v18, "northamerica"

    aput-object v18, v16, v17

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const/16 v17, 0x8

    const-string v18, "southamerica"

    aput-object v18, v16, v17

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    move-object v8, v15

    .line 177
    :cond_b
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v15

    .line 178
    .local v9, "srcDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v15, v2

    if-eqz v15, :cond_f

    .line 179
    new-instance v15, Ljava/io/File;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-direct/range {v16 .. v18}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v15

    .line 180
    .local v10, "srcDir":Ljava/io/File;
    move-object v15, v10

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_d

    .line 181
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Version does not represent a valid source directory : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    goto/16 :goto_0

    .line 165
    .end local v8    # "srcFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "srcDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v10    # "srcDir":Ljava/io/File;
    :cond_c
    move-object v15, v3

    goto/16 :goto_3

    .line 184
    .restart local v8    # "srcFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "srcDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v10    # "srcDir":Ljava/io/File;
    :cond_d
    move-object v15, v9

    move-object/from16 v16, v10

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 185
    .line 193
    .end local v10    # "srcDir":Ljava/io/File;
    :cond_e
    move-object v15, v9

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 194
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Source directory contains no valid source folders: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    goto/16 :goto_0

    .line 186
    :cond_f
    move-object v15, v3

    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    move-object v10, v15

    .line 187
    .local v10, "dirs":[Ljava/io/File;
    move-object v15, v10

    move-object v11, v15

    move-object v15, v11

    array-length v15, v15

    move v12, v15

    const/4 v15, 0x0

    move v13, v15

    :goto_4
    move v15, v13

    move/from16 v16, v12

    move/from16 v0, v16

    if-ge v15, v0, :cond_e

    move-object v15, v11

    move/from16 v16, v13

    aget-object v15, v15, v16

    move-object v14, v15

    .line 188
    .local v14, "dir":Ljava/io/File;
    move-object v15, v14

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_10

    move-object v15, v14

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "[12][0-9][0-9][0-9][A-Za-z0-9._-]+"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 189
    move-object v15, v9

    move-object/from16 v16, v14

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 187
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 199
    .end local v10    # "dirs":[Ljava/io/File;
    .end local v14    # "dir":Ljava/io/File;
    :cond_11
    move-object v15, v4

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_12

    move-object v15, v4

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_12

    .line 200
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Destination directory could not be created: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 201
    goto/16 :goto_0

    .line 203
    :cond_12
    move-object v15, v4

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_13

    .line 204
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Destination is not a directory: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    goto/16 :goto_0

    .line 207
    :cond_13
    move-object v15, v9

    move-object/from16 v16, v8

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    invoke-static/range {v15 .. v19}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->process(Ljava/util/List;Ljava/util/List;Ljava/io/File;ZZ)V

    .line 208
    goto/16 :goto_0
.end method

.method private matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 889
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, p2

    .local v2, "search":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    return v0

    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static outputFile(Ljava/io/File;Ljava/lang/String;Ljava/util/SortedMap;Ljava/util/SortedMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/time/LocalDate;",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "dstFile":Ljava/io/File;
    move-object v1, p1

    .local v1, "version":Ljava/lang/String;
    move-object v2, p2

    .local v2, "builtZones":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;"
    move-object/from16 v3, p3

    .local v3, "leapSeconds":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/time/LocalDate;Ljava/lang/Byte;>;"
    new-instance v7, Ljava/util/TreeMap;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    move-object v4, v7

    .line 353
    .local v4, "loopAllBuiltZones":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/SortedMap<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;>;"
    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 354
    new-instance v7, Ljava/util/TreeSet;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    move-object v5, v7

    .line 355
    .local v5, "loopAllRegionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v6, v7

    .line 356
    .local v6, "loopAllRules":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/bp/zone/ZoneRules;>;"
    move-object v7, v0

    move-object v8, v4

    move-object v9, v5

    move-object v10, v6

    move-object v11, v3

    invoke-static {v7, v8, v9, v10, v11}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputFile(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/SortedMap;)V

    .line 357
    return-void
.end method

.method private static outputFile(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/SortedMap;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/time/LocalDate;",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "dstFile":Ljava/io/File;
    move-object/from16 v1, p1

    .local v1, "allBuiltZones":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/SortedMap<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;>;"
    move-object/from16 v2, p2

    .local v2, "allRegionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, "allRules":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/bp/zone/ZoneRules;>;"
    move-object/from16 v4, p4

    .local v4, "leapSeconds":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/time/LocalDate;Ljava/lang/Byte;>;"
    const/4 v9, 0x0

    move-object v5, v9

    .line 366
    .local v5, "jos":Ljava/util/jar/JarOutputStream;
    :try_start_0
    new-instance v9, Ljava/util/jar/JarOutputStream;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/io/FileOutputStream;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v0

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v9

    .line 367
    move-object v9, v5

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-static {v9, v10, v11, v12}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputTzdbEntry(Ljava/util/jar/JarOutputStream;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 368
    move-object v9, v5

    move-object v10, v4

    invoke-static {v9, v10}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputLeapSecondEntry(Ljava/util/jar/JarOutputStream;Ljava/util/SortedMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    move-object v9, v5

    if-eqz v9, :cond_0

    .line 376
    move-object v9, v5

    :try_start_1
    invoke-virtual {v9}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    .line 382
    :cond_0
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 379
    goto :goto_0

    .line 369
    :catch_1
    move-exception v9

    move-object v6, v9

    .line 370
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    move-object v9, v5

    if-eqz v9, :cond_0

    .line 376
    move-object v9, v5

    :try_start_3
    invoke-virtual {v9}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 379
    goto :goto_0

    .line 377
    :catch_2
    move-exception v9

    move-object v6, v9

    .line 379
    goto :goto_0

    .line 374
    .end local v6    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    move-object v7, v9

    move-object v9, v5

    if-eqz v9, :cond_1

    .line 376
    move-object v9, v5

    :try_start_4
    invoke-virtual {v9}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 379
    :cond_1
    :goto_1
    move-object v9, v7

    throw v9

    .line 377
    :catch_3
    move-exception v9

    move-object v8, v9

    goto :goto_1
.end method

.method private static outputFilesDat(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/SortedMap;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/time/LocalDate;",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "dstDir":Ljava/io/File;
    move-object/from16 v1, p1

    .local v1, "allBuiltZones":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/SortedMap<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;>;"
    move-object/from16 v2, p2

    .local v2, "allRegionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, "allRules":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/bp/zone/ZoneRules;>;"
    move-object/from16 v4, p4

    .local v4, "leapSeconds":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/time/LocalDate;Ljava/lang/Byte;>;"
    new-instance v10, Ljava/io/File;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    const-string v13, "TZDB.dat"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v10

    .line 319
    .local v5, "tzdbFile":Ljava/io/File;
    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    .line 320
    new-instance v10, Ljava/io/File;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    const-string v13, "LeapSecondRules.dat"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v10

    .line 321
    .local v6, "leapFile":Ljava/io/File;
    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    .line 323
    const/4 v10, 0x0

    move-object v7, v10

    .line 325
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v10

    .line 326
    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    invoke-static {v10, v11, v12, v13}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputTzdbDat(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    move-object v10, v7

    if-eqz v10, :cond_0

    .line 329
    move-object v10, v7

    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 332
    :cond_0
    const/4 v10, 0x0

    move-object v8, v10

    .line 334
    .local v8, "fos2":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v6

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v8, v10

    .line 335
    move-object v10, v8

    move-object v11, v4

    invoke-static {v10, v11}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputLeapSecondDat(Ljava/io/OutputStream;Ljava/util/SortedMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 337
    move-object v10, v8

    if-eqz v10, :cond_1

    .line 338
    move-object v10, v8

    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 345
    .line 346
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "fos2":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 328
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v10

    move-object v8, v10

    move-object v10, v7

    if-eqz v10, :cond_2

    .line 329
    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    move-object v10, v8

    throw v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 341
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 342
    .local v7, "ex":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 337
    .local v7, "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos2":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v9, v10

    move-object v10, v8

    if-eqz v10, :cond_3

    .line 338
    move-object v10, v8

    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    move-object v10, v9

    throw v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private static outputHelp()V
    .locals 2

    .prologue
    .line 214
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: TzdbZoneRulesCompiler <options> <tzdb source filenames>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "where options include:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -srcdir <directory>   Where to find source directories (required)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -dstdir <directory>   Where to output generated files (default srcdir)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -version <version>    Specify the version, such as 2009a (optional)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -unpacked             Generate dat files without jar files"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -help                 Print this usage message"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   -verbose              Output verbose information during compilation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " There must be one directory for each version in srcdir"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " Each directory must have the name of the version, such as 2009a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " Each directory must contain the unpacked tzdb files, such as asia or europe"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " Directories must match the regex [12][0-9][0-9][0-9][A-Za-z0-9._-]+"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " There will be one jar file for each version and one combined jar in dstdir"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " If the version is specified, only that version is processed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private static outputLeapSecondDat(Ljava/io/OutputStream;Ljava/util/SortedMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/time/LocalDate;",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    move-object v1, p0

    .local v1, "jos":Ljava/io/OutputStream;
    move-object v2, p1

    .local v2, "leapSeconds":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/time/LocalDate;Ljava/lang/Byte;>;"
    new-instance v7, Ljava/io/DataOutputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v7

    .line 473
    .local v3, "out":Ljava/io/DataOutputStream;
    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 475
    move-object v7, v3

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/SortedMap;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 477
    const/16 v7, 0xa

    move v4, v7

    .line 478
    .local v4, "offset":I
    move-object v7, v3

    const-wide/32 v8, 0xa165

    invoke-virtual {v7, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 479
    move-object v7, v3

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 481
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v6, v7

    .line 482
    .local v6, "rule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/LocalDate;Ljava/lang/Byte;>;"
    move-object v7, v3

    sget-object v8, Ljava/time/temporal/JulianFields;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/TemporalField;

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v8, v9}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 483
    move v7, v4

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    add-int/2addr v7, v8

    move v4, v7

    .line 484
    move-object v7, v3

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 485
    goto :goto_0

    .line 486
    .end local v6    # "rule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/LocalDate;Ljava/lang/Byte;>;"
    :cond_0
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 487
    return-void
.end method

.method private static outputLeapSecondEntry(Ljava/util/jar/JarOutputStream;Ljava/util/SortedMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarOutputStream;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/time/LocalDate;",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "jos":Ljava/util/jar/JarOutputStream;
    move-object v1, p1

    .local v1, "leapSeconds":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/time/LocalDate;Ljava/lang/Byte;>;"
    move-object v3, v0

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipEntry;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "org/threeten/bp/LeapSecondRules.dat"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 460
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputLeapSecondDat(Ljava/io/OutputStream;Ljava/util/SortedMap;)V

    .line 461
    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .line 467
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 463
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 465
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private static outputTzdbDat(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    move-object/from16 v2, p0

    .local v2, "jos":Ljava/io/OutputStream;
    move-object/from16 v3, p1

    .local v3, "allBuiltZones":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/SortedMap<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;>;"
    move-object/from16 v4, p2

    .local v4, "allRegionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v5, p3

    .local v5, "allRules":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/bp/zone/ZoneRules;>;"
    new-instance v17, Ljava/io/DataOutputStream;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v19}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v6, v17

    .line 411
    .local v6, "out":Ljava/io/DataOutputStream;
    move-object/from16 v17, v6

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 413
    move-object/from16 v17, v6

    const-string v18, "TZDB"

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 415
    move-object/from16 v17, v3

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v7, v17

    .line 416
    .local v7, "versionArray":[Ljava/lang/String;
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 417
    move-object/from16 v17, v7

    move-object/from16 v8, v17

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v9, v17

    const/16 v17, 0x0

    move/from16 v10, v17

    :goto_0
    move/from16 v17, v10

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    move-object/from16 v17, v8

    move/from16 v18, v10

    aget-object v17, v17, v18

    move-object/from16 v11, v17

    .line 418
    .local v11, "version":Ljava/lang/String;
    move-object/from16 v17, v6

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 417
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 421
    .end local v11    # "version":Ljava/lang/String;
    :cond_0
    move-object/from16 v17, v4

    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v8, v17

    .line 422
    .local v8, "regionArray":[Ljava/lang/String;
    move-object/from16 v17, v6

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 423
    move-object/from16 v17, v8

    move-object/from16 v9, v17

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v10, v17

    const/16 v17, 0x0

    move/from16 v11, v17

    :goto_1
    move/from16 v17, v11

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move-object/from16 v17, v9

    move/from16 v18, v11

    aget-object v17, v17, v18

    move-object/from16 v12, v17

    .line 424
    .local v12, "regionId":Ljava/lang/String;
    move-object/from16 v17, v6

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 423
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 427
    .end local v12    # "regionId":Ljava/lang/String;
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move-object/from16 v19, v5

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v9, v17

    .line 428
    .local v9, "rulesList":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/ZoneRules;>;"
    move-object/from16 v17, v6

    move-object/from16 v18, v9

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 429
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    const/16 v19, 0x400

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object/from16 v10, v17

    .line 430
    .local v10, "baos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v17, v9

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v11, v17

    :goto_2
    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/time/bp/zone/ZoneRules;

    move-object/from16 v12, v17

    .line 431
    .local v12, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 432
    new-instance v17, Ljava/io/DataOutputStream;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    move-object/from16 v19, v10

    invoke-direct/range {v18 .. v19}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v13, v17

    .line 433
    .local v13, "dataos":Ljava/io/DataOutputStream;
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    invoke-static/range {v17 .. v18}, Ljava/time/bp/zone/Ser;->write(Ljava/lang/Object;Ljava/io/DataOutput;)V

    .line 434
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->close()V

    .line 435
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v14, v17

    .line 436
    .local v14, "bytes":[B
    move-object/from16 v17, v6

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 437
    move-object/from16 v17, v6

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->write([B)V

    .line 438
    goto :goto_2

    .line 440
    .end local v12    # "rules":Ljava/time/bp/zone/ZoneRules;
    .end local v13    # "dataos":Ljava/io/DataOutputStream;
    .end local v14    # "bytes":[B
    :cond_2
    move-object/from16 v17, v3

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v11, v17

    :goto_3
    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v12, v17

    .line 441
    .local v12, "version":Ljava/lang/String;
    move-object/from16 v17, v6

    move-object/from16 v18, v3

    move-object/from16 v19, v12

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/SortedMap;

    invoke-interface/range {v18 .. v18}, Ljava/util/SortedMap;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 442
    move-object/from16 v17, v3

    move-object/from16 v18, v12

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/SortedMap;

    invoke-interface/range {v17 .. v17}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v13, v17

    :goto_4
    move-object/from16 v17, v13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v17, v13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    move-object/from16 v14, v17

    .line 443
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;"
    move-object/from16 v17, v8

    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v17

    move/from16 v15, v17

    .line 444
    .local v15, "regionIndex":I
    move-object/from16 v17, v9

    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    move/from16 v16, v17

    .line 445
    .local v16, "rulesIndex":I
    move-object/from16 v17, v6

    move/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 446
    move-object/from16 v17, v6

    move/from16 v18, v16

    invoke-virtual/range {v17 .. v18}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 447
    goto :goto_4

    .line 448
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;"
    .end local v15    # "regionIndex":I
    .end local v16    # "rulesIndex":I
    :cond_3
    goto :goto_3

    .line 449
    .end local v12    # "version":Ljava/lang/String;
    :cond_4
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->flush()V

    .line 450
    return-void
.end method

.method private static outputTzdbEntry(Ljava/util/jar/JarOutputStream;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarOutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "jos":Ljava/util/jar/JarOutputStream;
    move-object v1, p1

    .local v1, "allBuiltZones":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/SortedMap<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;>;"
    move-object v2, p2

    .local v2, "allRegionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v3, p3

    .local v3, "allRules":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/bp/zone/ZoneRules;>;"
    move-object v5, v0

    :try_start_0
    new-instance v6, Ljava/util/zip/ZipEntry;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "org/threeten/bp/TZDB.dat"

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 393
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputTzdbDat(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 394
    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .line 400
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 396
    .local v4, "ex":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private parseDayOfWeek(Ljava/lang/String;)Ljava/time/DayOfWeek;
    .locals 11

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 880
    invoke-static {}, Ljava/time/DayOfWeek;->values()[Ljava/time/DayOfWeek;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 881
    .local v5, "dow":Ljava/time/DayOfWeek;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v8}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 882
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    return-object v0

    .line 880
    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 885
    .end local v5    # "dow":Ljava/time/DayOfWeek;
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown day-of-week: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private parseFile(Ljava/io/File;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 689
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object/from16 v1, p1

    .local v1, "file":Ljava/io/File;
    const/4 v12, 0x1

    move v2, v12

    .line 690
    .local v2, "lineNumber":I
    const/4 v12, 0x0

    move-object v3, v12

    .line 691
    .local v3, "line":Ljava/lang/String;
    const/4 v12, 0x0

    move-object v4, v12

    .line 693
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v12, Ljava/io/BufferedReader;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v12

    .line 694
    const/4 v12, 0x0

    move-object v5, v12

    .line 695
    .local v5, "openZone":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;>;"
    :goto_0
    move-object v12, v4

    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v3, v13

    if-eqz v12, :cond_b

    .line 696
    move-object v12, v3

    const/16 v13, 0x23

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    move v6, v12

    .line 697
    .local v6, "index":I
    move v12, v6

    if-ltz v12, :cond_0

    .line 698
    move-object v12, v3

    const/4 v13, 0x0

    move v14, v6

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    .line 700
    :cond_0
    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    .line 701
    .line 695
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    :cond_2
    new-instance v12, Ljava/util/StringTokenizer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v3

    const-string v15, " \t"

    invoke-direct {v13, v14, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v12

    .line 704
    .local v7, "st":Ljava/util/StringTokenizer;
    move-object v12, v5

    if-eqz v12, :cond_3

    move-object v12, v3

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v7

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 705
    move-object v12, v0

    move-object v13, v7

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseZoneLine(Ljava/util/StringTokenizer;Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 706
    const/4 v12, 0x0

    move-object v5, v12

    goto :goto_1

    .line 709
    :cond_3
    move-object v12, v7

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 710
    move-object v12, v7

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 711
    .local v8, "first":Ljava/lang/String;
    move-object v12, v8

    const-string v13, "Zone"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 712
    move-object v12, v7

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v12

    const/4 v13, 0x3

    if-ge v12, v13, :cond_5

    .line 713
    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid Zone line in file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", line: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 714
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "Invalid Zone line"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    .end local v5    # "openZone":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;>;"
    .end local v6    # "index":I
    .end local v7    # "st":Ljava/util/StringTokenizer;
    .end local v8    # "first":Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object v5, v12

    .line 747
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v12, Ljava/lang/Exception;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed while processing file \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' on line "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v5

    invoke-direct {v13, v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v4

    if-eqz v12, :cond_4

    .line 750
    move-object v12, v4

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    :cond_4
    move-object v12, v11

    throw v12

    .line 716
    .local v5, "openZone":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;>;"
    .restart local v6    # "index":I
    .restart local v7    # "st":Ljava/util/StringTokenizer;
    .restart local v8    # "first":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v12

    .line 717
    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->zones:Ljava/util/Map;

    move-object v13, v7

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    move-object v14, v5

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 718
    move-object v12, v0

    move-object v13, v7

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseZoneLine(Ljava/util/StringTokenizer;Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 719
    const/4 v12, 0x0

    move-object v5, v12

    goto/16 :goto_1

    .line 722
    :cond_6
    const/4 v12, 0x0

    move-object v5, v12

    .line 723
    move-object v12, v8

    const-string v13, "Rule"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 724
    move-object v12, v7

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v12

    const/16 v13, 0x9

    if-ge v12, v13, :cond_7

    .line 725
    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid Rule line in file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", line: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 726
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "Invalid Rule line"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 728
    :cond_7
    move-object v12, v0

    move-object v13, v7

    invoke-direct {v12, v13}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseRuleLine(Ljava/util/StringTokenizer;)V

    goto/16 :goto_1

    .line 730
    :cond_8
    move-object v12, v8

    const-string v13, "Link"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 731
    move-object v12, v7

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_9

    .line 732
    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid Link line in file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", line: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 733
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "Invalid Link line"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 735
    :cond_9
    move-object v12, v7

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 736
    .local v9, "realId":Ljava/lang/String;
    move-object v12, v7

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 737
    .local v10, "aliasId":Ljava/lang/String;
    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->links:Ljava/util/Map;

    move-object v13, v10

    move-object v14, v9

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 739
    goto/16 :goto_1

    .line 740
    .end local v9    # "realId":Ljava/lang/String;
    .end local v10    # "aliasId":Ljava/lang/String;
    :cond_a
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const-string v14, "Unknown line"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 749
    .end local v6    # "index":I
    .end local v7    # "st":Ljava/util/StringTokenizer;
    .end local v8    # "first":Ljava/lang/String;
    :cond_b
    move-object v12, v4

    if-eqz v12, :cond_c

    .line 750
    move-object v12, v4

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 753
    :cond_c
    return-void
.end method

.method private parseFiles()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->sourceFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    move-object v2, v3

    .line 585
    .local v2, "file":Ljava/io/File;
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 586
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseFile(Ljava/io/File;)V

    .line 587
    goto :goto_0

    .line 588
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private parseLeapSecondRule(Ljava/lang/String;)Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;
    .locals 17

    .prologue
    .line 642
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object/from16 v1, p1

    .local v1, "line":Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v1

    const-string v15, " \t"

    invoke-direct {v13, v14, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v12

    .line 643
    .local v2, "st":Ljava/util/StringTokenizer;
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    .line 644
    .local v3, "first":Ljava/lang/String;
    move-object v12, v3

    const-string v13, "Leap"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 645
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v12

    const/4 v13, 0x6

    if-ge v12, v13, :cond_1

    .line 646
    move-object v12, v0

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid leap second line in file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->leapSecondsFile:Ljava/io/File;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", line: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 647
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string v14, "Invalid leap second line"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 650
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string v14, "Unknown line"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 653
    :cond_1
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v4, v12

    .line 654
    .local v4, "year":I
    move-object v12, v0

    move-object v13, v2

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseMonth(Ljava/lang/String;)Ljava/time/Month;

    move-result-object v12

    move-object v5, v12

    .line 655
    .local v5, "month":Ljava/time/Month;
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v6, v12

    .line 656
    .local v6, "dayOfMonth":I
    move v12, v4

    move-object v13, v5

    move v14, v6

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v12

    move-object v7, v12

    .line 657
    .local v7, "leapDate":Ljava/time/LocalDate;
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 659
    .local v8, "timeOfLeapSecond":Ljava/lang/String;
    const/4 v12, 0x0

    move v9, v12

    .line 660
    .local v9, "adjustmentByte":B
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 661
    .local v10, "adjustment":Ljava/lang/String;
    move-object v12, v10

    const-string v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 662
    const-string v12, "23:59:60"

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 663
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Leap seconds can only be inserted at 23:59:60 - Date:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 665
    :cond_2
    const/4 v12, 0x1

    move v9, v12

    .line 675
    :goto_0
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 676
    .local v11, "rollingOrStationary":Ljava/lang/String;
    const-string v12, "S"

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 677
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Only stationary (\'S\') leap seconds are supported, not \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 666
    .end local v11    # "rollingOrStationary":Ljava/lang/String;
    :cond_3
    move-object v12, v10

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 667
    const-string v12, "23:59:59"

    move-object v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 668
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Leap seconds can only be removed at 23:59:59 - Date:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 670
    :cond_4
    const/4 v12, -0x1

    move v9, v12

    goto :goto_0

    .line 672
    :cond_5
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid adjustment \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' in leap second rule for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 679
    .restart local v11    # "rollingOrStationary":Ljava/lang/String;
    :cond_6
    new-instance v12, Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v7

    move v15, v9

    invoke-direct {v13, v14, v15}, Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;-><init>(Ljava/time/LocalDate;B)V

    move-object v0, v12

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    return-object v0
.end method

.method private parseLeapSecondsFile()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v8, v0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parsing leap second file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->leapSecondsFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 597
    const/4 v8, 0x1

    move v1, v8

    .line 598
    .local v1, "lineNumber":I
    const/4 v8, 0x0

    move-object v2, v8

    .line 599
    .local v2, "line":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v3, v8

    .line 602
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/io/FileReader;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    iget-object v12, v12, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->leapSecondsFile:Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v8

    .line 603
    :goto_0
    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v2, v9

    if-eqz v8, :cond_2

    .line 604
    move-object v8, v2

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v4, v8

    .line 605
    .local v4, "index":I
    move v8, v4

    if-ltz v8, :cond_0

    .line 606
    move-object v8, v2

    const/4 v9, 0x0

    move v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 608
    :cond_0
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 609
    .line 603
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    :cond_1
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseLeapSecondRule(Ljava/lang/String;)Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;

    move-result-object v8

    move-object v5, v8

    .line 612
    .local v5, "secondRule":Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->leapSeconds:Ljava/util/SortedMap;

    move-object v9, v5

    iget-object v9, v9, Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;->leapDate:Ljava/time/LocalDate;

    move-object v10, v5

    iget-byte v10, v10, Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;->secondAdjustment:B

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    goto :goto_1

    .line 618
    .end local v4    # "index":I
    .end local v5    # "secondRule":Ljava/time/bp/zone/TzdbZoneRulesCompiler$LeapSecondRule;
    :cond_2
    move-object v8, v3

    if-eqz v8, :cond_3

    .line 619
    move-object v8, v3

    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 623
    .line 625
    :cond_3
    :goto_2
    return-void

    .line 621
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 624
    goto :goto_2

    .line 614
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 615
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/lang/Exception;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed while processing file \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->leapSecondsFile:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' on line "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 617
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    move-object v6, v8

    .line 618
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 619
    move-object v8, v3

    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 623
    :cond_4
    :goto_3
    move-object v8, v6

    throw v8

    .line 621
    :catch_2
    move-exception v8

    move-object v7, v8

    goto :goto_3
.end method

.method private parseMonth(Ljava/lang/String;)Ljava/time/Month;
    .locals 11

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 870
    invoke-static {}, Ljava/time/Month;->values()[Ljava/time/Month;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 871
    .local v5, "moy":Ljava/time/Month;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v8}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 872
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    return-object v0

    .line 870
    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 875
    .end local v5    # "moy":Ljava/time/Month;
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown month: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private parseMonthDayTime(Ljava/util/StringTokenizer;Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;)V
    .locals 12

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "st":Ljava/util/StringTokenizer;
    move-object v2, p2

    .local v2, "mdt":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;
    move-object v7, v2

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseMonth(Ljava/lang/String;)Ljava/time/Month;

    move-result-object v8

    iput-object v8, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->month:Ljava/time/Month;

    .line 821
    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 822
    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 823
    .local v3, "dayRule":Ljava/lang/String;
    move-object v7, v3

    const-string v8, "last"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 824
    move-object v7, v2

    const/4 v8, -0x1

    iput v8, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfMonth:I

    .line 825
    move-object v7, v2

    move-object v8, v0

    move-object v9, v3

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseDayOfWeek(Ljava/lang/String;)Ljava/time/DayOfWeek;

    move-result-object v8

    iput-object v8, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfWeek:Ljava/time/DayOfWeek;

    .line 826
    move-object v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->adjustForwards:Z

    .line 842
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 843
    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 844
    .local v4, "timeStr":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseSecs(Ljava/lang/String;)I

    move-result v7

    move v5, v7

    .line 845
    .local v5, "secsOfDay":I
    move v7, v5

    const v8, 0x15180

    if-ne v7, v8, :cond_0

    .line 846
    move-object v7, v2

    const/4 v8, 0x1

    iput-boolean v8, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->endOfDay:Z

    .line 847
    const/4 v7, 0x0

    move v5, v7

    .line 849
    :cond_0
    move-object v7, v0

    move v8, v5

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/time/LocalTime;

    move-object v6, v7

    .line 850
    .local v6, "time":Ljava/time/LocalTime;
    move-object v7, v2

    move-object v8, v6

    iput-object v8, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->time:Ljava/time/LocalTime;

    .line 851
    move-object v7, v2

    move-object v8, v0

    move-object v9, v4

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {v8, v9}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseTimeDefinition(C)Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v8

    iput-object v8, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 854
    .end local v3    # "dayRule":Ljava/lang/String;
    .end local v4    # "timeStr":Ljava/lang/String;
    .end local v5    # "secsOfDay":I
    .end local v6    # "time":Ljava/time/LocalTime;
    :cond_1
    return-void

    .line 828
    .restart local v3    # "dayRule":Ljava/lang/String;
    :cond_2
    move-object v7, v3

    const-string v8, ">="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 829
    .local v4, "index":I
    move v7, v4

    if-lez v7, :cond_4

    .line 830
    move-object v7, v2

    move-object v8, v0

    move-object v9, v3

    const/4 v10, 0x0

    move v11, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseDayOfWeek(Ljava/lang/String;)Ljava/time/DayOfWeek;

    move-result-object v8

    iput-object v8, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfWeek:Ljava/time/DayOfWeek;

    .line 831
    move-object v7, v3

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 840
    :cond_3
    :goto_1
    move-object v7, v2

    move-object v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfMonth:I

    goto :goto_0

    .line 833
    :cond_4
    move-object v7, v3

    const-string v8, "<="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 834
    move v7, v4

    if-lez v7, :cond_3

    .line 835
    move-object v7, v2

    move-object v8, v0

    move-object v9, v3

    const/4 v10, 0x0

    move v11, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseDayOfWeek(Ljava/lang/String;)Ljava/time/DayOfWeek;

    move-result-object v8

    iput-object v8, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->dayOfWeek:Ljava/time/DayOfWeek;

    .line 836
    move-object v7, v2

    const/4 v8, 0x0

    iput-boolean v8, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;->adjustForwards:Z

    .line 837
    move-object v7, v3

    move v8, v4

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    goto :goto_1
.end method

.method private parseOffset(Ljava/lang/String;)Ljava/time/ZoneOffset;
    .locals 5

    .prologue
    .line 920
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseSecs(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 921
    .local v2, "secs":I
    move v3, v2

    invoke-static {v3}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    return-object v0
.end method

.method private parseOptional(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 893
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    return-object v0

    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private parsePeriod(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 925
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseSecs(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    return v0
.end method

.method private parseRuleLine(Ljava/util/StringTokenizer;)V
    .locals 9

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "st":Ljava/util/StringTokenizer;
    new-instance v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;-><init>(Ljava/time/bp/zone/TzdbZoneRulesCompiler;)V

    move-object v2, v4

    .line 762
    .local v2, "rule":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 763
    .local v3, "name":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->rules:Ljava/util/Map;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 764
    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->rules:Ljava/util/Map;

    move-object v5, v3

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 766
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->rules:Ljava/util/Map;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 767
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseYear(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->startYear:I

    .line 768
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->startYear:I

    invoke-direct {v5, v6, v7}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseYear(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->endYear:I

    .line 769
    move-object v4, v2

    iget v4, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->startYear:I

    move-object v5, v2

    iget v5, v5, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->endYear:I

    if-le v4, v5, :cond_1

    .line 770
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Year order invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->startYear:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    iget v7, v7, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->endYear:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 772
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseOptional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 773
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseMonthDayTime(Ljava/util/StringTokenizer;Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;)V

    .line 774
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parsePeriod(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->savingsAmount:I

    .line 775
    move-object v4, v2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseOptional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBRule;->text:Ljava/lang/String;

    .line 776
    return-void
.end method

.method private parseSecs(Ljava/lang/String;)I
    .locals 17

    .prologue
    .line 897
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object/from16 v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v10, v1

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 898
    const/4 v10, 0x0

    move v0, v10

    .line 916
    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :goto_0
    return v0

    .line 900
    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :cond_0
    const/4 v10, 0x0

    move v2, v10

    .line 901
    .local v2, "pos":I
    move-object v10, v1

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 902
    const/4 v10, 0x1

    move v2, v10

    .line 904
    :cond_1
    new-instance v10, Ljava/text/ParsePosition;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move v12, v2

    invoke-direct {v11, v12}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v3, v10

    .line 905
    .local v3, "pp":Ljava/text/ParsePosition;
    sget-object v10, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->TIME_PARSER:Ljava/time/format/DateTimeFormatter;

    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Ljava/time/format/DateTimeFormatter;->parseUnresolved(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v10

    move-object v4, v10

    .line 906
    .local v4, "parsed":Ljava/time/temporal/TemporalAccessor;
    move-object v10, v4

    if-eqz v10, :cond_2

    move-object v10, v3

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    if-ltz v10, :cond_3

    .line 907
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v1

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 909
    :cond_3
    move-object v10, v4

    sget-object v11, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    move-wide v5, v10

    .line 910
    .local v5, "hour":J
    move-object v10, v4

    sget-object v11, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v4

    sget-object v11, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_1
    move-object v7, v10

    .line 911
    .local v7, "min":Ljava/lang/Long;
    move-object v10, v4

    sget-object v11, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, v4

    sget-object v11, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_2
    move-object v8, v10

    .line 912
    .local v8, "sec":Ljava/lang/Long;
    move-wide v10, v5

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    move-object v12, v7

    if-eqz v12, :cond_7

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_3
    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    move-object v12, v8

    if-eqz v12, :cond_8

    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_4
    add-long/2addr v10, v12

    long-to-int v10, v10

    move v9, v10

    .line 913
    .local v9, "secs":I
    move v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 914
    move v10, v9

    neg-int v10, v10

    move v9, v10

    .line 916
    :cond_4
    move v10, v9

    move v0, v10

    goto/16 :goto_0

    .line 910
    .end local v7    # "min":Ljava/lang/Long;
    .end local v8    # "sec":Ljava/lang/Long;
    .end local v9    # "secs":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 911
    .restart local v7    # "min":Ljava/lang/Long;
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 912
    .restart local v8    # "sec":Ljava/lang/Long;
    :cond_7
    const-wide/16 v12, 0x0

    goto :goto_3

    :cond_8
    const-wide/16 v12, 0x0

    goto :goto_4
.end method

.method private parseTimeDefinition(C)Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 3

    .prologue
    .line 929
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move v1, p1

    .local v1, "c":C
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 946
    sget-object v2, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :goto_0
    return-object v0

    .line 933
    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :sswitch_0
    sget-object v2, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v0, v2

    goto :goto_0

    .line 941
    :sswitch_1
    sget-object v2, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v0, v2

    goto :goto_0

    .line 929
    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_1
        0x53 -> :sswitch_0
        0x55 -> :sswitch_1
        0x5a -> :sswitch_1
        0x67 -> :sswitch_1
        0x73 -> :sswitch_0
        0x75 -> :sswitch_1
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method private parseYear(Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 857
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move v2, p2

    .local v2, "defaultYear":I
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 858
    move-object v3, v0

    move-object v4, v1

    const-string v5, "minimum"

    invoke-direct {v3, v4, v5}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 859
    const v3, -0x3b9ac9ff

    move v0, v3

    .line 865
    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :goto_0
    return v0

    .line 860
    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    const-string v5, "maximum"

    invoke-direct {v3, v4, v5}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    const v3, 0x3b9ac9ff

    move v0, v3

    goto :goto_0

    .line 862
    :cond_1
    move-object v3, v1

    const-string v4, "only"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 863
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 865
    :cond_2
    move-object v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method private parseZoneLine(Ljava/util/StringTokenizer;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/StringTokenizer;",
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 785
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "st":Ljava/util/StringTokenizer;
    move-object v2, p2

    .local v2, "zoneList":Ljava/util/List;, "Ljava/util/List<Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;>;"
    new-instance v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;-><init>(Ljava/time/bp/zone/TzdbZoneRulesCompiler;)V

    move-object v3, v6

    .line 786
    .local v3, "zone":Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;
    move-object v6, v2

    move-object v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 787
    move-object v6, v3

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseOffset(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object v7

    iput-object v7, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->standardOffset:Ljava/time/ZoneOffset;

    .line 788
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseOptional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 789
    .local v4, "savingsRule":Ljava/lang/String;
    move-object v6, v4

    if-nez v6, :cond_1

    .line 790
    move-object v6, v3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->fixedSavingsSecs:Ljava/lang/Integer;

    .line 791
    move-object v6, v3

    const/4 v7, 0x0

    iput-object v7, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->savingsRule:Ljava/lang/String;

    .line 801
    :goto_0
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->text:Ljava/lang/String;

    .line 802
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 803
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v7

    iput-object v7, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->year:Ljava/time/Year;

    .line 804
    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 805
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseMonthDayTime(Ljava/util/StringTokenizer;Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBMonthDayTime;)V

    .line 807
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 809
    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :goto_1
    return v0

    .line 794
    .restart local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    :cond_1
    move-object v6, v3

    move-object v7, v0

    move-object v8, v4

    :try_start_0
    invoke-direct {v7, v8}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parsePeriod(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->fixedSavingsSecs:Ljava/lang/Integer;

    .line 795
    move-object v6, v3

    const/4 v7, 0x0

    iput-object v7, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->savingsRule:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    goto :goto_0

    .line 796
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 797
    .local v5, "ex":Ljava/lang/Exception;
    move-object v6, v3

    const/4 v7, 0x0

    iput-object v7, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->fixedSavingsSecs:Ljava/lang/Integer;

    .line 798
    move-object v6, v3

    move-object v7, v4

    iput-object v7, v6, Ljava/time/bp/zone/TzdbZoneRulesCompiler$TZDBZone;->savingsRule:Ljava/lang/String;

    goto :goto_0

    .line 809
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1
.end method

.method private printVerbose(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1018
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    iget-boolean v2, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->verbose:Z

    if-eqz v2, :cond_0

    .line 1019
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1021
    :cond_0
    return-void
.end method

.method private static process(Ljava/util/List;Ljava/util/List;Ljava/io/File;ZZ)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 235
    move-object/from16 v0, p0

    .local v0, "srcDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v1, p1

    .local v1, "srcFileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p2

    .local v2, "dstDir":Ljava/io/File;
    move/from16 v3, p3

    .local v3, "unpacked":Z
    move/from16 v4, p4

    .local v4, "verbose":Z
    new-instance v19, Ljava/util/HashMap;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v5, v19

    .line 236
    .local v5, "deduplicateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v19, Ljava/util/TreeMap;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v6, v19

    .line 237
    .local v6, "allBuiltZones":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/SortedMap<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;>;"
    new-instance v19, Ljava/util/TreeSet;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v7, v19

    .line 238
    .local v7, "allRegionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/HashSet;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v8, v19

    .line 239
    .local v8, "allRules":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/bp/zone/ZoneRules;>;"
    const/16 v19, 0x0

    move-object/from16 v9, v19

    .line 241
    .local v9, "bestLeapSeconds":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/time/LocalDate;Ljava/lang/Byte;>;"
    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v10, v19

    :goto_0
    move-object/from16 v19, v10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v19, v10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    move-object/from16 v11, v19

    .line 243
    .local v11, "srcDir":Ljava/io/File;
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v19

    .line 244
    .local v12, "srcFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v19, v1

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v13, v19

    :goto_1
    move-object/from16 v19, v13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v19, v13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v14, v19

    .line 245
    .local v14, "srcFileName":Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v11

    move-object/from16 v22, v14

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v15, v19

    .line 246
    .local v15, "file":Ljava/io/File;
    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 247
    move-object/from16 v19, v12

    move-object/from16 v20, v15

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 249
    :cond_0
    goto :goto_1

    .line 250
    .end local v14    # "srcFileName":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    :cond_1
    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 251
    goto :goto_0

    .line 253
    :cond_2
    new-instance v19, Ljava/io/File;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v11

    const-string v22, "leapseconds"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v13, v19

    .line 254
    .local v13, "leapSecondsFile":Ljava/io/File;
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    .line 255
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " does not include leap seconds information."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    const/16 v19, 0x0

    move-object/from16 v13, v19

    .line 260
    :cond_3
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, v19

    .line 261
    .local v14, "loopVersion":Ljava/lang/String;
    new-instance v19, Ljava/time/bp/zone/TzdbZoneRulesCompiler;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v14

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v24, v4

    invoke-direct/range {v20 .. v24}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Z)V

    move-object/from16 v15, v19

    .line 262
    .local v15, "compiler":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object/from16 v19, v15

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->setDeduplicateMap(Ljava/util/Map;)V

    .line 265
    move-object/from16 v19, v15

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->compile()V

    .line 266
    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->getZones()Ljava/util/SortedMap;

    move-result-object v19

    move-object/from16 v16, v19

    .line 267
    .local v16, "builtZones":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;"
    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->getLeapSeconds()Ljava/util/SortedMap;

    move-result-object v19

    move-object/from16 v17, v19

    .line 270
    .local v17, "parsedLeapSeconds":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/time/LocalDate;Ljava/lang/Byte;>;"
    move/from16 v19, v3

    if-nez v19, :cond_5

    .line 271
    new-instance v19, Ljava/io/File;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v25, v22

    move-object/from16 v22, v25

    move-object/from16 v23, v25

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "threeten-TZDB-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v14

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".jar"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v18, v19

    .line 272
    .local v18, "dstFile":Ljava/io/File;
    move/from16 v19, v4

    if-eqz v19, :cond_4

    .line 273
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Outputting file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v18

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 275
    :cond_4
    move-object/from16 v19, v18

    move-object/from16 v20, v14

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    invoke-static/range {v19 .. v22}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputFile(Ljava/io/File;Ljava/lang/String;Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    .line 279
    .end local v18    # "dstFile":Ljava/io/File;
    :cond_5
    move-object/from16 v19, v6

    move-object/from16 v20, v14

    move-object/from16 v21, v16

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 280
    move-object/from16 v19, v7

    move-object/from16 v20, v16

    invoke-interface/range {v20 .. v20}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v19

    .line 281
    move-object/from16 v19, v8

    move-object/from16 v20, v16

    invoke-interface/range {v20 .. v20}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v19

    .line 284
    move-object/from16 v19, v15

    invoke-direct/range {v19 .. v19}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->getMostRecentLeapSecond()Ljava/time/LocalDate;

    move-result-object v19

    if-eqz v19, :cond_7

    .line 286
    move-object/from16 v19, v9

    if-eqz v19, :cond_6

    move-object/from16 v19, v15

    invoke-direct/range {v19 .. v19}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->getMostRecentLeapSecond()Ljava/time/LocalDate;

    move-result-object v19

    move-object/from16 v20, v9

    invoke-interface/range {v20 .. v20}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual/range {v19 .. v20}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    if-lez v19, :cond_7

    .line 288
    :cond_6
    move-object/from16 v19, v17

    move-object/from16 v9, v19

    .line 295
    .line 296
    .end local v16    # "builtZones":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/time/bp/zone/ZoneRules;>;"
    .end local v17    # "parsedLeapSeconds":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/time/LocalDate;Ljava/lang/Byte;>;"
    :cond_7
    :goto_2
    goto/16 :goto_0

    .line 291
    :catch_0
    move-exception v19

    move-object/from16 v16, v19

    .line 292
    .local v16, "ex":Ljava/lang/Exception;
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v16

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 299
    .end local v11    # "srcDir":Ljava/io/File;
    .end local v12    # "srcFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v13    # "leapSecondsFile":Ljava/io/File;
    .end local v14    # "loopVersion":Ljava/lang/String;
    .end local v15    # "compiler":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    .end local v16    # "ex":Ljava/lang/Exception;
    :cond_8
    move/from16 v19, v3

    if-eqz v19, :cond_a

    .line 300
    move/from16 v19, v4

    if-eqz v19, :cond_9

    .line 301
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Outputting combined files: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    invoke-static/range {v19 .. v23}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputFilesDat(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/SortedMap;)V

    .line 311
    :goto_3
    return-void

    .line 305
    :cond_a
    new-instance v19, Ljava/io/File;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v2

    const-string v22, "threeten-TZDB-all.jar"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v10, v19

    .line 306
    .local v10, "dstFile":Ljava/io/File;
    move/from16 v19, v4

    if-eqz v19, :cond_b

    .line 307
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Outputting combined file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    :cond_b
    move-object/from16 v19, v10

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    invoke-static/range {v19 .. v23}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->outputFile(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/SortedMap;)V

    goto :goto_3
.end method


# virtual methods
.method public compile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compiling TZDB version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 535
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseFiles()V

    .line 536
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->parseLeapSecondsFile()V

    .line 537
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->buildZoneRules()V

    .line 538
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compiled TZDB version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->printVerbose(Ljava/lang/String;)V

    .line 539
    return-void
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
    .line 1005
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1006
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    move-object v3, v1

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1008
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    return-object v0
.end method

.method public getLeapSeconds()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/time/LocalDate;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->leapSeconds:Ljava/util/SortedMap;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    return-object v0
.end method

.method public getZones()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/bp/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->builtZones:Ljava/util/SortedMap;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    return-object v0
.end method

.method setDeduplicateMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/TzdbZoneRulesCompiler;
    move-object v1, p1

    .local v1, "deduplicateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/bp/zone/TzdbZoneRulesCompiler;->deduplicateMap:Ljava/util/Map;

    .line 575
    return-void
.end method
