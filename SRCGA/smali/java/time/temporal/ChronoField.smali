.class public final enum Ljava/time/temporal/ChronoField;
.super Ljava/lang/Enum;
.source "ChronoField.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/temporal/ChronoField;",
        ">;",
        "Ljava/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/temporal/ChronoField;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

.field public static final enum CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

.field public static final enum DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum EPOCH_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum ERA:Ljava/time/temporal/ChronoField;

.field public static final enum HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

.field public static final enum HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

.field public static final enum MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

.field public static final enum MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum NANO_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

.field public static final enum PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

.field public static final enum YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum YEAR_OF_ERA:Ljava/time/temporal/ChronoField;


# instance fields
.field private final baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final name:Ljava/lang/String;

.field private final range:Ljava/time/temporal/ValueRange;

.field private final rangeUnit:Ljava/time/temporal/TemporalUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 107
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "NANO_OF_SECOND"

    const/4 v4, 0x0

    const-string v5, "NanoOfSecond"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0x3b9ac9ff

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 118
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "NANO_OF_DAY"

    const/4 v4, 0x1

    const-string v5, "NanoOfDay"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide v10, 0x4e94914effffL

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 133
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "MICRO_OF_SECOND"

    const/4 v4, 0x2

    const-string v5, "MicroOfSecond"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0xf423f

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 147
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "MICRO_OF_DAY"

    const/4 v4, 0x3

    const-string v5, "MicroOfDay"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide v10, 0x141dd75fffL

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 162
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "MILLI_OF_SECOND"

    const/4 v4, 0x4

    const-string v5, "MilliOfSecond"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3e7

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 176
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "MILLI_OF_DAY"

    const/4 v4, 0x5

    const-string v5, "MilliOfDay"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0x5265bff

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 183
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "SECOND_OF_MINUTE"

    const/4 v4, 0x6

    const-string v5, "SecondOfMinute"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3b

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 190
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "SECOND_OF_DAY"

    const/4 v4, 0x7

    const-string v5, "SecondOfDay"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0x1517f

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 197
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "MINUTE_OF_HOUR"

    const/16 v4, 0x8

    const-string v5, "MinuteOfHour"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3b

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 204
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "MINUTE_OF_DAY"

    const/16 v4, 0x9

    const-string v5, "MinuteOfDay"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x59f

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 212
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "HOUR_OF_AMPM"

    const/16 v4, 0xa

    const-string v5, "HourOfAmPm"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0xb

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    .line 220
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "CLOCK_HOUR_OF_AMPM"

    const/16 v4, 0xb

    const-string v5, "ClockHourOfAmPm"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0xc

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    .line 228
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "HOUR_OF_DAY"

    const/16 v4, 0xc

    const-string v5, "HourOfDay"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x17

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 236
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "CLOCK_HOUR_OF_DAY"

    const/16 v4, 0xd

    const-string v5, "ClockHourOfDay"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x18

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 243
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "AMPM_OF_DAY"

    const/16 v4, 0xe

    const-string v5, "AmPmOfDay"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 259
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "DAY_OF_WEEK"

    const/16 v4, 0xf

    const-string v5, "DayOfWeek"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x7

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    .line 277
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    const/16 v4, 0x10

    const-string v5, "AlignedDayOfWeekInMonth"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x7

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    .line 295
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    const/16 v4, 0x11

    const-string v5, "AlignedDayOfWeekInYear"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x7

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    .line 308
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "DAY_OF_MONTH"

    const/16 v4, 0x12

    const-string v5, "DayOfMonth"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x1c

    const-wide/16 v12, 0x1f

    invoke-static/range {v8 .. v13}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 320
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "DAY_OF_YEAR"

    const/16 v4, 0x13

    const-string v5, "DayOfYear"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x16d

    const-wide/16 v12, 0x16e

    invoke-static/range {v8 .. v13}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 330
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "EPOCH_DAY"

    const/16 v4, 0x14

    const-string v5, "EpochDay"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide v8, -0x550a98b312L

    const-wide v10, 0x550a98b312L

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    .line 346
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "ALIGNED_WEEK_OF_MONTH"

    const/16 v4, 0x15

    const-string v5, "AlignedWeekOfMonth"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x4

    const-wide/16 v12, 0x5

    invoke-static/range {v8 .. v13}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 362
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "ALIGNED_WEEK_OF_YEAR"

    const/16 v4, 0x16

    const-string v5, "AlignedWeekOfYear"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x35

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 373
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "MONTH_OF_YEAR"

    const/16 v4, 0x17

    const-string v5, "MonthOfYear"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0xc

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 384
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "PROLEPTIC_MONTH"

    const/16 v4, 0x18

    const-string v5, "ProlepticMonth"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide v8, -0x2cb4177f4L

    const-wide v10, 0x2cb4177ffL

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    .line 419
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "YEAR_OF_ERA"

    const/16 v4, 0x19

    const-string v5, "YearOfEra"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x1

    const-wide/32 v10, 0x3b9ac9ff

    const-wide/32 v12, 0x3b9aca00

    invoke-static/range {v8 .. v13}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    .line 443
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "YEAR"

    const/16 v4, 0x1a

    const-string v5, "Year"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v8, -0x3b9ac9ff

    const-wide/32 v10, 0x3b9ac9ff

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 460
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "ERA"

    const/16 v4, 0x1b

    const-string v5, "Era"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    .line 476
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "INSTANT_SECONDS"

    const/16 v4, 0x1c

    const-string v5, "InstantSeconds"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/high16 v8, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    .line 490
    new-instance v1, Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const-string v3, "OFFSET_SECONDS"

    const/16 v4, 0x1d

    const-string v5, "OffsetSeconds"

    sget-object v6, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v8, -0xfd20

    const-wide/32 v10, 0xfd20

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    .line 74
    const/16 v1, 0x1e

    new-array v1, v1, [Ljava/time/temporal/ChronoField;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/4 v3, 0x0

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/4 v3, 0x1

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/4 v3, 0x2

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/4 v3, 0x3

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/4 v3, 0x4

    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/4 v3, 0x5

    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/4 v3, 0x6

    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/4 v3, 0x7

    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x8

    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x9

    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0xa

    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0xb

    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0xc

    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0xd

    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0xe

    sget-object v4, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0xf

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x10

    sget-object v4, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x11

    sget-object v4, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x12

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x13

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x14

    sget-object v4, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x15

    sget-object v4, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x16

    sget-object v4, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x17

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x18

    sget-object v4, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x19

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x1a

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x1b

    sget-object v4, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x1c

    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    const/16 v3, 0x1d

    sget-object v4, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    aput-object v4, v2, v3

    sput-object v1, Ljava/time/temporal/ChronoField;->$VALUES:[Ljava/time/temporal/ChronoField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/ValueRange;",
            ")V"
        }
    .end annotation

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .local v3, "name":Ljava/lang/String;
    move-object v4, p4

    .local v4, "baseUnit":Ljava/time/temporal/TemporalUnit;
    move-object v5, p5

    .local v5, "rangeUnit":Ljava/time/temporal/TemporalUnit;
    move-object/from16 v6, p6

    .local v6, "range":Ljava/time/temporal/ValueRange;
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 498
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    .line 499
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 500
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 501
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    .line 502
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/temporal/ChronoField;
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/temporal/ChronoField;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/ChronoField;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/temporal/ChronoField;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Ljava/time/temporal/ChronoField;->$VALUES:[Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, [Ljava/time/temporal/ChronoField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/ChronoField;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v4, v1

    move-object v5, v0

    move-wide v6, v2

    invoke-interface {v4, v5, v6, v7}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return-object v0
.end method

.method public checkValidIntValue(J)I
    .locals 7

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-wide v4, v1

    move-object v6, v0

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return v0
.end method

.method public checkValidValue(J)J
    .locals 7

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-wide v4, v1

    move-object v6, v0

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return-wide v0
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v1

    const-string v3, "locale"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 619
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/temporal/ChronoField;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return-object v0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .locals 4

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return-wide v0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return-object v0
.end method

.method public isDateBased()Z
    .locals 3

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return v0

    .restart local v0    # "this":Ljava/time/temporal/ChronoField;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 4

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return v0
.end method

.method public isTimeBased()Z
    .locals 3

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return v0

    .restart local v0    # "this":Ljava/time/temporal/ChronoField;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .locals 2

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return-object v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 4

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return-object v0
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, p1

    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object v2, p2

    .local v2, "partialTemporal":Ljava/time/temporal/TemporalAccessor;
    move-object v3, p3

    .local v3, "resolverStyle":Ljava/time/format/ResolverStyle;
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ChronoField;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/ChronoField;
    return-object v0
.end method
