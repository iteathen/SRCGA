.class public final Ljava/time/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;,
        Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;,
        Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;,
        Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    }
.end annotation


# static fields
.field private static final FIELD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field static final LENGTH_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private active:Ljava/time/format/DateTimeFormatterBuilder;

.field private final optional:Z

.field private padNextChar:C

.field private padNextWidth:I

.field private final parent:Ljava/time/format/DateTimeFormatterBuilder;

.field private final printerParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;"
        }
    .end annotation
.end field

.field private valueParserIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$1;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatterBuilder$1;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    .line 1687
    new-instance v0, Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    .line 1689
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1690
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1691
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1692
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1693
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1694
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1695
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1696
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1697
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1698
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1699
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1700
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1701
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1702
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1703
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1704
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1705
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1706
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1707
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1708
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1709
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1710
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1711
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1712
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3872
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$3;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatterBuilder$3;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->LENGTH_SORT:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 130
    move-object v1, v0

    move-object v2, v0

    iput-object v2, v1, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 138
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 154
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 197
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    .line 198
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 199
    return-void
.end method

.method private constructor <init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V
    .locals 7

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "parent":Ljava/time/format/DateTimeFormatterBuilder;
    move v2, p2

    .local v2, "optional":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 130
    move-object v3, v0

    move-object v4, v0

    iput-object v4, v3, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 138
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 154
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 209
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    .line 210
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 211
    return-void
.end method

.method private appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I
    .locals 8

    .prologue
    .line 1844
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move-object v2, v1

    const-string v3, "pp"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1845
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    if-lez v2, :cond_1

    .line 1846
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 1847
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v5, v5, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-char v6, v6, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    invoke-direct {v3, v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;-><init>(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V

    move-object v1, v2

    .line 1849
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v3, 0x0

    iput v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 1850
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v3, 0x0

    iput-char v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 1852
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1853
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v3, -0x1

    iput v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1854
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return v0
.end method

.method private appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 7

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    if-ltz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v5, v5, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 580
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-eqz v4, :cond_1

    .line 581
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    move v2, v4

    .line 584
    .local v2, "activeValueParser":I
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v3, v4

    .line 585
    .local v3, "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v4, v1

    iget v4, v4, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move-object v5, v1

    iget v5, v5, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v4, v5, :cond_0

    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v5, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v4, v5, :cond_0

    .line 587
    move-object v4, v3

    move-object v5, v1

    iget v5, v5, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v4

    move-object v3, v4

    .line 589
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v4

    .line 591
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    move v5, v2

    iput v5, v4, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 599
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    move v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 600
    .line 604
    .end local v2    # "activeValueParser":I
    .end local v3    # "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :goto_1
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0

    .line 594
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    .restart local v2    # "activeValueParser":I
    .restart local v3    # "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v4

    move-object v3, v4

    .line 596
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v5

    iput v5, v4, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_0

    .line 602
    .end local v2    # "activeValueParser":I
    .end local v3    # "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v5

    iput v5, v4, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_1
.end method

.method public static getLocalizedDateTimePattern(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "dateStyle":Ljava/time/format/FormatStyle;
    move-object v1, p1

    .local v1, "timeStyle":Ljava/time/format/FormatStyle;
    move-object v2, p2

    .local v2, "chrono":Ljava/time/chrono/Chronology;
    move-object v3, p3

    .local v3, "locale":Ljava/util/Locale;
    move-object v5, v3

    const-string v6, "locale"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 171
    move-object v5, v2

    const-string v6, "chrono"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 172
    move-object v5, v0

    if-nez v5, :cond_0

    move-object v5, v1

    if-nez v5, :cond_0

    .line 173
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Either dateStyle or timeStyle must be non-null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 176
    :cond_0
    move-object v5, v0

    if-eqz v5, :cond_2

    .line 177
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 178
    move-object v5, v0

    invoke-virtual {v5}, Ljava/time/format/FormatStyle;->ordinal()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/format/FormatStyle;->ordinal()I

    move-result v6

    move-object v7, v3

    invoke-static {v5, v6, v7}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v5

    move-object v4, v5

    .line 185
    .local v4, "dateFormat":Ljava/text/DateFormat;
    :goto_0
    move-object v5, v4

    instance-of v5, v5, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_3

    .line 186
    move-object v5, v4

    check-cast v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "dateStyle":Ljava/time/format/FormatStyle;
    return-object v0

    .line 180
    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    .restart local v0    # "dateStyle":Ljava/time/format/FormatStyle;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljava/time/format/FormatStyle;->ordinal()I

    move-result v5

    move-object v6, v3

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v5

    move-object v4, v5

    .restart local v4    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_0

    .line 183
    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/format/FormatStyle;->ordinal()I

    move-result v5

    move-object v6, v3

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v5

    move-object v4, v5

    .restart local v4    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_0

    .line 188
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Unable to determine pattern"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private parseField(CILjava/time/temporal/TemporalField;)V
    .locals 10

    .prologue
    .line 1523
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move v1, p1

    .local v1, "cur":C
    move v2, p2

    .local v2, "count":I
    move-object v3, p3

    .local v3, "field":Ljava/time/temporal/TemporalField;
    move v4, v1

    sparse-switch v4, :sswitch_data_0

    .line 1677
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 1678
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1684
    :goto_0
    return-void

    .line 1526
    :sswitch_0
    move v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1527
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x2

    const/4 v7, 0x2

    sget-object v8, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/AbstractChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    goto :goto_0

    .line 1528
    :cond_0
    move v4, v2

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 1529
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    const/16 v7, 0x13

    sget-object v8, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    goto :goto_0

    .line 1531
    :cond_1
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    const/16 v7, 0x13

    sget-object v8, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1533
    goto :goto_0

    .line 1536
    :sswitch_1
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 1553
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many pattern letters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1538
    :pswitch_0
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1539
    goto :goto_0

    .line 1541
    :pswitch_1
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1542
    goto :goto_0

    .line 1544
    :pswitch_2
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1545
    goto :goto_0

    .line 1547
    :pswitch_3
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1548
    goto :goto_0

    .line 1550
    :pswitch_4
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1551
    goto :goto_0

    .line 1558
    :sswitch_2
    move v4, v2

    packed-switch v4, :pswitch_data_1

    .line 1575
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many pattern letters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1560
    :pswitch_5
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1561
    goto/16 :goto_0

    .line 1563
    :pswitch_6
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1564
    goto/16 :goto_0

    .line 1566
    :pswitch_7
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1567
    goto/16 :goto_0

    .line 1569
    :pswitch_8
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1570
    goto/16 :goto_0

    .line 1572
    :pswitch_9
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1573
    goto/16 :goto_0

    .line 1579
    :sswitch_3
    move v4, v2

    packed-switch v4, :pswitch_data_2

    .line 1594
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many pattern letters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1582
    :pswitch_a
    move-object v4, v0

    new-instance v5, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/16 v7, 0x65

    move v8, v2

    invoke-direct {v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v4

    .line 1583
    goto/16 :goto_0

    .line 1585
    :pswitch_b
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1586
    goto/16 :goto_0

    .line 1588
    :pswitch_c
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1589
    goto/16 :goto_0

    .line 1591
    :pswitch_d
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1592
    goto/16 :goto_0

    .line 1598
    :sswitch_4
    move v4, v2

    packed-switch v4, :pswitch_data_3

    .line 1614
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many pattern letters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1600
    :pswitch_e
    move-object v4, v0

    new-instance v5, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/16 v7, 0x63

    move v8, v2

    invoke-direct {v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v4

    .line 1601
    goto/16 :goto_0

    .line 1603
    :pswitch_f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid number of pattern letters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1605
    :pswitch_10
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1606
    goto/16 :goto_0

    .line 1608
    :pswitch_11
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1609
    goto/16 :goto_0

    .line 1611
    :pswitch_12
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1612
    goto/16 :goto_0

    .line 1618
    :sswitch_5
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1619
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    goto/16 :goto_0

    .line 1621
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many pattern letters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1626
    :sswitch_6
    move v4, v2

    packed-switch v4, :pswitch_data_4

    .line 1639
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many pattern letters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1630
    :pswitch_13
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1631
    goto/16 :goto_0

    .line 1633
    :pswitch_14
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1634
    goto/16 :goto_0

    .line 1636
    :pswitch_15
    move-object v4, v0

    move-object v5, v3

    sget-object v6, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1637
    goto/16 :goto_0

    .line 1643
    :sswitch_7
    move-object v4, v0

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move v6, v2

    move v7, v2

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 1644
    goto/16 :goto_0

    .line 1646
    :sswitch_8
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1647
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    goto/16 :goto_0

    .line 1649
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many pattern letters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1659
    :sswitch_9
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 1660
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    goto/16 :goto_0

    .line 1661
    :cond_4
    move v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 1662
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    goto/16 :goto_0

    .line 1664
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many pattern letters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1668
    :sswitch_a
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 1669
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    goto/16 :goto_0

    .line 1670
    :cond_6
    move v4, v2

    const/4 v5, 0x3

    if-gt v4, v5, :cond_7

    .line 1671
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    goto/16 :goto_0

    .line 1673
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many pattern letters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1680
    :cond_8
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    goto/16 :goto_0

    .line 1523
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_a
        0x45 -> :sswitch_6
        0x46 -> :sswitch_8
        0x47 -> :sswitch_6
        0x48 -> :sswitch_9
        0x4b -> :sswitch_9
        0x4c -> :sswitch_2
        0x4d -> :sswitch_1
        0x51 -> :sswitch_1
        0x53 -> :sswitch_7
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x64 -> :sswitch_9
        0x65 -> :sswitch_3
        0x68 -> :sswitch_9
        0x6b -> :sswitch_9
        0x6d -> :sswitch_9
        0x71 -> :sswitch_2
        0x73 -> :sswitch_9
        0x75 -> :sswitch_0
        0x79 -> :sswitch_0
    .end sparse-switch

    .line 1536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1558
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1579
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 1598
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 1626
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private parsePattern(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 1396
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    const/4 v8, 0x0

    move v2, v8

    .local v2, "pos":I
    :goto_0
    move v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_2e

    .line 1397
    move-object v8, v1

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v3, v8

    .line 1398
    .local v3, "cur":C
    move v8, v3

    const/16 v9, 0x41

    if-lt v8, v9, :cond_0

    move v8, v3

    const/16 v9, 0x5a

    if-le v8, v9, :cond_1

    :cond_0
    move v8, v3

    const/16 v9, 0x61

    if-lt v8, v9, :cond_23

    move v8, v3

    const/16 v9, 0x7a

    if-gt v8, v9, :cond_23

    .line 1399
    :cond_1
    move v8, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v8

    .line 1400
    .local v4, "start":I
    :goto_1
    move v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    move-object v8, v1

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v3

    if-ne v8, v9, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1401
    :cond_2
    move v8, v2

    move v9, v4

    sub-int/2addr v8, v9

    move v5, v8

    .line 1403
    .local v5, "count":I
    move v8, v3

    const/16 v9, 0x70

    if-ne v8, v9, :cond_8

    .line 1404
    const/4 v8, 0x0

    move v6, v8

    .line 1405
    .local v6, "pad":I
    move v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 1406
    move-object v8, v1

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v3, v8

    .line 1407
    move v8, v3

    const/16 v9, 0x41

    if-lt v8, v9, :cond_3

    move v8, v3

    const/16 v9, 0x5a

    if-le v8, v9, :cond_4

    :cond_3
    move v8, v3

    const/16 v9, 0x61

    if-lt v8, v9, :cond_6

    move v8, v3

    const/16 v9, 0x7a

    if-gt v8, v9, :cond_6

    .line 1408
    :cond_4
    move v8, v5

    move v6, v8

    .line 1409
    move v8, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v8

    .line 1410
    :goto_2
    move v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    move-object v8, v1

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v3

    if-ne v8, v9, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1411
    :cond_5
    move v8, v2

    move v9, v4

    sub-int/2addr v8, v9

    move v5, v8

    .line 1414
    :cond_6
    move v8, v6

    if-nez v8, :cond_7

    .line 1415
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pad letter \'p\' must be followed by valid pad pattern: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1418
    :cond_7
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    .line 1421
    .end local v6    # "pad":I
    :cond_8
    sget-object v8, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    move v9, v3

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/temporal/TemporalField;

    move-object v6, v8

    .line 1422
    .local v6, "field":Ljava/time/temporal/TemporalField;
    move-object v8, v6

    if-eqz v8, :cond_9

    .line 1423
    move-object v8, v0

    move v9, v3

    move v10, v5

    move-object v11, v6

    invoke-direct {v8, v9, v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->parseField(CILjava/time/temporal/TemporalField;)V

    .line 1481
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 1396
    .end local v4    # "start":I
    .end local v5    # "count":I
    .end local v6    # "field":Ljava/time/temporal/TemporalField;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1424
    .restart local v4    # "start":I
    .restart local v5    # "count":I
    .restart local v6    # "field":Ljava/time/temporal/TemporalField;
    :cond_9
    move v8, v3

    const/16 v9, 0x7a

    if-ne v8, v9, :cond_c

    .line 1425
    move v8, v5

    const/4 v9, 0x4

    if-le v8, v9, :cond_a

    .line 1426
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1427
    :cond_a
    move v8, v5

    const/4 v9, 0x4

    if-ne v8, v9, :cond_b

    .line 1428
    move-object v8, v0

    sget-object v9, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto :goto_3

    .line 1430
    :cond_b
    move-object v8, v0

    sget-object v9, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto :goto_3

    .line 1432
    :cond_c
    move v8, v3

    const/16 v9, 0x56

    if-ne v8, v9, :cond_e

    .line 1433
    move v8, v5

    const/4 v9, 0x2

    if-eq v8, v9, :cond_d

    .line 1434
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pattern letter count must be 2: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1436
    :cond_d
    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto :goto_3

    .line 1437
    :cond_e
    move v8, v3

    const/16 v9, 0x5a

    if-ne v8, v9, :cond_12

    .line 1438
    move v8, v5

    const/4 v9, 0x4

    if-ge v8, v9, :cond_f

    .line 1439
    move-object v8, v0

    const-string v9, "+HHMM"

    const-string v10, "+0000"

    invoke-virtual {v8, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto/16 :goto_3

    .line 1440
    :cond_f
    move v8, v5

    const/4 v9, 0x4

    if-ne v8, v9, :cond_10

    .line 1441
    move-object v8, v0

    sget-object v9, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto/16 :goto_3

    .line 1442
    :cond_10
    move v8, v5

    const/4 v9, 0x5

    if-ne v8, v9, :cond_11

    .line 1443
    move-object v8, v0

    const-string v9, "+HH:MM:ss"

    const-string v10, "Z"

    invoke-virtual {v8, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto/16 :goto_3

    .line 1445
    :cond_11
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1447
    :cond_12
    move v8, v3

    const/16 v9, 0x4f

    if-ne v8, v9, :cond_15

    .line 1448
    move v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    .line 1449
    move-object v8, v0

    sget-object v9, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto/16 :goto_3

    .line 1450
    :cond_13
    move v8, v5

    const/4 v9, 0x4

    if-ne v8, v9, :cond_14

    .line 1451
    move-object v8, v0

    sget-object v9, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto/16 :goto_3

    .line 1453
    :cond_14
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pattern letter count must be 1 or 4: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1455
    :cond_15
    move v8, v3

    const/16 v9, 0x58

    if-ne v8, v9, :cond_18

    .line 1456
    move v8, v5

    const/4 v9, 0x5

    if-le v8, v9, :cond_16

    .line 1457
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1459
    :cond_16
    move-object v8, v0

    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    move v10, v5

    move v11, v5

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17

    const/4 v11, 0x0

    :goto_5
    add-int/2addr v10, v11

    aget-object v9, v9, v10

    const-string v10, "Z"

    invoke-virtual {v8, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto/16 :goto_3

    :cond_17
    const/4 v11, 0x1

    goto :goto_5

    .line 1460
    :cond_18
    move v8, v3

    const/16 v9, 0x78

    if-ne v8, v9, :cond_1d

    .line 1461
    move v8, v5

    const/4 v9, 0x5

    if-le v8, v9, :cond_19

    .line 1462
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1464
    :cond_19
    move v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    const-string v8, "+00"

    :goto_6
    move-object v7, v8

    .line 1465
    .local v7, "zero":Ljava/lang/String;
    move-object v8, v0

    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    move v10, v5

    move v11, v5

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1c

    const/4 v11, 0x0

    :goto_7
    add-int/2addr v10, v11

    aget-object v9, v9, v10

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    .line 1466
    goto/16 :goto_3

    .line 1464
    .end local v7    # "zero":Ljava/lang/String;
    :cond_1a
    move v8, v5

    const/4 v9, 0x2

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1b

    const-string v8, "+0000"

    goto :goto_6

    :cond_1b
    const-string v8, "+00:00"

    goto :goto_6

    .line 1465
    .restart local v7    # "zero":Ljava/lang/String;
    :cond_1c
    const/4 v11, 0x1

    goto :goto_7

    .line 1466
    .end local v7    # "zero":Ljava/lang/String;
    :cond_1d
    move v8, v3

    const/16 v9, 0x57

    if-ne v8, v9, :cond_1f

    .line 1467
    move v8, v5

    const/4 v9, 0x1

    if-le v8, v9, :cond_1e

    .line 1468
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1470
    :cond_1e
    move-object v8, v0

    new-instance v9, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/16 v11, 0x57

    move v12, v5

    invoke-direct {v10, v11, v12}, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    invoke-direct {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v8

    goto/16 :goto_3

    .line 1471
    :cond_1f
    move v8, v3

    const/16 v9, 0x77

    if-ne v8, v9, :cond_21

    .line 1472
    move v8, v5

    const/4 v9, 0x2

    if-le v8, v9, :cond_20

    .line 1473
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many pattern letters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1475
    :cond_20
    move-object v8, v0

    new-instance v9, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/16 v11, 0x77

    move v12, v5

    invoke-direct {v10, v11, v12}, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    invoke-direct {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v8

    goto/16 :goto_3

    .line 1476
    :cond_21
    move v8, v3

    const/16 v9, 0x59

    if-ne v8, v9, :cond_22

    .line 1477
    move-object v8, v0

    new-instance v9, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/16 v11, 0x59

    move v12, v5

    invoke-direct {v10, v11, v12}, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;-><init>(CI)V

    invoke-direct {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v8

    goto/16 :goto_3

    .line 1479
    :cond_22
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown pattern letter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1483
    .end local v4    # "start":I
    .end local v5    # "count":I
    .end local v6    # "field":Ljava/time/temporal/TemporalField;
    :cond_23
    move v8, v3

    const/16 v9, 0x27

    if-ne v8, v9, :cond_28

    .line 1485
    move v8, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v8

    .line 1486
    .restart local v4    # "start":I
    :goto_8
    move v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_25

    .line 1487
    move-object v8, v1

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_24

    .line 1488
    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_25

    move-object v8, v1

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_25

    .line 1489
    add-int/lit8 v2, v2, 0x1

    .line 1486
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1495
    :cond_25
    move v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v8, v9, :cond_26

    .line 1496
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pattern ends with an incomplete string literal: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1498
    :cond_26
    move-object v8, v1

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 1499
    .local v5, "str":Ljava/lang/String;
    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_27

    .line 1500
    move-object v8, v0

    const/16 v9, 0x27

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    .line 1505
    :goto_9
    goto/16 :goto_4

    .line 1502
    :cond_27
    move-object v8, v0

    move-object v9, v5

    const-string v10, "\'\'"

    const-string v11, "\'"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto :goto_9

    .line 1505
    .end local v4    # "start":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_28
    move v8, v3

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_29

    .line 1506
    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto/16 :goto_4

    .line 1508
    :cond_29
    move v8, v3

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_2b

    .line 1509
    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v8, v8, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-nez v8, :cond_2a

    .line 1510
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1512
    :cond_2a
    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto/16 :goto_4

    .line 1514
    :cond_2b
    move v8, v3

    const/16 v9, 0x7b

    if-eq v8, v9, :cond_2c

    move v8, v3

    const/16 v9, 0x7d

    if-eq v8, v9, :cond_2c

    move v8, v3

    const/16 v9, 0x23

    if-ne v8, v9, :cond_2d

    .line 1515
    :cond_2c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pattern includes reserved character: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1517
    :cond_2d
    move-object v8, v0

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v8

    goto/16 :goto_4

    .line 1520
    .end local v3    # "cur":C
    :cond_2e
    return-void
.end method


# virtual methods
.method public append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 5

    .prologue
    .line 1199
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1200
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v2

    .line 1201
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendChronologyId()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 6

    .prologue
    .line 1086
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    .line 1087
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendChronologyText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 7

    .prologue
    .line 1110
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "textStyle":Ljava/time/format/TextStyle;
    move-object v2, v1

    const-string v3, "textStyle"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1111
    move-object v2, v0

    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v2

    .line 1112
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 13

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move v2, p2

    .local v2, "minWidth":I
    move/from16 v3, p3

    .local v3, "maxWidth":I
    move/from16 v4, p4

    .local v4, "decimalPoint":Z
    move-object v5, v0

    new-instance v6, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIZ)V

    invoke-direct {v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v5

    .line 643
    move-object v5, v0

    move-object v0, v5

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendInstant()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 6

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    .line 778
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendInstant(I)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 7

    .prologue
    .line 817
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move v1, p1

    .local v1, "fractionalDigits":I
    move v2, v1

    const/4 v3, -0x1

    if-lt v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x9

    if-le v2, v3, :cond_1

    .line 818
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid fractional digits: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 820
    :cond_1
    move-object v2, v0

    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v2

    .line 821
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 7

    .prologue
    .line 1162
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move v1, p1

    .local v1, "literal":C
    move-object v2, v0

    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v2

    .line 1163
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 8

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "literal":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "literal"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1178
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1179
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1180
    move-object v2, v0

    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v2

    .line 1185
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0

    .line 1182
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    :cond_1
    move-object v2, v0

    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v2

    goto :goto_0
.end method

.method public appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 9

    .prologue
    .line 1145
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "dateStyle":Ljava/time/format/FormatStyle;
    move-object v2, p2

    .local v2, "timeStyle":Ljava/time/format/FormatStyle;
    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_0

    .line 1146
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Either the date or time style must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1148
    :cond_0
    move-object v3, v0

    new-instance v4, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;-><init>(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)V

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    .line 1149
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 7

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "style":Ljava/time/format/TextStyle;
    move-object v2, v1

    const-string v3, "style"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 911
    move-object v2, v1

    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    if-eq v2, v3, :cond_0

    .line 912
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Style must be either full or short"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 914
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v2

    .line 915
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 9

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object v2, p2

    .local v2, "noOffsetText":Ljava/lang/String;
    move-object v3, v0

    new-instance v4, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    .line 877
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    .line 834
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendOptional(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 5

    .prologue
    .line 1218
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1219
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v2

    .line 1220
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 4

    .prologue
    .line 1390
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "pattern"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1391
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->parsePattern(Ljava/lang/String;)V

    .line 1392
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendText(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 5

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 10

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, p2

    .local v2, "textStyle":Ljava/time/format/TextStyle;
    move-object v3, v1

    const-string v4, "field"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 683
    move-object v3, v2

    const-string v4, "textStyle"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 684
    move-object v3, v0

    new-instance v4, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    invoke-static {}, Ljava/time/format/DateTimeTextProvider;->getInstance()Ljava/time/format/DateTimeTextProvider;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    .line 685
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object/from16 v2, p2

    .local v2, "textLookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object v7, v1

    const-string v8, "field"

    invoke-static {v7, v8}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 724
    move-object v7, v2

    const-string v8, "textLookup"

    invoke-static {v7, v8}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 725
    new-instance v7, Ljava/util/LinkedHashMap;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v3, v7

    .line 726
    .local v3, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v7, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    move-object v8, v3

    invoke-static {v7, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    move-object v4, v7

    .line 727
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    new-instance v7, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v4

    invoke-direct {v8, v9}, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    move-object v5, v7

    .line 728
    .local v5, "store":Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;
    new-instance v7, Ljava/time/format/DateTimeFormatterBuilder$2;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder$2;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;)V

    move-object v6, v7

    .line 743
    .local v6, "provider":Ljava/time/format/DateTimeTextProvider;
    move-object v7, v0

    new-instance v8, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    sget-object v11, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    move-object v12, v6

    invoke-direct {v9, v10, v11, v12}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {v7, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v7

    .line 744
    move-object v7, v0

    move-object v0, v7

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 10

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    const-string v3, "field"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 350
    move-object v2, v0

    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    const/4 v6, 0x1

    const/16 v7, 0x13

    sget-object v8, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 351
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 11

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move v2, p2

    .local v2, "width":I
    move-object v4, v1

    const-string v5, "field"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 404
    move v4, v2

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    move v4, v2

    const/16 v5, 0x13

    if-le v4, v5, :cond_1

    .line 405
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 407
    :cond_1
    new-instance v4, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move v7, v2

    move v8, v2

    sget-object v9, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    move-object v3, v4

    .line 408
    .local v3, "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v4

    .line 409
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 13

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move v2, p2

    .local v2, "minWidth":I
    move/from16 v3, p3

    .local v3, "maxWidth":I
    move-object/from16 v4, p4

    .local v4, "signStyle":Ljava/time/format/SignStyle;
    move v6, v2

    move v7, v3

    if-ne v6, v7, :cond_0

    move-object v6, v4

    sget-object v7, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v6, v7, :cond_0

    .line 444
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v6

    move-object v0, v6

    .line 460
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    :goto_0
    return-object v0

    .line 446
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    :cond_0
    move-object v6, v1

    const-string v7, "field"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 447
    move-object v6, v4

    const-string v7, "signStyle"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 448
    move v6, v2

    const/4 v7, 0x1

    if-lt v6, v7, :cond_1

    move v6, v2

    const/16 v7, 0x13

    if-le v6, v7, :cond_2

    .line 449
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 451
    :cond_2
    move v6, v3

    const/4 v7, 0x1

    if-lt v6, v7, :cond_3

    move v6, v3

    const/16 v7, 0x13

    if-le v6, v7, :cond_4

    .line 452
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 454
    :cond_4
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_5

    .line 455
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " < "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 458
    :cond_5
    new-instance v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    move-object v5, v6

    .line 459
    .local v5, "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v6

    .line 460
    move-object v6, v0

    move-object v0, v6

    goto/16 :goto_0
.end method

.method public appendValueReduced(Ljava/time/temporal/TemporalField;III)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 14

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "maxWidth":I
    move/from16 v4, p4

    .local v4, "baseValue":I
    move-object v6, v1

    const-string v7, "field"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 505
    new-instance v6, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/AbstractChronoLocalDate;)V

    move-object v5, v6

    .line 506
    .local v5, "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v6

    .line 507
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/AbstractChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 14

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "maxWidth":I
    move-object/from16 v4, p4

    .local v4, "baseDate":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v6, v1

    const-string v7, "field"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 565
    move-object v6, v4

    const-string v7, "baseDate"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 566
    new-instance v6, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    move v9, v2

    move v10, v3

    const/4 v11, 0x0

    move-object v12, v4

    invoke-direct/range {v7 .. v12}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/AbstractChronoLocalDate;)V

    move-object v5, v6

    .line 567
    .local v5, "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v6

    .line 568
    move-object v6, v0

    move-object v0, v6

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 7

    .prologue
    .line 941
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v4

    const-string v5, "ZoneId()"

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    .line 942
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendZoneOrOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 7

    .prologue
    .line 1000
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v4

    const-string v5, "ZoneOrOffsetId()"

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    .line 1001
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 7

    .prologue
    .line 969
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    sget-object v4, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    const-string v5, "ZoneRegionId()"

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    .line 970
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 7

    .prologue
    .line 1028
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "textStyle":Ljava/time/format/TextStyle;
    move-object v2, v0

    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v2

    .line 1029
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public appendZoneText(Ljava/time/format/TextStyle;Ljava/util/Set;)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/ZoneId;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "textStyle":Ljava/time/format/TextStyle;
    move-object v2, p2

    .local v2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    move-object v3, v2

    const-string v4, "preferredZones"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1072
    move-object v3, v0

    new-instance v4, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    .line 1073
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 7

    .prologue
    .line 1823
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-nez v2, :cond_0

    .line 1824
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1826
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1827
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-boolean v5, v5, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    move-object v1, v2

    .line 1828
    .local v1, "cpp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 1829
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v2

    .line 1830
    .line 1833
    .end local v1    # "cpp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0

    .line 1831
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_0
.end method

.method public optionalStart()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 7

    .prologue
    .line 1792
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v2, -0x1

    iput v2, v1, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1793
    move-object v1, v0

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V

    iput-object v2, v1, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 1794
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public padNext(I)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 5

    .prologue
    .line 1736
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move v1, p1

    .local v1, "padWidth":I
    move-object v2, v0

    move v3, v1

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 8

    .prologue
    .line 1761
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move v1, p1

    .local v1, "padWidth":I
    move v2, p2

    .local v2, "padChar":C
    move v3, v1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 1762
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The pad width must be at least one but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1764
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    move v4, v1

    iput v4, v3, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 1765
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    move v4, v2

    iput-char v4, v3, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 1766
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v4, -0x1

    iput v4, v3, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 1767
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    .line 254
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    .line 234
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public parseDefaulting(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeFormatterBuilder;
    .locals 12

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "value":J
    move-object v4, v1

    const-string v5, "field"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 325
    move-object v4, v0

    new-instance v5, Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Ljava/time/format/DateTimeFormatterBuilder$DefaultingParser;-><init>(Ljava/time/temporal/TemporalField;J)V

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v4

    .line 326
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public parseLenient()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    .line 292
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public parseStrict()Ljava/time/format/DateTimeFormatterBuilder;
    .locals 3

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    .line 273
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public toFormatter()Ljava/time/format/DateTimeFormatter;
    .locals 3

    .prologue
    .line 1873
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method toFormatter(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;
    .locals 4

    .prologue
    .line 1901
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "style":Ljava/time/format/ResolverStyle;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withResolverStyle(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method

.method public toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .locals 13

    .prologue
    .line 1892
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v3, v1

    const-string v4, "locale"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1893
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v3, :cond_0

    .line 1894
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    goto :goto_0

    .line 1896
    :cond_0
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    move-object v2, v3

    .line 1897
    .local v2, "pp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    new-instance v3, Ljava/time/format/DateTimeFormatter;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v2

    move-object v6, v1

    sget-object v7, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    sget-object v8, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder;
    return-object v0
.end method
