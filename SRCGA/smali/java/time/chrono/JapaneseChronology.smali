.class public final Ljava/time/chrono/JapaneseChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "JapaneseChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERA_FULL_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_NARROW_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ERA_SHORT_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALLBACK_LANGUAGE:Ljava/lang/String; = "en"

.field public static final INSTANCE:Ljava/time/chrono/JapaneseChronology;

.field static final LOCALE:Ljava/util/Locale;

.field private static final TARGET_LANGUAGE:Ljava/lang/String; = "ja"

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 104
    new-instance v0, Ljava/util/Locale;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "ja"

    const-string v3, "JP"

    const-string v4, "JP"

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/time/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    .line 109
    new-instance v0, Ljava/time/chrono/JapaneseChronology;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/time/chrono/JapaneseChronology;-><init>()V

    sput-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/JapaneseChronology;->ERA_NARROW_NAMES:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/JapaneseChronology;->ERA_SHORT_NAMES:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/chrono/JapaneseChronology;->ERA_FULL_NAMES:Ljava/util/Map;

    .line 142
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->ERA_NARROW_NAMES:Ljava/util/Map;

    const-string v1, "en"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "Unknown"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "K"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string v5, "M"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const-string v5, "T"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const-string v5, "S"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const-string v5, "H"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->ERA_NARROW_NAMES:Ljava/util/Map;

    const-string v1, "ja"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "Unknown"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "K"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string v5, "M"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const-string v5, "T"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const-string v5, "S"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const-string v5, "H"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->ERA_SHORT_NAMES:Ljava/util/Map;

    const-string v1, "en"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "Unknown"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "K"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string v5, "M"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const-string v5, "T"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const-string v5, "S"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const-string v5, "H"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->ERA_SHORT_NAMES:Ljava/util/Map;

    const-string v1, "ja"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "Unknown"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "\u6176"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string v5, "\u660e"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const-string v5, "\u5927"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const-string v5, "\u662d"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const-string v5, "\u5e73"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->ERA_FULL_NAMES:Ljava/util/Map;

    const-string v1, "en"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "Unknown"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "Keio"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string v5, "Meiji"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const-string v5, "Taisho"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const-string v5, "Showa"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const-string v5, "Heisei"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->ERA_FULL_NAMES:Ljava/util/Map;

    const-string v1, "ja"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "Unknown"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "\u6176\u5fdc"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string v5, "\u660e\u6cbb"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const-string v5, "\u5927\u6b63"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const-string v5, "\u662d\u548c"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const-string v5, "\u5e73\u6210"

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 156
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    sget-object v1, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method private resolveEYD(Ljava/util/Map;Ljava/time/format/ResolverStyle;Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/time/chrono/JapaneseEra;",
            "I)",
            "Ljava/time/chrono/JapaneseDate;"
        }
    .end annotation

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object v2, p2

    .local v2, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v3, p3

    .local v3, "era":Ljava/time/chrono/JapaneseEra;
    move/from16 v4, p4

    .local v4, "yoe":I
    move-object v8, v2

    sget-object v9, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v8, v9, :cond_0

    .line 597
    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/LocalDate;->getYear()I

    move-result v8

    move v9, v4

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .line 598
    .local v5, "y":I
    move-object v8, v1

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v8

    move-wide v6, v8

    .line 599
    .local v6, "days":J
    move-object v8, v0

    move v9, v5

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(II)Ljava/time/chrono/JapaneseDate;

    move-result-object v8

    move-wide v9, v6

    sget-object v11, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v8

    move-object v0, v8

    .line 602
    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    .end local v5    # "y":I
    .end local v6    # "days":J
    :goto_0
    return-object v0

    .line 601
    .restart local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    :cond_0
    move-object v8, v0

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v9, v1

    sget-object v10, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v8

    move v5, v8

    .line 602
    .local v5, "doy":I
    move-object v8, v0

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual {v8, v9, v10, v11}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/JapaneseDate;

    move-result-object v8

    move-object v0, v8

    goto :goto_0
.end method

.method private resolveEYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/time/chrono/JapaneseEra;",
            "I)",
            "Ljava/time/chrono/JapaneseDate;"
        }
    .end annotation

    .prologue
    .line 564
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object/from16 v1, p1

    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v2, p2

    .local v2, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object/from16 v3, p3

    .local v3, "era":Ljava/time/chrono/JapaneseEra;
    move/from16 v4, p4

    .local v4, "yoe":I
    move-object v10, v2

    sget-object v11, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v10, v11, :cond_0

    .line 565
    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/LocalDate;->getYear()I

    move-result v10

    move v11, v4

    add-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v5, v10

    .line 566
    .local v5, "y":I
    move-object v10, v1

    sget-object v11, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    invoke-static {v10, v11, v12, v13}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    move-wide v6, v10

    .line 567
    .local v6, "months":J
    move-object v10, v1

    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    invoke-static {v10, v11, v12, v13}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v10

    move-wide v8, v10

    .line 568
    .local v8, "days":J
    move-object v10, v0

    move v11, v5

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v10

    move-wide v11, v6

    sget-object v13, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v10, v11, v12, v13}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v10

    move-wide v11, v8

    sget-object v13, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v10, v11, v12, v13}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v10

    move-object v0, v10

    .line 592
    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    .end local v5    # "y":I
    .end local v6    # "months":J
    .end local v8    # "days":J
    :goto_0
    return-object v0

    .line 570
    .restart local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    :cond_0
    move-object v10, v0

    sget-object v11, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v10

    move-object v11, v1

    sget-object v12, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11, v12, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v10

    move v5, v10

    .line 571
    .local v5, "moy":I
    move-object v10, v0

    sget-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v10

    move-object v11, v1

    sget-object v12, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11, v12, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v10

    move v6, v10

    .line 572
    .local v6, "dom":I
    move-object v10, v2

    sget-object v11, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v10, v11, :cond_5

    .line 573
    move v10, v4

    const/4 v11, 0x1

    if-ge v10, v11, :cond_1

    .line 574
    new-instance v10, Ljava/time/DateTimeException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid YearOfEra: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 576
    :cond_1
    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/LocalDate;->getYear()I

    move-result v10

    move v11, v4

    add-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v7, v10

    .line 577
    .local v7, "y":I
    move v10, v6

    const/16 v11, 0x1c

    if-le v10, v11, :cond_2

    .line 578
    move v10, v6

    move-object v11, v0

    move v12, v7

    move v13, v5

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v11

    invoke-virtual {v11}, Ljava/time/chrono/JapaneseDate;->lengthOfMonth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v6, v10

    .line 580
    :cond_2
    move-object v10, v0

    move v11, v7

    move v12, v5

    move v13, v6

    invoke-virtual {v10, v11, v12, v13}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v10

    move-object v8, v10

    .line 581
    .local v8, "jd":Ljava/time/chrono/JapaneseDate;
    move-object v10, v8

    invoke-virtual {v10}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v10

    move-object v11, v3

    if-eq v10, v11, :cond_4

    .line 583
    move-object v10, v8

    invoke-virtual {v10}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v10

    move-object v11, v3

    invoke-virtual {v11}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 584
    new-instance v10, Ljava/time/DateTimeException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid Era/YearOfEra: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 586
    :cond_3
    move-object v10, v8

    sget-object v11, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    move v10, v4

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 587
    new-instance v10, Ljava/time/DateTimeException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid Era/YearOfEra: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 590
    :cond_4
    move-object v10, v8

    move-object v0, v10

    goto/16 :goto_0

    .line 592
    .end local v7    # "y":I
    .end local v8    # "jd":Ljava/time/chrono/JapaneseDate;
    :cond_5
    move-object v10, v0

    move-object v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-virtual {v10, v11, v12, v13, v14}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/JapaneseDate;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic date(III)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/chrono/Era;III)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 10

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/JapaneseDate;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public date(III)Ljava/time/chrono/JapaneseDate;
    .locals 10

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move v1, p1

    .local v1, "prolepticYear":I
    move v2, p2

    .local v2, "month":I
    move v3, p3

    .local v3, "dayOfMonth":I
    new-instance v4, Ljava/time/chrono/JapaneseDate;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public date(Ljava/time/chrono/Era;III)Ljava/time/chrono/JapaneseDate;
    .locals 10

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move v3, p3

    .local v3, "month":I
    move v4, p4

    .local v4, "dayOfMonth":I
    move-object v5, v1

    instance-of v5, v5, Ljava/time/chrono/JapaneseEra;

    if-nez v5, :cond_0

    .line 203
    new-instance v5, Ljava/lang/ClassCastException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Era must be JapaneseEra"

    invoke-direct {v6, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :cond_0
    move-object v5, v1

    check-cast v5, Ljava/time/chrono/JapaneseEra;

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-static {v5, v6, v7, v8}, Ljava/time/chrono/JapaneseDate;->of(Ljava/time/chrono/JapaneseEra;III)Ljava/time/chrono/JapaneseDate;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;
    .locals 6

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/chrono/JapaneseDate;

    if-eqz v2, :cond_0

    .line 271
    move-object v2, v1

    check-cast v2, Ljava/time/chrono/JapaneseDate;

    move-object v0, v2

    .line 273
    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    :cond_0
    new-instance v2, Ljava/time/chrono/JapaneseDate;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-static {v4}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic dateEpochDay(J)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/JapaneseChronology;->dateEpochDay(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public dateEpochDay(J)Ljava/time/chrono/JapaneseDate;
    .locals 9

    .prologue
    .line 264
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseChronology;
    move-wide v2, p1

    .local v2, "epochDay":J
    new-instance v4, Ljava/time/chrono/JapaneseDate;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v1
.end method

.method public bridge synthetic dateNow()Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseChronology;->dateNow()Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public dateNow()Ljava/time/chrono/JapaneseDate;
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, v0

    invoke-super {v1}, Ljava/time/chrono/AbstractChronology;->dateNow()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v1

    check-cast v1, Ljava/time/chrono/JapaneseDate;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    .local v1, "clock":Ljava/time/Clock;
    move-object v2, v1

    const-string v3, "clock"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 308
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/JapaneseDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/JapaneseDate;
    .locals 4

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/JapaneseDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(II)Ljava/time/chrono/JapaneseDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public bridge synthetic dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public dateYearDay(II)Ljava/time/chrono/JapaneseDate;
    .locals 8

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move v1, p1

    .local v1, "prolepticYear":I
    move v2, p2

    .local v2, "dayOfYear":I
    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v4

    move-object v3, v4

    .line 259
    .local v3, "date":Ljava/time/LocalDate;
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v6

    move-object v7, v3

    invoke-virtual {v7}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/JapaneseDate;
    .locals 8

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move v3, p3

    .local v3, "dayOfYear":I
    move-object v4, v1

    instance-of v4, v4, Ljava/time/chrono/JapaneseEra;

    if-nez v4, :cond_0

    .line 238
    new-instance v4, Ljava/lang/ClassCastException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Era must be JapaneseEra"

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 240
    :cond_0
    move-object v4, v1

    check-cast v4, Ljava/time/chrono/JapaneseEra;

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Ljava/time/chrono/JapaneseDate;->ofYearDay(Ljava/time/chrono/JapaneseEra;II)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljava/time/chrono/Era;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseChronology;->eraOf(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public eraOf(I)Ljava/time/chrono/JapaneseEra;
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move v1, p1

    .local v1, "eraValue":I
    move v2, v1

    invoke-static {v2}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public eras()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    const-string v1, "japanese"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    const-string v1, "Japanese"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 7

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-wide v1, p1

    .local v1, "prolepticYear":J
    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return v0
.end method

.method public localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<",
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public prolepticYear(Ljava/time/chrono/Era;I)I
    .locals 11

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move-object v6, v1

    instance-of v6, v6, Ljava/time/chrono/JapaneseEra;

    if-nez v6, :cond_0

    .line 330
    new-instance v6, Ljava/lang/ClassCastException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Era must be JapaneseEra"

    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 332
    :cond_0
    move-object v6, v1

    check-cast v6, Ljava/time/chrono/JapaneseEra;

    move-object v3, v6

    .line 333
    .local v3, "jera":Ljava/time/chrono/JapaneseEra;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalDate;->getYear()I

    move-result v6

    move v7, v2

    add-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 334
    .local v4, "isoYear":I
    const-wide/16 v6, 0x1

    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/chrono/JapaneseEra;->endDate()Ljava/time/LocalDate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/LocalDate;->getYear()I

    move-result v8

    move-object v9, v3

    invoke-virtual {v9}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/LocalDate;->getYear()I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-object v5, v6

    .line 335
    .local v5, "range":Ljava/time/temporal/ValueRange;
    move-object v6, v5

    move v7, v2

    int-to-long v7, v7

    sget-object v9, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v6

    .line 336
    move v6, v4

    move v0, v6

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return v0
.end method

.method public range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .locals 17

    .prologue
    .line 363
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object/from16 v1, p1

    .local v1, "field":Ljava/time/temporal/ChronoField;
    sget-object v8, Ljava/time/chrono/JapaneseChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 384
    sget-object v8, Ljava/time/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v8

    move-object v2, v8

    .line 385
    .local v2, "jcal":Ljava/util/Calendar;
    sget-object v8, Ljava/time/chrono/JapaneseChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v9, v1

    invoke-virtual {v9}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 417
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unimplementable field: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 382
    .end local v2    # "jcal":Ljava/util/Calendar;
    :pswitch_0
    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v0, v8

    .line 413
    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    :goto_0
    return-object v0

    .line 387
    .restart local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    .restart local v2    # "jcal":Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v8

    move-object v3, v8

    .line 388
    .local v3, "eras":[Ljava/time/chrono/JapaneseEra;
    move-object v8, v3

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v8

    int-to-long v8, v8

    move-object v10, v3

    move-object v11, v3

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 391
    .end local v3    # "eras":[Ljava/time/chrono/JapaneseEra;
    :pswitch_2
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v8

    move-object v3, v8

    .line 392
    .restart local v3    # "eras":[Ljava/time/chrono/JapaneseEra;
    sget-object v8, Ljava/time/chrono/JapaneseDate;->MIN_DATE:Ljava/time/LocalDate;

    invoke-virtual {v8}, Ljava/time/LocalDate;->getYear()I

    move-result v8

    int-to-long v8, v8

    move-object v10, v3

    move-object v11, v3

    array-length v11, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/time/chrono/JapaneseEra;->endDate()Ljava/time/LocalDate;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/LocalDate;->getYear()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 395
    .end local v3    # "eras":[Ljava/time/chrono/JapaneseEra;
    :pswitch_3
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v8

    move-object v3, v8

    .line 396
    .restart local v3    # "eras":[Ljava/time/chrono/JapaneseEra;
    move-object v8, v3

    move-object v9, v3

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/time/chrono/JapaneseEra;->endDate()Ljava/time/LocalDate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/LocalDate;->getYear()I

    move-result v8

    move v4, v8

    .line 397
    .local v4, "maxIso":I
    move v8, v4

    move-object v9, v3

    move-object v10, v3

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/LocalDate;->getYear()I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 398
    .local v5, "maxJapanese":I
    const v8, 0x7fffffff

    move v6, v8

    .line 399
    .local v6, "min":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move-object v9, v3

    array-length v9, v9

    if-ge v8, v9, :cond_0

    .line 400
    move v8, v6

    move-object v9, v3

    move v10, v7

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/time/chrono/JapaneseEra;->endDate()Ljava/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/LocalDate;->getYear()I

    move-result v9

    move-object v10, v3

    move v11, v7

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/LocalDate;->getYear()I

    move-result v10

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v6, v8

    .line 399
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 402
    :cond_0
    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x6

    move v12, v6

    int-to-long v12, v12

    move v14, v5

    int-to-long v14, v14

    invoke-static/range {v8 .. v15}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 405
    .end local v3    # "eras":[Ljava/time/chrono/JapaneseEra;
    .end local v4    # "maxIso":I
    .end local v5    # "maxJapanese":I
    .end local v6    # "min":I
    .end local v7    # "i":I
    :pswitch_4
    move-object v8, v2

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    move-object v10, v2

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    move-object v12, v2

    const/4 v13, 0x2

    .line 406
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    int-to-long v12, v12

    move-object v14, v2

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    int-to-long v14, v14

    .line 405
    invoke-static/range {v8 .. v15}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 408
    :pswitch_5
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v8

    move-object v3, v8

    .line 409
    .restart local v3    # "eras":[Ljava/time/chrono/JapaneseEra;
    const/16 v8, 0x16e

    move v4, v8

    .line 410
    .local v4, "min":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_2
    move v8, v5

    move-object v9, v3

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 411
    move v8, v4

    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/LocalDate;->lengthOfYear()I

    move-result v9

    move-object v10, v3

    move v11, v5

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v10

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v4, v8

    .line 410
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 413
    :cond_1
    const-wide/16 v8, 0x1

    move v10, v4

    int-to-long v10, v10

    const-wide/16 v12, 0x16e

    invoke-static/range {v8 .. v13}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 385
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/JapaneseChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/JapaneseDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/JapaneseDate;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/JapaneseDate;"
        }
    .end annotation

    .prologue
    .line 423
    move-object/from16 v2, p0

    .local v2, "this":Ljava/time/chrono/JapaneseChronology;
    move-object/from16 v3, p1

    .local v3, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v4, p2

    .local v4, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 424
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/chrono/JapaneseChronology;->dateEpochDay(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v2, v16

    .line 560
    .end local v2    # "this":Ljava/time/chrono/JapaneseChronology;
    :goto_0
    return-object v2

    .line 428
    .restart local v2    # "this":Ljava/time/chrono/JapaneseChronology;
    :cond_0
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    move-object/from16 v5, v16

    .line 429
    .local v5, "prolepticMonth":Ljava/lang/Long;
    move-object/from16 v16, v5

    if-eqz v16, :cond_2

    .line 430
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 431
    sget-object v16, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v16

    .line 433
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/16 v21, 0xc

    invoke-static/range {v19 .. v21}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v16 .. v20}, Ljava/time/chrono/JapaneseChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 434
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0xc

    invoke-static/range {v19 .. v22}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v19

    invoke-virtual/range {v16 .. v20}, Ljava/time/chrono/JapaneseChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 438
    :cond_2
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    move-object/from16 v6, v16

    .line 439
    .local v6, "eraLong":Ljava/lang/Long;
    const/16 v16, 0x0

    move-object/from16 v7, v16

    .line 440
    .local v7, "era":Ljava/time/chrono/JapaneseEra;
    move-object/from16 v16, v6

    if-eqz v16, :cond_3

    .line 441
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    sget-object v18, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v17 .. v18}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v17

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sget-object v20, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v17 .. v20}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/time/chrono/JapaneseChronology;->eraOf(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v16

    move-object/from16 v7, v16

    .line 443
    :cond_3
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    move-object/from16 v8, v16

    .line 444
    .local v8, "yoeLong":Ljava/lang/Long;
    move-object/from16 v16, v8

    if-eqz v16, :cond_6

    .line 445
    move-object/from16 v16, v2

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v16 .. v17}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v16

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sget-object v19, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v16 .. v19}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v16

    move/from16 v9, v16

    .line 446
    .local v9, "yoe":I
    move-object/from16 v16, v7

    if-nez v16, :cond_4

    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 447
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljava/time/chrono/JapaneseChronology;->eras()Ljava/util/List;

    move-result-object v16

    move-object/from16 v10, v16

    .line 448
    .local v10, "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    move-object/from16 v16, v10

    move-object/from16 v17, v10

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/time/chrono/JapaneseEra;

    move-object/from16 v7, v16

    .line 451
    .end local v10    # "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    :cond_4
    move-object/from16 v16, v7

    if-eqz v16, :cond_5

    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 452
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 453
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 454
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move/from16 v20, v9

    invoke-direct/range {v16 .. v20}, Ljava/time/chrono/JapaneseChronology;->resolveEYMD(Ljava/util/Map;Ljava/time/format/ResolverStyle;Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 456
    :cond_5
    move-object/from16 v16, v7

    if-eqz v16, :cond_6

    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 457
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 458
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 459
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move/from16 v20, v9

    invoke-direct/range {v16 .. v20}, Ljava/time/chrono/JapaneseChronology;->resolveEYD(Ljava/util/Map;Ljava/time/format/ResolverStyle;Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 464
    .end local v9    # "yoe":I
    :cond_6
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 465
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 466
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 467
    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v9, v16

    .line 468
    .local v9, "y":I
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 469
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 470
    .local v10, "months":J
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 471
    .local v12, "days":J
    move-object/from16 v16, v2

    move/from16 v17, v9

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v18}, Ljava/time/chrono/JapaneseDate;->plusMonths(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v12

    invoke-virtual/range {v16 .. v18}, Ljava/time/chrono/JapaneseDate;->plusDays(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 473
    .end local v10    # "months":J
    .end local v12    # "days":J
    :cond_7
    move-object/from16 v16, v2

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v16 .. v17}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v16

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sget-object v19, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v16 .. v19}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v16

    move/from16 v10, v16

    .line 474
    .local v10, "moy":I
    move-object/from16 v16, v2

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v16 .. v17}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v16

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sget-object v19, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v16 .. v19}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v16

    move/from16 v11, v16

    .line 475
    .local v11, "dom":I
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    move/from16 v16, v11

    const/16 v17, 0x1c

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 476
    move/from16 v16, v11

    move-object/from16 v17, v2

    move/from16 v18, v9

    move/from16 v19, v10

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/time/chrono/JapaneseDate;->lengthOfMonth()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v11, v16

    .line 478
    :cond_8
    move-object/from16 v16, v2

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 481
    .end local v9    # "y":I
    .end local v10    # "moy":I
    .end local v11    # "dom":I
    :cond_9
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 482
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 483
    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v9, v16

    .line 484
    .restart local v9    # "y":I
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 485
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 486
    .local v10, "months":J
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 487
    .local v12, "weeks":J
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 488
    .local v14, "days":J
    move-object/from16 v16, v2

    move/from16 v17, v9

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v10

    sget-object v19, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v12

    sget-object v19, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v14

    sget-object v19, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 490
    .end local v10    # "months":J
    .end local v12    # "weeks":J
    .end local v14    # "days":J
    :cond_a
    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v10, v16

    .line 491
    .local v10, "moy":I
    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v11, v16

    .line 492
    .local v11, "aw":I
    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v12, v16

    .line 493
    .local v12, "ad":I
    move-object/from16 v16, v2

    move/from16 v17, v9

    move/from16 v18, v10

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move/from16 v17, v11

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x7

    mul-int/lit8 v17, v17, 0x7

    move/from16 v18, v12

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sget-object v19, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v13, v16

    .line 494
    .local v13, "date":Ljava/time/chrono/JapaneseDate;
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    move-object/from16 v16, v13

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v16 .. v17}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v16

    move/from16 v17, v10

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    .line 495
    new-instance v16, Ljava/time/DateTimeException;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v17 .. v18}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 497
    :cond_b
    move-object/from16 v16, v13

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 499
    .end local v9    # "y":I
    .end local v10    # "moy":I
    .end local v11    # "aw":I
    .end local v12    # "ad":I
    .end local v13    # "date":Ljava/time/chrono/JapaneseDate;
    :cond_c
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 500
    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v9, v16

    .line 501
    .restart local v9    # "y":I
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 502
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 503
    .local v10, "months":J
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 504
    .local v12, "weeks":J
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 505
    .restart local v14    # "days":J
    move-object/from16 v16, v2

    move/from16 v17, v9

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v10

    sget-object v19, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v12

    sget-object v19, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v14

    sget-object v19, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 507
    .end local v10    # "months":J
    .end local v12    # "weeks":J
    .end local v14    # "days":J
    :cond_d
    sget-object v16, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v10, v16

    .line 508
    .local v10, "moy":I
    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v11, v16

    .line 509
    .restart local v11    # "aw":I
    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v12, v16

    .line 510
    .local v12, "dow":I
    move-object/from16 v16, v2

    move/from16 v17, v9

    move/from16 v18, v10

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move/from16 v17, v11

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sget-object v19, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move/from16 v17, v12

    invoke-static/range {v17 .. v17}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v13, v16

    .line 511
    .restart local v13    # "date":Ljava/time/chrono/JapaneseDate;
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e

    move-object/from16 v16, v13

    sget-object v17, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v16 .. v17}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v16

    move/from16 v17, v10

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_e

    .line 512
    new-instance v16, Ljava/time/DateTimeException;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v17 .. v18}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 514
    :cond_e
    move-object/from16 v16, v13

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 518
    .end local v9    # "y":I
    .end local v10    # "moy":I
    .end local v11    # "aw":I
    .end local v12    # "dow":I
    .end local v13    # "date":Ljava/time/chrono/JapaneseDate;
    :cond_f
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 519
    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v9, v16

    .line 520
    .restart local v9    # "y":I
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 521
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 522
    .local v10, "days":J
    move-object/from16 v16, v2

    move/from16 v17, v9

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(II)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v18}, Ljava/time/chrono/JapaneseDate;->plusDays(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 524
    .end local v10    # "days":J
    :cond_10
    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v10, v16

    .line 525
    .local v10, "doy":I
    move-object/from16 v16, v2

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v16 .. v18}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(II)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 527
    .end local v9    # "y":I
    .end local v10    # "doy":I
    :cond_11
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 528
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 529
    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v9, v16

    .line 530
    .restart local v9    # "y":I
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 531
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 532
    .local v10, "weeks":J
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 533
    .local v12, "days":J
    move-object/from16 v16, v2

    move/from16 v17, v9

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v10

    sget-object v19, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v12

    sget-object v19, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 535
    .end local v10    # "weeks":J
    .end local v12    # "days":J
    :cond_12
    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v10, v16

    .line 536
    .local v10, "aw":I
    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v11, v16

    .line 537
    .local v11, "ad":I
    move-object/from16 v16, v2

    move/from16 v17, v9

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move/from16 v17, v10

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x7

    mul-int/lit8 v17, v17, 0x7

    move/from16 v18, v11

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/time/chrono/JapaneseDate;->plusDays(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v12, v16

    .line 538
    .local v12, "date":Ljava/time/chrono/JapaneseDate;
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_13

    move-object/from16 v16, v12

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v16 .. v17}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v16

    move/from16 v17, v9

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_13

    .line 539
    new-instance v16, Ljava/time/DateTimeException;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "Strict mode rejected date parsed to a different year"

    invoke-direct/range {v17 .. v18}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 541
    :cond_13
    move-object/from16 v16, v12

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 543
    .end local v9    # "y":I
    .end local v10    # "aw":I
    .end local v11    # "ad":I
    .end local v12    # "date":Ljava/time/chrono/JapaneseDate;
    :cond_14
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 544
    sget-object v16, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v9, v16

    .line 545
    .restart local v9    # "y":I
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 546
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 547
    .local v10, "weeks":J
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 548
    .local v12, "days":J
    move-object/from16 v16, v2

    move/from16 v17, v9

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v10

    sget-object v19, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-wide/from16 v17, v12

    sget-object v19, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 550
    .end local v10    # "weeks":J
    .end local v12    # "days":J
    :cond_15
    sget-object v16, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v10, v16

    .line 551
    .local v10, "aw":I
    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v3

    sget-object v18, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v11, v16

    .line 552
    .local v11, "dow":I
    move-object/from16 v16, v2

    move/from16 v17, v9

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move/from16 v17, v10

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sget-object v19, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v16 .. v19}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move/from16 v17, v11

    invoke-static/range {v17 .. v17}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

    move-result-object v16

    move-object/from16 v12, v16

    .line 553
    .local v12, "date":Ljava/time/chrono/JapaneseDate;
    move-object/from16 v16, v4

    sget-object v17, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_16

    move-object/from16 v16, v12

    sget-object v17, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v16 .. v17}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v16

    move/from16 v17, v9

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_16

    .line 554
    new-instance v16, Ljava/time/DateTimeException;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const-string v18, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v17 .. v18}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 556
    :cond_16
    move-object/from16 v16, v12

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 560
    .end local v9    # "y":I
    .end local v10    # "aw":I
    .end local v11    # "dow":I
    .end local v12    # "date":Ljava/time/chrono/JapaneseDate;
    :cond_17
    const/16 v16, 0x0

    move-object/from16 v2, v16

    goto/16 :goto_0
.end method

.method public zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<",
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v2, p2

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method

.method public zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<",
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseChronology;
    return-object v0
.end method
