.class public final Ljava/time/chrono/HijrahDate;
.super Ljava/time/chrono/ChronoDateImpl;
.source "HijrahDate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoDateImpl",
        "<",
        "Ljava/time/chrono/HijrahDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ADJUSTED_CYCLES:[Ljava/lang/Long;

.field private static final ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CYCLEYEAR_START_DATE:[I

.field private static final DEFAULT_CONFIG_FILENAME:Ljava/lang/String; = "hijrah_deviation.cfg"

.field private static final DEFAULT_CONFIG_PATH:Ljava/lang/String;

.field private static final DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

.field private static final DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

.field private static final DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

.field private static final DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

.field private static final DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

.field private static final FILE_SEP:C

.field private static final HIJRAH_JAN_1_1_GREGORIAN_DAY:I = -0x78274

.field private static final LEAP_MONTH_LENGTH:[I

.field private static final LEAP_NUM_DAYS:[I

.field private static final LEAST_MAX_VALUES:[I

.field private static final MAX_ADJUSTED_CYCLE:I = 0x14e

.field private static final MAX_VALUES:[I

.field public static final MAX_VALUE_OF_ERA:I = 0x270f

.field private static final MIN_VALUES:[I

.field public static final MIN_VALUE_OF_ERA:I = 0x1

.field private static final MONTH_LENGTH:[I

.field private static final NUM_DAYS:[I

.field private static final PATH_SEP:Ljava/lang/String;

.field private static final POSITION_DAY_OF_MONTH:I = 0x5

.field private static final POSITION_DAY_OF_YEAR:I = 0x6

.field private static final serialVersionUID:J = -0x4846033461a5e4e4L


# instance fields
.field private final transient dayOfMonth:I

.field private final transient dayOfWeek:Ljava/time/DayOfWeek;

.field private final transient dayOfYear:I

.field private final transient era:Ljava/time/chrono/HijrahEra;

.field private final gregorianEpochDay:J

.field private final transient isLeapYear:Z

.field private final transient monthOfYear:I

.field private final transient yearOfEra:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 136
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Ljava/time/chrono/HijrahDate;->NUM_DAYS:[I

    .line 141
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    sput-object v2, Ljava/time/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    .line 146
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    sput-object v2, Ljava/time/chrono/HijrahDate;->MONTH_LENGTH:[I

    .line 151
    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    sput-object v2, Ljava/time/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    .line 168
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    sput-object v2, Ljava/time/chrono/HijrahDate;->MIN_VALUES:[I

    .line 182
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    sput-object v2, Ljava/time/chrono/HijrahDate;->LEAST_MAX_VALUES:[I

    .line 196
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    sput-object v2, Ljava/time/chrono/HijrahDate;->MAX_VALUES:[I

    .line 220
    const/16 v2, 0x1e

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    sput-object v2, Ljava/time/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    .line 257
    sget-char v2, Ljava/io/File;->separatorChar:C

    sput-char v2, Ljava/time/chrono/HijrahDate;->FILE_SEP:C

    .line 261
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    sput-object v2, Ljava/time/chrono/HijrahDate;->PATH_SEP:Ljava/lang/String;

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/time/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "threeten"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/time/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/time/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "chrono"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljava/time/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    .line 274
    new-instance v2, Ljava/util/HashMap;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    .line 279
    new-instance v2, Ljava/util/HashMap;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    .line 285
    new-instance v2, Ljava/util/HashMap;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    .line 331
    sget-object v2, Ljava/time/chrono/HijrahDate;->NUM_DAYS:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Integer;

    sput-object v2, Ljava/time/chrono/HijrahDate;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    .line 332
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    sget-object v3, Ljava/time/chrono/HijrahDate;->NUM_DAYS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 333
    sget-object v2, Ljava/time/chrono/HijrahDate;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    move v3, v1

    new-instance v4, Ljava/lang/Integer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljava/time/chrono/HijrahDate;->NUM_DAYS:[I

    move v7, v1

    aget v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    sget-object v2, Ljava/time/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Integer;

    sput-object v2, Ljava/time/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    .line 337
    const/4 v2, 0x0

    move v1, v2

    :goto_1
    move v2, v1

    sget-object v3, Ljava/time/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 338
    sget-object v2, Ljava/time/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    move v3, v1

    new-instance v4, Ljava/lang/Integer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljava/time/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    move v7, v1

    aget v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 341
    :cond_1
    sget-object v2, Ljava/time/chrono/HijrahDate;->MONTH_LENGTH:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Integer;

    sput-object v2, Ljava/time/chrono/HijrahDate;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    .line 342
    const/4 v2, 0x0

    move v1, v2

    :goto_2
    move v2, v1

    sget-object v3, Ljava/time/chrono/HijrahDate;->MONTH_LENGTH:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 343
    sget-object v2, Ljava/time/chrono/HijrahDate;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    move v3, v1

    new-instance v4, Ljava/lang/Integer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljava/time/chrono/HijrahDate;->MONTH_LENGTH:[I

    move v7, v1

    aget v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 346
    :cond_2
    sget-object v2, Ljava/time/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Integer;

    sput-object v2, Ljava/time/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    .line 347
    const/4 v2, 0x0

    move v1, v2

    :goto_3
    move v2, v1

    sget-object v3, Ljava/time/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 348
    sget-object v2, Ljava/time/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    move v3, v1

    new-instance v4, Ljava/lang/Integer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljava/time/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    move v7, v1

    aget v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 351
    :cond_3
    sget-object v2, Ljava/time/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Integer;

    sput-object v2, Ljava/time/chrono/HijrahDate;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    .line 352
    const/4 v2, 0x0

    move v1, v2

    :goto_4
    move v2, v1

    sget-object v3, Ljava/time/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 353
    sget-object v2, Ljava/time/chrono/HijrahDate;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    move v3, v1

    new-instance v4, Ljava/lang/Integer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljava/time/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    move v7, v1

    aget v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 356
    :cond_4
    const/16 v2, 0x14e

    new-array v2, v2, [Ljava/lang/Long;

    sput-object v2, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    .line 357
    const/4 v2, 0x0

    move v1, v2

    :goto_5
    move v2, v1

    sget-object v3, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 358
    sget-object v2, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move v3, v1

    new-instance v4, Ljava/lang/Long;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x2987

    move v7, v1

    mul-int/2addr v6, v7

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v2, v3

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 361
    :cond_5
    sget-object v2, Ljava/time/chrono/HijrahDate;->MIN_VALUES:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Integer;

    sput-object v2, Ljava/time/chrono/HijrahDate;->ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

    .line 362
    const/4 v2, 0x0

    move v1, v2

    :goto_6
    move v2, v1

    sget-object v3, Ljava/time/chrono/HijrahDate;->MIN_VALUES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 363
    sget-object v2, Ljava/time/chrono/HijrahDate;->ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

    move v3, v1

    new-instance v4, Ljava/lang/Integer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljava/time/chrono/HijrahDate;->MIN_VALUES:[I

    move v7, v1

    aget v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 365
    :cond_6
    sget-object v2, Ljava/time/chrono/HijrahDate;->LEAST_MAX_VALUES:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Integer;

    sput-object v2, Ljava/time/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    .line 366
    const/4 v2, 0x0

    move v1, v2

    :goto_7
    move v2, v1

    sget-object v3, Ljava/time/chrono/HijrahDate;->LEAST_MAX_VALUES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 367
    sget-object v2, Ljava/time/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    move v3, v1

    new-instance v4, Ljava/lang/Integer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljava/time/chrono/HijrahDate;->LEAST_MAX_VALUES:[I

    move v7, v1

    aget v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 369
    :cond_7
    sget-object v2, Ljava/time/chrono/HijrahDate;->MAX_VALUES:[I

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Integer;

    sput-object v2, Ljava/time/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    .line 370
    const/4 v2, 0x0

    move v1, v2

    :goto_8
    move v2, v1

    sget-object v3, Ljava/time/chrono/HijrahDate;->MAX_VALUES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 371
    sget-object v2, Ljava/time/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    move v3, v1

    new-instance v4, Ljava/lang/Integer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljava/time/chrono/HijrahDate;->MAX_VALUES:[I

    move v7, v1

    aget v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 374
    :cond_8
    :try_start_0
    invoke-static {}, Ljava/time/chrono/HijrahDate;->readDeviationConfig()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    .line 382
    .end local v1    # "i":I
    :goto_9
    return-void

    .line 375
    .restart local v1    # "i":I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 381
    goto :goto_9

    .line 378
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_9

    .line 136
    :array_0
    .array-data 4
        0x0
        0x1e
        0x3b
        0x59
        0x76
        0x94
        0xb1
        0xcf
        0xec
        0x10a
        0x127
        0x145
    .end array-data

    .line 141
    :array_1
    .array-data 4
        0x0
        0x1e
        0x3b
        0x59
        0x76
        0x94
        0xb1
        0xcf
        0xec
        0x10a
        0x127
        0x145
    .end array-data

    .line 146
    :array_2
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    .line 151
    :array_3
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    .line 168
    :array_4
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
    .end array-data

    .line 182
    :array_5
    .array-data 4
        0x1
        0x270f
        0xb
        0x33
        0x5
        0x1d
        0x162
    .end array-data

    .line 196
    :array_6
    .array-data 4
        0x1
        0x270f
        0xb
        0x34
        0x6
        0x1e
        0x163
    .end array-data

    .line 220
    :array_7
    .array-data 4
        0x0
        0x162
        0x2c5
        0x427
        0x589
        0x6ec
        0x84e
        0x9b1
        0xb13
        0xc75
        0xdd8
        0xf3a
        0x109c
        0x11ff
        0x1361
        0x14c3
        0x1626
        0x1788
        0x18eb
        0x1a4d
        0x1baf
        0x1d12
        0x1e74
        0x1fd6
        0x2139
        0x229b
        0x23fe
        0x2560
        0x26c2
        0x2825
    .end array-data
.end method

.method private constructor <init>(J)V
    .locals 9

    .prologue
    .line 588
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-wide v2, p1

    .local v2, "gregorianDay":J
    move-object v5, v1

    invoke-direct {v5}, Ljava/time/chrono/ChronoDateImpl;-><init>()V

    .line 589
    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/time/chrono/HijrahDate;->getHijrahDateInfo(J)[I

    move-result-object v5

    move-object v4, v5

    .line 591
    .local v4, "dateInfo":[I
    move-object v5, v4

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/time/chrono/HijrahDate;->checkValidYearOfEra(I)V

    .line 592
    move-object v5, v4

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v5}, Ljava/time/chrono/HijrahDate;->checkValidMonth(I)V

    .line 593
    move-object v5, v4

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/time/chrono/HijrahDate;->checkValidDayOfMonth(I)V

    .line 594
    move-object v5, v4

    const/4 v6, 0x4

    aget v5, v5, v6

    invoke-static {v5}, Ljava/time/chrono/HijrahDate;->checkValidDayOfYear(I)V

    .line 596
    move-object v5, v1

    move-object v6, v4

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-static {v6}, Ljava/time/chrono/HijrahEra;->of(I)Ljava/time/chrono/HijrahEra;

    move-result-object v6

    iput-object v6, v5, Ljava/time/chrono/HijrahDate;->era:Ljava/time/chrono/HijrahEra;

    .line 597
    move-object v5, v1

    move-object v6, v4

    const/4 v7, 0x1

    aget v6, v6, v7

    iput v6, v5, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    .line 598
    move-object v5, v1

    move-object v6, v4

    const/4 v7, 0x2

    aget v6, v6, v7

    iput v6, v5, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    .line 599
    move-object v5, v1

    move-object v6, v4

    const/4 v7, 0x3

    aget v6, v6, v7

    iput v6, v5, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    .line 600
    move-object v5, v1

    move-object v6, v4

    const/4 v7, 0x4

    aget v6, v6, v7

    iput v6, v5, Ljava/time/chrono/HijrahDate;->dayOfYear:I

    .line 601
    move-object v5, v1

    move-object v6, v4

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-static {v6}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v6

    iput-object v6, v5, Ljava/time/chrono/HijrahDate;->dayOfWeek:Ljava/time/DayOfWeek;

    .line 602
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Ljava/time/chrono/HijrahDate;->gregorianEpochDay:J

    .line 603
    move-object v5, v1

    move-object v6, v1

    iget v6, v6, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/time/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v6

    iput-boolean v6, v5, Ljava/time/chrono/HijrahDate;->isLeapYear:Z

    .line 604
    return-void
.end method

.method private static addDeviationAsHijrah(IIIII)V
    .locals 39

    .prologue
    .line 1236
    move/from16 v3, p0

    .local v3, "startYear":I
    move/from16 v4, p1

    .local v4, "startMonth":I
    move/from16 v5, p2

    .local v5, "endYear":I
    move/from16 v6, p3

    .local v6, "endMonth":I
    move/from16 v7, p4

    .local v7, "offset":I
    move/from16 v30, v3

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    .line 1237
    new-instance v30, Ljava/lang/IllegalArgumentException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string v32, "startYear < 1"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1239
    :cond_0
    move/from16 v30, v5

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    .line 1240
    new-instance v30, Ljava/lang/IllegalArgumentException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string v32, "endYear < 1"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1242
    :cond_1
    move/from16 v30, v4

    if-ltz v30, :cond_2

    move/from16 v30, v4

    const/16 v31, 0xb

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_3

    .line 1243
    :cond_2
    new-instance v30, Ljava/lang/IllegalArgumentException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string v32, "startMonth < 0 || startMonth > 11"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1246
    :cond_3
    move/from16 v30, v6

    if-ltz v30, :cond_4

    move/from16 v30, v6

    const/16 v31, 0xb

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_5

    .line 1247
    :cond_4
    new-instance v30, Ljava/lang/IllegalArgumentException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string v32, "endMonth < 0 || endMonth > 11"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1249
    :cond_5
    move/from16 v30, v5

    const/16 v31, 0x270f

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_6

    .line 1250
    new-instance v30, Ljava/lang/IllegalArgumentException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string v32, "endYear > 9999"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1252
    :cond_6
    move/from16 v30, v5

    move/from16 v31, v3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 1253
    new-instance v30, Ljava/lang/IllegalArgumentException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string v32, "startYear > endYear"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1255
    :cond_7
    move/from16 v30, v5

    move/from16 v31, v3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    move/from16 v30, v6

    move/from16 v31, v4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 1256
    new-instance v30, Ljava/lang/IllegalArgumentException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string v32, "startYear == endYear && endMonth < startMonth"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1261
    :cond_8
    move/from16 v30, v3

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/time/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v30

    move/from16 v8, v30

    .line 1264
    .local v8, "isStartYLeap":Z
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v3

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/Integer;

    move-object/from16 v9, v30

    .line 1266
    .local v9, "orgStartMonthNums":[Ljava/lang/Integer;
    move-object/from16 v30, v9

    if-nez v30, :cond_9

    .line 1267
    move/from16 v30, v8

    if-eqz v30, :cond_a

    .line 1268
    sget-object v30, Ljava/time/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v9, v30

    .line 1269
    const/16 v30, 0x0

    move/from16 v10, v30

    .local v10, "l":I
    :goto_0
    move/from16 v30, v10

    sget-object v31, Ljava/time/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    .line 1270
    move-object/from16 v30, v9

    move/from16 v31, v10

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    move/from16 v35, v10

    aget v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1269
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1280
    .end local v10    # "l":I
    :cond_9
    move-object/from16 v30, v9

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v10, v30

    .line 1282
    .local v10, "newStartMonthNums":[Ljava/lang/Integer;
    const/16 v30, 0x0

    move/from16 v11, v30

    .local v11, "month":I
    :goto_1
    move/from16 v30, v11

    const/16 v31, 0xc

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 1283
    move/from16 v30, v11

    move/from16 v31, v4

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_b

    .line 1284
    move-object/from16 v30, v10

    move/from16 v31, v11

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move-object/from16 v34, v9

    move/from16 v35, v11

    aget-object v34, v34, v35

    .line 1285
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v35, v7

    sub-int v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1282
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1273
    .end local v10    # "newStartMonthNums":[Ljava/lang/Integer;
    .end local v11    # "month":I
    :cond_a
    sget-object v30, Ljava/time/chrono/HijrahDate;->NUM_DAYS:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v9, v30

    .line 1274
    const/16 v30, 0x0

    move/from16 v10, v30

    .local v10, "l":I
    :goto_3
    move/from16 v30, v10

    sget-object v31, Ljava/time/chrono/HijrahDate;->NUM_DAYS:[I

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    .line 1275
    move-object/from16 v30, v9

    move/from16 v31, v10

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->NUM_DAYS:[I

    move/from16 v35, v10

    aget v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1274
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1288
    .local v10, "newStartMonthNums":[Ljava/lang/Integer;
    .restart local v11    # "month":I
    :cond_b
    move-object/from16 v30, v10

    move/from16 v31, v11

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move-object/from16 v34, v9

    move/from16 v35, v11

    aget-object v34, v34, v35

    .line 1289
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    goto :goto_2

    .line 1293
    :cond_c
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v3

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v32, v10

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 1297
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v3

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/Integer;

    move-object/from16 v11, v30

    .line 1299
    .local v11, "orgStartMonthLengths":[Ljava/lang/Integer;
    move-object/from16 v30, v11

    if-nez v30, :cond_d

    .line 1300
    move/from16 v30, v8

    if-eqz v30, :cond_e

    .line 1301
    sget-object v30, Ljava/time/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v11, v30

    .line 1302
    const/16 v30, 0x0

    move/from16 v12, v30

    .local v12, "l":I
    :goto_4
    move/from16 v30, v12

    sget-object v31, Ljava/time/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 1303
    move-object/from16 v30, v11

    move/from16 v31, v12

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    move/from16 v35, v12

    aget v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1302
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1313
    .end local v12    # "l":I
    :cond_d
    move-object/from16 v30, v11

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v12, v30

    .line 1315
    .local v12, "newStartMonthLengths":[Ljava/lang/Integer;
    const/16 v30, 0x0

    move/from16 v13, v30

    .local v13, "month":I
    :goto_5
    move/from16 v30, v13

    const/16 v31, 0xc

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_10

    .line 1316
    move/from16 v30, v13

    move/from16 v31, v4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    .line 1317
    move-object/from16 v30, v12

    move/from16 v31, v13

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move-object/from16 v34, v11

    move/from16 v35, v13

    aget-object v34, v34, v35

    .line 1318
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v35, v7

    sub-int v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1315
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1306
    .end local v12    # "newStartMonthLengths":[Ljava/lang/Integer;
    .end local v13    # "month":I
    :cond_e
    sget-object v30, Ljava/time/chrono/HijrahDate;->MONTH_LENGTH:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v11, v30

    .line 1307
    const/16 v30, 0x0

    move/from16 v12, v30

    .local v12, "l":I
    :goto_7
    move/from16 v30, v12

    sget-object v31, Ljava/time/chrono/HijrahDate;->MONTH_LENGTH:[I

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 1308
    move-object/from16 v30, v11

    move/from16 v31, v12

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->MONTH_LENGTH:[I

    move/from16 v35, v12

    aget v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1307
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1320
    .local v12, "newStartMonthLengths":[Ljava/lang/Integer;
    .restart local v13    # "month":I
    :cond_f
    move-object/from16 v30, v12

    move/from16 v31, v13

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move-object/from16 v34, v11

    move/from16 v35, v13

    aget-object v34, v34, v35

    .line 1321
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    goto :goto_6

    .line 1325
    :cond_10
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v3

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v32, v12

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 1327
    move/from16 v30, v3

    move/from16 v31, v5

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_17

    .line 1330
    move/from16 v30, v3

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    const/16 v31, 0x1e

    div-int/lit8 v30, v30, 0x1e

    move/from16 v13, v30

    .line 1331
    .local v13, "sCycleNumber":I
    move/from16 v30, v3

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    const/16 v31, 0x1e

    rem-int/lit8 v30, v30, 0x1e

    move/from16 v14, v30

    .line 1332
    .local v14, "sYearInCycle":I
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v13

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/Integer;

    move-object/from16 v15, v30

    .line 1334
    .local v15, "startCycles":[Ljava/lang/Integer;
    move-object/from16 v30, v15

    if-nez v30, :cond_11

    .line 1335
    sget-object v30, Ljava/time/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v15, v30

    .line 1336
    const/16 v30, 0x0

    move/from16 v16, v30

    .local v16, "j":I
    :goto_8
    move/from16 v30, v16

    move-object/from16 v31, v15

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_11

    .line 1337
    move-object/from16 v30, v15

    move/from16 v31, v16

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    move/from16 v35, v16

    aget v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1336
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 1341
    .end local v16    # "j":I
    :cond_11
    move/from16 v30, v14

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v16, v30

    .restart local v16    # "j":I
    :goto_9
    move/from16 v30, v16

    sget-object v31, Ljava/time/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_12

    .line 1342
    move-object/from16 v30, v15

    move/from16 v31, v16

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move-object/from16 v34, v15

    move/from16 v35, v16

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v35, v7

    sub-int v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1341
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 1346
    :cond_12
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v13

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v32, v15

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 1348
    move/from16 v30, v3

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    const/16 v31, 0x1e

    div-int/lit8 v30, v30, 0x1e

    move/from16 v16, v30

    .line 1349
    .local v16, "sYearInMaxY":I
    move/from16 v30, v5

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    const/16 v31, 0x1e

    div-int/lit8 v30, v30, 0x1e

    move/from16 v17, v30

    .line 1351
    .local v17, "sEndInMaxY":I
    move/from16 v30, v16

    move/from16 v31, v17

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_14

    .line 1356
    move/from16 v30, v16

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v18, v30

    .local v18, "j":I
    :goto_a
    move/from16 v30, v18

    sget-object v31, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    .line 1357
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move/from16 v31, v18

    new-instance v32, Ljava/lang/Long;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move/from16 v35, v18

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    move/from16 v36, v7

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    sub-long v34, v34, v36

    invoke-direct/range {v33 .. v35}, Ljava/lang/Long;-><init>(J)V

    aput-object v32, v30, v31

    .line 1356
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 1362
    :cond_13
    move/from16 v30, v17

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v18, v30

    :goto_b
    move/from16 v30, v18

    sget-object v31, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_14

    .line 1363
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move/from16 v31, v18

    new-instance v32, Ljava/lang/Long;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move/from16 v35, v18

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    move/from16 v36, v7

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v34, v34, v36

    invoke-direct/range {v33 .. v35}, Ljava/lang/Long;-><init>(J)V

    aput-object v32, v30, v31

    .line 1362
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 1369
    .end local v18    # "j":I
    :cond_14
    move/from16 v30, v5

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    const/16 v31, 0x1e

    div-int/lit8 v30, v30, 0x1e

    move/from16 v18, v30

    .line 1370
    .local v18, "eCycleNumber":I
    move/from16 v30, v5

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    const/16 v31, 0x1e

    rem-int/lit8 v30, v30, 0x1e

    move/from16 v19, v30

    .line 1371
    .local v19, "sEndInCycle":I
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v18

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/Integer;

    move-object/from16 v20, v30

    .line 1373
    .local v20, "endCycles":[Ljava/lang/Integer;
    move-object/from16 v30, v20

    if-nez v30, :cond_15

    .line 1374
    sget-object v30, Ljava/time/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v20, v30

    .line 1375
    const/16 v30, 0x0

    move/from16 v21, v30

    .local v21, "j":I
    :goto_c
    move/from16 v30, v21

    move-object/from16 v31, v20

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_15

    .line 1376
    move-object/from16 v30, v20

    move/from16 v31, v21

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    move/from16 v35, v21

    aget v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1375
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 1379
    .end local v21    # "j":I
    :cond_15
    move/from16 v30, v19

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v21, v30

    .restart local v21    # "j":I
    :goto_d
    move/from16 v30, v21

    sget-object v31, Ljava/time/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_16

    .line 1380
    move-object/from16 v30, v20

    move/from16 v31, v21

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move-object/from16 v34, v20

    move/from16 v35, v21

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v35, v7

    add-int v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1379
    add-int/lit8 v21, v21, 0x1

    goto :goto_d

    .line 1382
    :cond_16
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v18

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v32, v20

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 1386
    .end local v13    # "sCycleNumber":I
    .end local v14    # "sYearInCycle":I
    .end local v15    # "startCycles":[Ljava/lang/Integer;
    .end local v16    # "sYearInMaxY":I
    .end local v17    # "sEndInMaxY":I
    .end local v18    # "eCycleNumber":I
    .end local v19    # "sEndInCycle":I
    .end local v20    # "endCycles":[Ljava/lang/Integer;
    .end local v21    # "j":I
    :cond_17
    move/from16 v30, v5

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/time/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v30

    move/from16 v13, v30

    .line 1388
    .local v13, "isEndYLeap":Z
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v5

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/Integer;

    move-object/from16 v14, v30

    .line 1390
    .local v14, "orgEndMonthDays":[Ljava/lang/Integer;
    move-object/from16 v30, v14

    if-nez v30, :cond_18

    .line 1391
    move/from16 v30, v13

    if-eqz v30, :cond_19

    .line 1392
    sget-object v30, Ljava/time/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v14, v30

    .line 1393
    const/16 v30, 0x0

    move/from16 v15, v30

    .local v15, "l":I
    :goto_e
    move/from16 v30, v15

    sget-object v31, Ljava/time/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_18

    .line 1394
    move-object/from16 v30, v14

    move/from16 v31, v15

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    move/from16 v35, v15

    aget v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1393
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 1404
    .end local v15    # "l":I
    :cond_18
    move-object/from16 v30, v14

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v15, v30

    .line 1406
    .local v15, "newEndMonthDays":[Ljava/lang/Integer;
    const/16 v30, 0x0

    move/from16 v16, v30

    .local v16, "month":I
    :goto_f
    move/from16 v30, v16

    const/16 v31, 0xc

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1b

    .line 1407
    move/from16 v30, v16

    move/from16 v31, v6

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1a

    .line 1408
    move-object/from16 v30, v15

    move/from16 v31, v16

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move-object/from16 v34, v14

    move/from16 v35, v16

    aget-object v34, v34, v35

    .line 1409
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v35, v7

    add-int v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1406
    :goto_10
    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    .line 1397
    .end local v15    # "newEndMonthDays":[Ljava/lang/Integer;
    .end local v16    # "month":I
    :cond_19
    sget-object v30, Ljava/time/chrono/HijrahDate;->NUM_DAYS:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v14, v30

    .line 1398
    const/16 v30, 0x0

    move/from16 v15, v30

    .local v15, "l":I
    :goto_11
    move/from16 v30, v15

    sget-object v31, Ljava/time/chrono/HijrahDate;->NUM_DAYS:[I

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_18

    .line 1399
    move-object/from16 v30, v14

    move/from16 v31, v15

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->NUM_DAYS:[I

    move/from16 v35, v15

    aget v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1398
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 1412
    .local v15, "newEndMonthDays":[Ljava/lang/Integer;
    .restart local v16    # "month":I
    :cond_1a
    move-object/from16 v30, v15

    move/from16 v31, v16

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move-object/from16 v34, v14

    move/from16 v35, v16

    aget-object v34, v34, v35

    .line 1413
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    goto :goto_10

    .line 1417
    :cond_1b
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v5

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v32, v15

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 1420
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v5

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/Integer;

    move-object/from16 v16, v30

    .line 1423
    .local v16, "orgEndMonthLengths":[Ljava/lang/Integer;
    move-object/from16 v30, v16

    if-nez v30, :cond_1c

    .line 1424
    move/from16 v30, v13

    if-eqz v30, :cond_1d

    .line 1425
    sget-object v30, Ljava/time/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v16, v30

    .line 1426
    const/16 v30, 0x0

    move/from16 v17, v30

    .local v17, "l":I
    :goto_12
    move/from16 v30, v17

    sget-object v31, Ljava/time/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1c

    .line 1427
    move-object/from16 v30, v16

    move/from16 v31, v17

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    move/from16 v35, v17

    aget v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1426
    add-int/lit8 v17, v17, 0x1

    goto :goto_12

    .line 1437
    .end local v17    # "l":I
    :cond_1c
    move-object/from16 v30, v16

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v17, v30

    .line 1439
    .local v17, "newEndMonthLengths":[Ljava/lang/Integer;
    const/16 v30, 0x0

    move/from16 v18, v30

    .local v18, "month":I
    :goto_13
    move/from16 v30, v18

    const/16 v31, 0xc

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1f

    .line 1440
    move/from16 v30, v18

    move/from16 v31, v6

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1e

    .line 1441
    move-object/from16 v30, v17

    move/from16 v31, v18

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move-object/from16 v34, v16

    move/from16 v35, v18

    aget-object v34, v34, v35

    .line 1442
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v35, v7

    add-int v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1439
    :goto_14
    add-int/lit8 v18, v18, 0x1

    goto :goto_13

    .line 1430
    .end local v17    # "newEndMonthLengths":[Ljava/lang/Integer;
    .end local v18    # "month":I
    :cond_1d
    sget-object v30, Ljava/time/chrono/HijrahDate;->MONTH_LENGTH:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    move-object/from16 v16, v30

    .line 1431
    const/16 v30, 0x0

    move/from16 v17, v30

    .local v17, "l":I
    :goto_15
    move/from16 v30, v17

    sget-object v31, Ljava/time/chrono/HijrahDate;->MONTH_LENGTH:[I

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1c

    .line 1432
    move-object/from16 v30, v16

    move/from16 v31, v17

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    sget-object v34, Ljava/time/chrono/HijrahDate;->MONTH_LENGTH:[I

    move/from16 v35, v17

    aget v34, v34, v35

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1431
    add-int/lit8 v17, v17, 0x1

    goto :goto_15

    .line 1444
    .local v17, "newEndMonthLengths":[Ljava/lang/Integer;
    .restart local v18    # "month":I
    :cond_1e
    move-object/from16 v30, v17

    move/from16 v31, v18

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move-object/from16 v34, v16

    move/from16 v35, v18

    aget-object v34, v34, v35

    .line 1445
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    goto :goto_14

    .line 1449
    :cond_1f
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v5

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v32, v17

    invoke-virtual/range {v30 .. v32}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 1451
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v3

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/Integer;

    move-object/from16 v18, v30

    .line 1453
    .local v18, "startMonthLengths":[Ljava/lang/Integer;
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v5

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/Integer;

    move-object/from16 v19, v30

    .line 1455
    .local v19, "endMonthLengths":[Ljava/lang/Integer;
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v3

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    .line 1456
    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/Integer;

    move-object/from16 v20, v30

    .line 1457
    .local v20, "startMonthDays":[Ljava/lang/Integer;
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/Integer;

    move-object/from16 v38, v31

    move-object/from16 v31, v38

    move-object/from16 v32, v38

    move/from16 v33, v5

    invoke-direct/range {v32 .. v33}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/Integer;

    move-object/from16 v21, v30

    .line 1459
    .local v21, "endMonthDays":[Ljava/lang/Integer;
    move-object/from16 v30, v18

    move/from16 v31, v4

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v22, v30

    .line 1460
    .local v22, "startMonthLength":I
    move-object/from16 v30, v19

    move/from16 v31, v6

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v23, v30

    .line 1461
    .local v23, "endMonthLength":I
    move-object/from16 v30, v20

    const/16 v31, 0xb

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v31, v18

    const/16 v32, 0xb

    aget-object v31, v31, v32

    .line 1462
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v24, v30

    .line 1463
    .local v24, "startMonthDay":I
    move-object/from16 v30, v21

    const/16 v31, 0xb

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v31, v19

    const/16 v32, 0xb

    aget-object v31, v31, v32

    .line 1464
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v25, v30

    .line 1466
    .local v25, "endMonthDay":I
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v31, 0x5

    aget-object v30, v30, v31

    .line 1467
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v26, v30

    .line 1468
    .local v26, "maxMonthLength":I
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v31, 0x5

    aget-object v30, v30, v31

    .line 1469
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v27, v30

    .line 1471
    .local v27, "leastMaxMonthLength":I
    move/from16 v30, v26

    move/from16 v31, v22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_20

    .line 1472
    move/from16 v30, v22

    move/from16 v26, v30

    .line 1474
    :cond_20
    move/from16 v30, v26

    move/from16 v31, v23

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_21

    .line 1475
    move/from16 v30, v23

    move/from16 v26, v30

    .line 1477
    :cond_21
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v31, 0x5

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move/from16 v34, v26

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1479
    move/from16 v30, v27

    move/from16 v31, v22

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_22

    .line 1480
    move/from16 v30, v22

    move/from16 v27, v30

    .line 1482
    :cond_22
    move/from16 v30, v27

    move/from16 v31, v23

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_23

    .line 1483
    move/from16 v30, v23

    move/from16 v27, v30

    .line 1485
    :cond_23
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v31, 0x5

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move/from16 v34, v27

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1488
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v31, 0x6

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v28, v30

    .line 1489
    .local v28, "maxMonthDay":I
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v31, 0x6

    aget-object v30, v30, v31

    .line 1490
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move/from16 v29, v30

    .line 1492
    .local v29, "leastMaxMonthDay":I
    move/from16 v30, v28

    move/from16 v31, v24

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_24

    .line 1493
    move/from16 v30, v24

    move/from16 v28, v30

    .line 1495
    :cond_24
    move/from16 v30, v28

    move/from16 v31, v25

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_25

    .line 1496
    move/from16 v30, v25

    move/from16 v28, v30

    .line 1499
    :cond_25
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v31, 0x6

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move/from16 v34, v28

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1501
    move/from16 v30, v29

    move/from16 v31, v24

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_26

    .line 1502
    move/from16 v30, v24

    move/from16 v29, v30

    .line 1504
    :cond_26
    move/from16 v30, v29

    move/from16 v31, v25

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_27

    .line 1505
    move/from16 v30, v25

    move/from16 v29, v30

    .line 1507
    :cond_27
    sget-object v30, Ljava/time/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v31, 0x6

    new-instance v32, Ljava/lang/Integer;

    move-object/from16 v38, v32

    move-object/from16 v32, v38

    move-object/from16 v33, v38

    move/from16 v34, v29

    invoke-direct/range {v33 .. v34}, Ljava/lang/Integer;-><init>(I)V

    aput-object v32, v30, v31

    .line 1509
    return-void
.end method

.method private static checkValidDayOfMonth(I)V
    .locals 6

    .prologue
    .line 538
    move v0, p0

    .local v0, "dayOfMonth":I
    move v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move v1, v0

    .line 539
    invoke-static {}, Ljava/time/chrono/HijrahDate;->getMaximumDayOfMonth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 540
    :cond_0
    new-instance v1, Ljava/time/DateTimeException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid day of month of Hijrah date, day "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " greater than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 541
    invoke-static {}, Ljava/time/chrono/HijrahDate;->getMaximumDayOfMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or less than 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_1
    return-void
.end method

.method private static checkValidDayOfYear(I)V
    .locals 5

    .prologue
    .line 525
    move v0, p0

    .local v0, "dayOfYear":I
    move v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move v1, v0

    .line 526
    invoke-static {}, Ljava/time/chrono/HijrahDate;->getMaximumDayOfYear()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 527
    :cond_0
    new-instance v1, Ljava/time/DateTimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid day of year of Hijrah date"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 529
    :cond_1
    return-void
.end method

.method private static checkValidMonth(I)V
    .locals 5

    .prologue
    .line 532
    move v0, p0

    .local v0, "month":I
    move v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0xc

    if-le v1, v2, :cond_1

    .line 533
    :cond_0
    new-instance v1, Ljava/time/DateTimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid month of Hijrah date"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 535
    :cond_1
    return-void
.end method

.method private static checkValidYearOfEra(I)V
    .locals 5

    .prologue
    .line 518
    move v0, p0

    .local v0, "yearOfEra":I
    move v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x270f

    if-le v1, v2, :cond_1

    .line 520
    :cond_0
    new-instance v1, Ljava/time/DateTimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid year of Hijrah Era"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :cond_1
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;
    .locals 3

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    sget-object v1, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object v0
.end method

.method private static getAdjustedCycle(I)[Ljava/lang/Integer;
    .locals 8

    .prologue
    .line 974
    move v0, p0

    .local v0, "cycleNumber":I
    :try_start_0
    sget-object v3, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v0

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 977
    .line 978
    .local v1, "cycles":[Ljava/lang/Integer;
    :goto_0
    move-object v3, v1

    if-nez v3, :cond_0

    .line 979
    sget-object v3, Ljava/time/chrono/HijrahDate;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    move-object v1, v3

    .line 981
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "cycleNumber":I
    return-object v0

    .line 975
    .end local v1    # "cycles":[Ljava/lang/Integer;
    .restart local v0    # "cycleNumber":I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 976
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v3, 0x0

    move-object v1, v3

    .restart local v1    # "cycles":[Ljava/lang/Integer;
    goto :goto_0
.end method

.method private static getAdjustedMonthDays(I)[Ljava/lang/Integer;
    .locals 9

    .prologue
    .line 993
    move v1, p0

    .local v1, "year":I
    :try_start_0
    sget-object v4, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 996
    .line 997
    .local v2, "newMonths":[Ljava/lang/Integer;
    :goto_0
    move-object v4, v2

    if-nez v4, :cond_0

    .line 998
    move v4, v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/time/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 999
    sget-object v4, Ljava/time/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    move-object v2, v4

    .line 1004
    :cond_0
    :goto_1
    move-object v4, v2

    move-object v1, v4

    .end local v1    # "year":I
    return-object v1

    .line 994
    .end local v2    # "newMonths":[Ljava/lang/Integer;
    .restart local v1    # "year":I
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 995
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v4, 0x0

    move-object v2, v4

    .restart local v2    # "newMonths":[Ljava/lang/Integer;
    goto :goto_0

    .line 1001
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    sget-object v4, Ljava/time/chrono/HijrahDate;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    move-object v2, v4

    goto :goto_1
.end method

.method private static getAdjustedMonthLength(I)[Ljava/lang/Integer;
    .locals 9

    .prologue
    .line 1016
    move v1, p0

    .local v1, "year":I
    :try_start_0
    sget-object v4, Ljava/time/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 1019
    .line 1020
    .local v2, "newMonths":[Ljava/lang/Integer;
    :goto_0
    move-object v4, v2

    if-nez v4, :cond_0

    .line 1021
    move v4, v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/time/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1022
    sget-object v4, Ljava/time/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    move-object v2, v4

    .line 1027
    :cond_0
    :goto_1
    move-object v4, v2

    move-object v1, v4

    .end local v1    # "year":I
    return-object v1

    .line 1017
    .end local v2    # "newMonths":[Ljava/lang/Integer;
    .restart local v1    # "year":I
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1018
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v4, 0x0

    move-object v2, v4

    .restart local v2    # "newMonths":[Ljava/lang/Integer;
    goto :goto_0

    .line 1024
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    sget-object v4, Ljava/time/chrono/HijrahDate;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    move-object v2, v4

    goto :goto_1
.end method

.method private static getConfigFileInputStream()Ljava/io/InputStream;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1677
    const-string v10, "org.threeten.bp.i18n.HijrahDate.deviationConfigFile"

    .line 1678
    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 1680
    .local v0, "fileName":Ljava/lang/String;
    move-object v10, v0

    if-nez v10, :cond_0

    .line 1681
    const-string v10, "hijrah_deviation.cfg"

    move-object v0, v10

    .line 1684
    :cond_0
    const-string v10, "org.threeten.bp.i18n.HijrahDate.deviationConfigDir"

    .line 1685
    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .line 1687
    .local v1, "dir":Ljava/lang/String;
    move-object v10, v1

    if-eqz v10, :cond_4

    .line 1688
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v1

    const-string v11, "file.separator"

    .line 1689
    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1688
    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1690
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "file.separator"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .line 1692
    :cond_2
    new-instance v10, Ljava/io/File;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Ljava/time/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v10

    .line 1693
    .local v2, "file":Ljava/io/File;
    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1695
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v2

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v10

    .line 1754
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    .line 1696
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 1697
    .local v3, "ioe":Ljava/io/IOException;
    move-object v10, v3

    throw v10

    .line 1700
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_3
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 1703
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    const-string v10, "java.class.path"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 1704
    .local v2, "classPath":Ljava/lang/String;
    new-instance v10, Ljava/util/StringTokenizer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v2

    sget-object v13, Ljava/time/chrono/HijrahDate;->PATH_SEP:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v10

    .line 1705
    .local v3, "st":Ljava/util/StringTokenizer;
    :goto_1
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1706
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 1707
    .local v4, "path":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v4

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    .line 1708
    .local v5, "file":Ljava/io/File;
    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1709
    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1710
    new-instance v10, Ljava/io/File;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Ljava/time/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/time/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v0

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v10

    .line 1712
    .local v6, "f":Ljava/io/File;
    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1714
    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Ljava/time/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/time/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Ljava/time/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v10

    goto/16 :goto_0

    .line 1717
    :catch_1
    move-exception v10

    move-object v7, v10

    .line 1718
    .local v7, "ioe":Ljava/io/IOException;
    move-object v10, v7

    throw v10

    .line 1721
    .line 1753
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "ioe":Ljava/io/IOException;
    :cond_5
    goto/16 :goto_1

    .line 1724
    :cond_6
    :try_start_2
    new-instance v10, Ljava/util/zip/ZipFile;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v5

    invoke-direct {v11, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v10

    .line 1727
    .line 1729
    .local v6, "zip":Ljava/util/zip/ZipFile;
    :goto_2
    move-object v10, v6

    if-eqz v10, :cond_5

    .line 1730
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Ljava/time/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-char v11, Ljava/time/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 1732
    .local v7, "targetFile":Ljava/lang/String;
    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    move-object v8, v10

    .line 1734
    .local v8, "entry":Ljava/util/zip/ZipEntry;
    move-object v10, v8

    if-nez v10, :cond_8

    .line 1735
    sget-char v10, Ljava/time/chrono/HijrahDate;->FILE_SEP:C

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_9

    .line 1736
    move-object v10, v7

    const/16 v11, 0x2f

    const/16 v12, 0x5c

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 1740
    :cond_7
    :goto_3
    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    move-object v8, v10

    .line 1743
    :cond_8
    move-object v10, v8

    if-eqz v10, :cond_5

    .line 1745
    move-object v10, v6

    move-object v11, v8

    :try_start_3
    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0

    .line 1725
    .end local v6    # "zip":Ljava/util/zip/ZipFile;
    .end local v7    # "targetFile":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v10

    move-object v7, v10

    .line 1726
    .local v7, "ioe":Ljava/io/IOException;
    const/4 v10, 0x0

    move-object v6, v10

    .restart local v6    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 1737
    .local v7, "targetFile":Ljava/lang/String;
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    :cond_9
    sget-char v10, Ljava/time/chrono/HijrahDate;->FILE_SEP:C

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_7

    .line 1738
    move-object v10, v7

    const/16 v11, 0x5c

    const/16 v12, 0x2f

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    goto :goto_3

    .line 1746
    :catch_3
    move-exception v10

    move-object v9, v10

    .line 1747
    .local v9, "ioe":Ljava/io/IOException;
    move-object v10, v9

    throw v10

    .line 1754
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "zip":Ljava/util/zip/ZipFile;
    .end local v7    # "targetFile":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "ioe":Ljava/io/IOException;
    :cond_a
    const/4 v10, 0x0

    move-object v0, v10

    goto/16 :goto_0
.end method

.method private static getCycleNumber(J)I
    .locals 10

    .prologue
    .line 897
    move-wide v1, p0

    .local v1, "epochDay":J
    sget-object v6, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move-object v3, v6

    .line 900
    .local v3, "days":[Ljava/lang/Long;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v3

    :try_start_0
    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 901
    move-wide v6, v1

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 902
    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v1, v6

    .line 909
    .end local v1    # "epochDay":J
    .end local v5    # "i":I
    :goto_1
    return v1

    .line 900
    .restart local v1    # "epochDay":J
    .restart local v5    # "i":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 905
    :cond_1
    move-wide v6, v1

    long-to-int v6, v6

    const/16 v7, 0x2987

    div-int/lit16 v6, v6, 0x2987
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 908
    .line 909
    .end local v5    # "i":I
    .local v4, "cycleNumber":I
    :goto_2
    move v6, v4

    move v1, v6

    goto :goto_1

    .line 906
    .end local v4    # "cycleNumber":I
    .restart local v5    # "i":I
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 907
    .local v5, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move-wide v6, v1

    long-to-int v6, v6

    const/16 v7, 0x2987

    div-int/lit16 v6, v6, 0x2987

    move v4, v6

    .restart local v4    # "cycleNumber":I
    goto :goto_2
.end method

.method private static getDayOfCycle(JI)I
    .locals 12

    .prologue
    .line 923
    move-wide v1, p0

    .local v1, "epochDay":J
    move v3, p2

    .local v3, "cycleNumber":I
    :try_start_0
    sget-object v6, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move v7, v3

    aget-object v6, v6, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 926
    .line 927
    .local v4, "day":Ljava/lang/Long;
    :goto_0
    move-object v6, v4

    if-nez v6, :cond_0

    .line 928
    new-instance v6, Ljava/lang/Long;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v3

    const/16 v9, 0x2987

    mul-int/lit16 v8, v8, 0x2987

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    move-object v4, v6

    .line 930
    :cond_0
    move-wide v6, v1

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v6, v6

    move v1, v6

    .end local v1    # "epochDay":J
    return v1

    .line 924
    .end local v4    # "day":Ljava/lang/Long;
    .restart local v1    # "epochDay":J
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 925
    .local v5, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v6, 0x0

    move-object v4, v6

    .restart local v4    # "day":Ljava/lang/Long;
    goto :goto_0
.end method

.method private static getDayOfMonth(III)I
    .locals 7

    .prologue
    .line 1088
    move v0, p0

    .local v0, "dayOfYear":I
    move v1, p1

    .local v1, "month":I
    move v2, p2

    .local v2, "year":I
    move v4, v2

    invoke-static {v4}, Ljava/time/chrono/HijrahDate;->getAdjustedMonthDays(I)[Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .line 1090
    .local v3, "newMonths":[Ljava/lang/Integer;
    move v4, v0

    if-ltz v4, :cond_1

    .line 1091
    move v4, v1

    if-lez v4, :cond_0

    .line 1092
    move v4, v0

    move-object v5, v3

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    .line 1102
    .end local v0    # "dayOfYear":I
    :goto_0
    return v0

    .line 1094
    .restart local v0    # "dayOfYear":I
    :cond_0
    move v4, v0

    move v0, v4

    goto :goto_0

    .line 1097
    :cond_1
    move v4, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/time/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    const/16 v5, 0x163

    add-int/lit16 v4, v4, 0x163

    :goto_1
    move v0, v4

    .line 1099
    move v4, v1

    if-lez v4, :cond_3

    .line 1100
    move v4, v0

    move-object v5, v3

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_0

    .line 1097
    :cond_2
    move v4, v0

    const/16 v5, 0x162

    add-int/lit16 v4, v4, 0x162

    goto :goto_1

    .line 1102
    :cond_3
    move v4, v0

    move v0, v4

    goto :goto_0
.end method

.method private static getDayOfYear(III)I
    .locals 7

    .prologue
    .line 1039
    move v0, p0

    .local v0, "cycleNumber":I
    move v1, p1

    .local v1, "dayOfCycle":I
    move v2, p2

    .local v2, "yearInCycle":I
    move v4, v0

    invoke-static {v4}, Ljava/time/chrono/HijrahDate;->getAdjustedCycle(I)[Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .line 1041
    .local v3, "cycles":[Ljava/lang/Integer;
    move v4, v1

    if-lez v4, :cond_0

    .line 1042
    move v4, v1

    move-object v5, v3

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    .line 1044
    .end local v0    # "cycleNumber":I
    :goto_0
    return v0

    .restart local v0    # "cycleNumber":I
    :cond_0
    move-object v4, v3

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v5, v1

    add-int/2addr v4, v5

    move v0, v4

    goto :goto_0
.end method

.method private static getGregorianEpochDay(III)J
    .locals 10

    .prologue
    .line 852
    move v1, p0

    .local v1, "prolepticYear":I
    move v2, p1

    .local v2, "monthOfYear":I
    move v3, p2

    .local v3, "dayOfMonth":I
    move v6, v1

    invoke-static {v6}, Ljava/time/chrono/HijrahDate;->yearToGregorianEpochDay(I)J

    move-result-wide v6

    move-wide v4, v6

    .line 853
    .local v4, "day":J
    move-wide v6, v4

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v9, v1

    invoke-static {v8, v9}, Ljava/time/chrono/HijrahDate;->getMonthDays(II)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v4, v6

    .line 854
    move-wide v6, v4

    move v8, v3

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v4, v6

    .line 855
    move-wide v6, v4

    move-wide v1, v6

    .end local v1    # "prolepticYear":I
    return-wide v1
.end method

.method private static getHijrahDateInfo(J)[I
    .locals 18

    .prologue
    .line 798
    move-wide/from16 v0, p0

    .local v0, "gregorianDays":J
    move-wide v14, v0

    const-wide/32 v16, -0x78274

    sub-long v14, v14, v16

    move-wide v11, v14

    .line 800
    .local v11, "epochDay":J
    move-wide v14, v11

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_0

    .line 801
    move-wide v14, v11

    invoke-static {v14, v15}, Ljava/time/chrono/HijrahDate;->getCycleNumber(J)I

    move-result v14

    move v8, v14

    .line 802
    .local v8, "cycleNumber":I
    move-wide v14, v11

    move/from16 v16, v8

    invoke-static/range {v14 .. v16}, Ljava/time/chrono/HijrahDate;->getDayOfCycle(JI)I

    move-result v14

    move v10, v14

    .line 803
    .local v10, "dayOfCycle":I
    move v14, v8

    move v15, v10

    int-to-long v15, v15

    invoke-static/range {v14 .. v16}, Ljava/time/chrono/HijrahDate;->getYearInCycle(IJ)I

    move-result v14

    move v9, v14

    .line 804
    .local v9, "yearInCycle":I
    move v14, v8

    move v15, v10

    move/from16 v16, v9

    invoke-static/range {v14 .. v16}, Ljava/time/chrono/HijrahDate;->getDayOfYear(III)I

    move-result v14

    move v7, v14

    .line 806
    .local v7, "dayOfYear":I
    move v14, v8

    const/16 v15, 0x1e

    mul-int/lit8 v14, v14, 0x1e

    move v15, v9

    add-int/2addr v14, v15

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v3, v14

    .line 807
    .local v3, "year":I
    move v14, v7

    move v15, v3

    invoke-static {v14, v15}, Ljava/time/chrono/HijrahDate;->getMonthOfYear(II)I

    move-result v14

    move v4, v14

    .line 808
    .local v4, "month":I
    move v14, v7

    move v15, v4

    move/from16 v16, v3

    invoke-static/range {v14 .. v16}, Ljava/time/chrono/HijrahDate;->getDayOfMonth(III)I

    move-result v14

    move v5, v14

    .line 809
    .local v5, "date":I
    add-int/lit8 v5, v5, 0x1

    .line 810
    sget-object v14, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    invoke-virtual {v14}, Ljava/time/chrono/HijrahEra;->getValue()I

    move-result v14

    move v2, v14

    .line 830
    .local v2, "era":I
    :goto_0
    move-wide v14, v11

    const-wide/16 v16, 0x5

    add-long v14, v14, v16

    const-wide/16 v16, 0x7

    rem-long v14, v14, v16

    long-to-int v14, v14

    move v6, v14

    .line 831
    .local v6, "dayOfWeek":I
    move v14, v6

    move v15, v6

    if-gtz v15, :cond_3

    const/4 v15, 0x7

    :goto_1
    add-int/2addr v14, v15

    move v6, v14

    .line 833
    const/4 v14, 0x6

    new-array v14, v14, [I

    move-object v13, v14

    .line 834
    .local v13, "dateInfo":[I
    move-object v14, v13

    const/4 v15, 0x0

    move/from16 v16, v2

    aput v16, v14, v15

    .line 835
    move-object v14, v13

    const/4 v15, 0x1

    move/from16 v16, v3

    aput v16, v14, v15

    .line 836
    move-object v14, v13

    const/4 v15, 0x2

    move/from16 v16, v4

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v15

    .line 837
    move-object v14, v13

    const/4 v15, 0x3

    move/from16 v16, v5

    aput v16, v14, v15

    .line 838
    move-object v14, v13

    const/4 v15, 0x4

    move/from16 v16, v7

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v15

    .line 839
    move-object v14, v13

    const/4 v15, 0x5

    move/from16 v16, v6

    aput v16, v14, v15

    .line 840
    move-object v14, v13

    move-object v0, v14

    .end local v0    # "gregorianDays":J
    return-object v0

    .line 812
    .end local v2    # "era":I
    .end local v3    # "year":I
    .end local v4    # "month":I
    .end local v5    # "date":I
    .end local v6    # "dayOfWeek":I
    .end local v7    # "dayOfYear":I
    .end local v8    # "cycleNumber":I
    .end local v9    # "yearInCycle":I
    .end local v10    # "dayOfCycle":I
    .end local v13    # "dateInfo":[I
    .restart local v0    # "gregorianDays":J
    :cond_0
    move-wide v14, v11

    long-to-int v14, v14

    const/16 v15, 0x2987

    div-int/lit16 v14, v14, 0x2987

    move v8, v14

    .line 813
    .restart local v8    # "cycleNumber":I
    move-wide v14, v11

    long-to-int v14, v14

    const/16 v15, 0x2987

    rem-int/lit16 v14, v14, 0x2987

    move v10, v14

    .line 814
    .restart local v10    # "dayOfCycle":I
    move v14, v10

    if-nez v14, :cond_1

    .line 815
    const/16 v14, -0x2987

    move v10, v14

    .line 816
    add-int/lit8 v8, v8, 0x1

    .line 818
    :cond_1
    move v14, v8

    move v15, v10

    int-to-long v15, v15

    invoke-static/range {v14 .. v16}, Ljava/time/chrono/HijrahDate;->getYearInCycle(IJ)I

    move-result v14

    move v9, v14

    .line 819
    .restart local v9    # "yearInCycle":I
    move v14, v8

    move v15, v10

    move/from16 v16, v9

    invoke-static/range {v14 .. v16}, Ljava/time/chrono/HijrahDate;->getDayOfYear(III)I

    move-result v14

    move v7, v14

    .line 820
    .restart local v7    # "dayOfYear":I
    move v14, v8

    const/16 v15, 0x1e

    mul-int/lit8 v14, v14, 0x1e

    move v15, v9

    sub-int/2addr v14, v15

    move v3, v14

    .line 821
    .restart local v3    # "year":I
    const/4 v14, 0x1

    move v15, v3

    rsub-int/lit8 v14, v15, 0x1

    move v3, v14

    .line 822
    move v14, v3

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/time/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v14

    if-eqz v14, :cond_2

    move v14, v7

    const/16 v15, 0x163

    add-int/lit16 v14, v14, 0x163

    :goto_2
    move v7, v14

    .line 824
    move v14, v7

    move v15, v3

    invoke-static {v14, v15}, Ljava/time/chrono/HijrahDate;->getMonthOfYear(II)I

    move-result v14

    move v4, v14

    .line 825
    .restart local v4    # "month":I
    move v14, v7

    move v15, v4

    move/from16 v16, v3

    invoke-static/range {v14 .. v16}, Ljava/time/chrono/HijrahDate;->getDayOfMonth(III)I

    move-result v14

    move v5, v14

    .line 826
    .restart local v5    # "date":I
    add-int/lit8 v5, v5, 0x1

    .line 827
    sget-object v14, Ljava/time/chrono/HijrahEra;->BEFORE_AH:Ljava/time/chrono/HijrahEra;

    invoke-virtual {v14}, Ljava/time/chrono/HijrahEra;->getValue()I

    move-result v14

    move v2, v14

    .restart local v2    # "era":I
    goto/16 :goto_0

    .line 822
    .end local v2    # "era":I
    .end local v4    # "month":I
    .end local v5    # "date":I
    :cond_2
    move v14, v7

    const/16 v15, 0x162

    add-int/lit16 v14, v14, 0x162

    goto :goto_2

    .line 831
    .restart local v2    # "era":I
    .restart local v4    # "month":I
    .restart local v5    # "date":I
    .restart local v6    # "dayOfWeek":I
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_1
.end method

.method static getMaximumDayOfMonth()I
    .locals 2

    .prologue
    .line 1186
    sget-object v0, Ljava/time/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getMaximumDayOfYear()I
    .locals 2

    .prologue
    .line 1204
    sget-object v0, Ljava/time/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getMonthDays(II)I
    .locals 5

    .prologue
    .line 1125
    move v0, p0

    .local v0, "month":I
    move v1, p1

    .local v1, "year":I
    move v3, v1

    invoke-static {v3}, Ljava/time/chrono/HijrahDate;->getAdjustedMonthDays(I)[Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .line 1126
    .local v2, "newMonths":[Ljava/lang/Integer;
    move-object v3, v2

    move v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    .end local v0    # "month":I
    return v0
.end method

.method static getMonthLength(II)I
    .locals 5

    .prologue
    .line 1137
    move v0, p0

    .local v0, "month":I
    move v1, p1

    .local v1, "year":I
    move v3, v1

    invoke-static {v3}, Ljava/time/chrono/HijrahDate;->getAdjustedMonthLength(I)[Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .line 1138
    .local v2, "newMonths":[Ljava/lang/Integer;
    move-object v3, v2

    move v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    .end local v0    # "month":I
    return v0
.end method

.method private static getMonthOfYear(II)I
    .locals 7

    .prologue
    .line 1057
    move v0, p0

    .local v0, "dayOfYear":I
    move v1, p1

    .local v1, "year":I
    move v4, v1

    invoke-static {v4}, Ljava/time/chrono/HijrahDate;->getAdjustedMonthDays(I)[Ljava/lang/Integer;

    move-result-object v4

    move-object v2, v4

    .line 1059
    .local v2, "newMonths":[Ljava/lang/Integer;
    move v4, v0

    if-ltz v4, :cond_2

    .line 1060
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 1061
    move v4, v0

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1062
    move v4, v3

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v0, v4

    .line 1074
    .end local v0    # "dayOfYear":I
    :goto_1
    return v0

    .line 1060
    .restart local v0    # "dayOfYear":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1065
    :cond_1
    const/16 v4, 0xb

    move v0, v4

    goto :goto_1

    .line 1067
    .end local v3    # "i":I
    :cond_2
    move v4, v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/time/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v0

    const/16 v5, 0x163

    add-int/lit16 v4, v4, 0x163

    :goto_2
    move v0, v4

    .line 1069
    const/4 v4, 0x0

    move v3, v4

    .restart local v3    # "i":I
    :goto_3
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 1070
    move v4, v0

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1071
    move v4, v3

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v0, v4

    goto :goto_1

    .line 1067
    .end local v3    # "i":I
    :cond_3
    move v4, v0

    const/16 v5, 0x162

    add-int/lit16 v4, v4, 0x162

    goto :goto_2

    .line 1069
    .restart local v3    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1074
    :cond_5
    const/16 v4, 0xb

    move v0, v4

    goto :goto_1
.end method

.method static getSmallestMaximumDayOfMonth()I
    .locals 2

    .prologue
    .line 1195
    sget-object v0, Ljava/time/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getSmallestMaximumDayOfYear()I
    .locals 2

    .prologue
    .line 1213
    sget-object v0, Ljava/time/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getYearInCycle(IJ)I
    .locals 11

    .prologue
    .line 941
    move v1, p0

    .local v1, "cycleNumber":I
    move-wide v2, p1

    .local v2, "dayOfCycle":J
    move v6, v1

    invoke-static {v6}, Ljava/time/chrono/HijrahDate;->getAdjustedCycle(I)[Ljava/lang/Integer;

    move-result-object v6

    move-object v4, v6

    .line 942
    .local v4, "cycles":[Ljava/lang/Integer;
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 943
    const/4 v6, 0x0

    move v1, v6

    .line 960
    .end local v1    # "cycleNumber":I
    :goto_0
    return v1

    .line 946
    .restart local v1    # "cycleNumber":I
    :cond_0
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 947
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move-object v7, v4

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 948
    move-wide v6, v2

    move-object v8, v4

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 949
    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v1, v6

    goto :goto_0

    .line 947
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 952
    :cond_2
    const/16 v6, 0x1d

    move v1, v6

    goto :goto_0

    .line 954
    .end local v5    # "i":I
    :cond_3
    move-wide v6, v2

    neg-long v6, v6

    move-wide v2, v6

    .line 955
    const/4 v6, 0x0

    move v5, v6

    .restart local v5    # "i":I
    :goto_2
    move v6, v5

    move-object v7, v4

    array-length v7, v7

    if-ge v6, v7, :cond_5

    .line 956
    move-wide v6, v2

    move-object v8, v4

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_4

    .line 957
    move v6, v5

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v1, v6

    goto :goto_0

    .line 955
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 960
    :cond_5
    const/16 v6, 0x1d

    move v1, v6

    goto :goto_0
.end method

.method static getYearLength(I)I
    .locals 7

    .prologue
    .line 1154
    move v0, p0

    .local v0, "year":I
    move v4, v0

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x1e

    div-int/lit8 v4, v4, 0x1e

    move v1, v4

    .line 1157
    .local v1, "cycleNumber":I
    :try_start_0
    sget-object v4, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 1160
    .line 1161
    .local v2, "cycleYears":[Ljava/lang/Integer;
    :goto_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 1162
    move v4, v0

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x1e

    rem-int/lit8 v4, v4, 0x1e

    move v3, v4

    .line 1163
    .local v3, "yearInCycle":I
    move v4, v3

    const/16 v5, 0x1d

    if-ne v4, v5, :cond_0

    .line 1164
    sget-object v4, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    sget-object v5, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move v6, v1

    aget-object v5, v5, v6

    .line 1165
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    .line 1166
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    .line 1171
    .end local v0    # "year":I
    .end local v3    # "yearInCycle":I
    :goto_1
    return v0

    .line 1158
    .end local v2    # "cycleYears":[Ljava/lang/Integer;
    .restart local v0    # "year":I
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1159
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v4, 0x0

    move-object v2, v4

    .restart local v2    # "cycleYears":[Ljava/lang/Integer;
    goto :goto_0

    .line 1168
    .local v3, "yearInCycle":I
    :cond_0
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    .line 1169
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    move v0, v4

    goto :goto_1

    .line 1171
    .end local v3    # "yearInCycle":I
    :cond_1
    move v4, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/time/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x163

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_2
    const/16 v4, 0x162

    goto :goto_2
.end method

.method static isLeapYear(J)Z
    .locals 10

    .prologue
    .line 1114
    move-wide v0, p0

    .local v0, "year":J
    const-wide/16 v2, 0xe

    const-wide/16 v4, 0xb

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    move-wide v6, v0

    :goto_0
    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1e

    rem-long/2addr v2, v4

    const-wide/16 v4, 0xb

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .end local v0    # "year":J
    return v0

    .restart local v0    # "year":J
    :cond_0
    move-wide v6, v0

    neg-long v6, v6

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static now()Ljava/time/chrono/HijrahDate;
    .locals 1

    .prologue
    .line 438
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/HijrahDate;->now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;
    .locals 3

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "clock":Ljava/time/Clock;
    sget-object v1, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "clock":Ljava/time/Clock;
    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;
    .locals 2

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/chrono/HijrahDate;->now(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(III)Ljava/time/chrono/HijrahDate;
    .locals 7

    .prologue
    .line 487
    move v0, p0

    .local v0, "prolepticYear":I
    move v1, p1

    .local v1, "monthOfYear":I
    move v2, p2

    .local v2, "dayOfMonth":I
    move v3, v0

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    sget-object v3, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    move v4, v0

    move v5, v1

    move v6, v2

    .line 488
    invoke-static {v3, v4, v5, v6}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahEra;III)Ljava/time/chrono/HijrahDate;

    move-result-object v3

    .line 489
    :goto_0
    move-object v0, v3

    .end local v0    # "prolepticYear":I
    return-object v0

    .line 488
    .restart local v0    # "prolepticYear":I
    :cond_0
    sget-object v3, Ljava/time/chrono/HijrahEra;->BEFORE_AH:Ljava/time/chrono/HijrahEra;

    const/4 v4, 0x1

    move v5, v0

    rsub-int/lit8 v4, v5, 0x1

    move v5, v1

    move v6, v2

    .line 489
    invoke-static {v3, v4, v5, v6}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahEra;III)Ljava/time/chrono/HijrahDate;

    move-result-object v3

    goto :goto_0
.end method

.method static of(Ljava/time/LocalDate;)Ljava/time/chrono/HijrahDate;
    .locals 9

    .prologue
    .line 553
    move-object v1, p0

    .local v1, "date":Ljava/time/LocalDate;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v4

    move-wide v2, v4

    .line 554
    .local v2, "gregorianDays":J
    new-instance v4, Ljava/time/chrono/HijrahDate;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/HijrahDate;-><init>(J)V

    move-object v1, v4

    .end local v1    # "date":Ljava/time/LocalDate;
    return-object v1
.end method

.method static of(Ljava/time/chrono/HijrahEra;III)Ljava/time/chrono/HijrahDate;
    .locals 11

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "era":Ljava/time/chrono/HijrahEra;
    move v1, p1

    .local v1, "yearOfEra":I
    move v2, p2

    .local v2, "monthOfYear":I
    move v3, p3

    .local v3, "dayOfMonth":I
    move-object v6, v0

    const-string v7, "era"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 506
    move v6, v1

    invoke-static {v6}, Ljava/time/chrono/HijrahDate;->checkValidYearOfEra(I)V

    .line 507
    move v6, v2

    invoke-static {v6}, Ljava/time/chrono/HijrahDate;->checkValidMonth(I)V

    .line 508
    move v6, v3

    invoke-static {v6}, Ljava/time/chrono/HijrahDate;->checkValidDayOfMonth(I)V

    .line 509
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/time/chrono/HijrahEra;->prolepticYear(I)I

    move-result v6

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Ljava/time/chrono/HijrahDate;->getGregorianEpochDay(III)J

    move-result-wide v6

    move-wide v4, v6

    .line 510
    .local v4, "gregorianDays":J
    new-instance v6, Ljava/time/chrono/HijrahDate;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-wide v8, v4

    invoke-direct {v7, v8, v9}, Ljava/time/chrono/HijrahDate;-><init>(J)V

    move-object v0, v6

    .end local v0    # "era":Ljava/time/chrono/HijrahEra;
    return-object v0
.end method

.method static ofEpochDay(J)Ljava/time/chrono/HijrahDate;
    .locals 8

    .prologue
    .line 558
    move-wide v0, p0

    .local v0, "epochDay":J
    new-instance v2, Ljava/time/chrono/HijrahDate;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-wide v4, v0

    invoke-direct {v3, v4, v5}, Ljava/time/chrono/HijrahDate;-><init>(J)V

    move-object v0, v2

    .end local v0    # "epochDay":J
    return-object v0
.end method

.method private static parseLine(Ljava/lang/String;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1558
    move-object/from16 v2, p0

    .local v2, "line":Ljava/lang/String;
    move/from16 v3, p1

    .local v3, "num":I
    new-instance v21, Ljava/util/StringTokenizer;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move-object/from16 v23, v2

    const-string v24, ";"

    invoke-direct/range {v22 .. v24}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v21

    .line 1559
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_0
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1560
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v5, v21

    .line 1561
    .local v5, "deviationElement":Ljava/lang/String;
    move-object/from16 v21, v5

    const/16 v22, 0x3a

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    move/from16 v6, v21

    .line 1562
    .local v6, "offsetIndex":I
    move/from16 v21, v6

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1563
    move-object/from16 v21, v5

    move/from16 v22, v6

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v23, v5

    .line 1564
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    .line 1563
    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v7, v21

    .line 1567
    .local v7, "offsetString":Ljava/lang/String;
    move-object/from16 v21, v7

    :try_start_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    move/from16 v8, v21

    .line 1572
    .line 1573
    .local v8, "offset":I
    move-object/from16 v21, v5

    const/16 v22, 0x2d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    move/from16 v9, v21

    .line 1574
    .local v9, "separatorIndex":I
    move/from16 v21, v9

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1575
    move-object/from16 v21, v5

    const/16 v22, 0x0

    move/from16 v23, v9

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v10, v21

    .line 1577
    .local v10, "startDateStg":Ljava/lang/String;
    move-object/from16 v21, v5

    move/from16 v22, v9

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v23, v6

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v11, v21

    .line 1579
    .local v11, "endDateStg":Ljava/lang/String;
    move-object/from16 v21, v10

    const/16 v22, 0x2f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    move/from16 v12, v21

    .line 1580
    .local v12, "startDateYearSepIndex":I
    move-object/from16 v21, v11

    const/16 v22, 0x2f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    move/from16 v13, v21

    .line 1581
    .local v13, "endDateYearSepIndex":I
    const/16 v21, -0x1

    move/from16 v14, v21

    .line 1582
    .local v14, "startYear":I
    const/16 v21, -0x1

    move/from16 v15, v21

    .line 1583
    .local v15, "endYear":I
    const/16 v21, -0x1

    move/from16 v16, v21

    .line 1584
    .local v16, "startMonth":I
    const/16 v21, -0x1

    move/from16 v17, v21

    .line 1585
    .local v17, "endMonth":I
    move/from16 v21, v12

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 1586
    move-object/from16 v21, v10

    const/16 v22, 0x0

    move/from16 v23, v12

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v18, v21

    .line 1588
    .local v18, "startYearStg":Ljava/lang/String;
    move-object/from16 v21, v10

    move/from16 v22, v12

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v23, v10

    .line 1590
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    .line 1588
    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v19, v21

    .line 1592
    .local v19, "startMonthStg":Ljava/lang/String;
    move-object/from16 v21, v18

    :try_start_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v21

    move/from16 v14, v21

    .line 1597
    .line 1599
    move-object/from16 v21, v19

    :try_start_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v21

    move/from16 v16, v21

    .line 1604
    .line 1605
    .line 1610
    move/from16 v21, v13

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 1611
    move-object/from16 v21, v11

    const/16 v22, 0x0

    move/from16 v23, v13

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v18, v21

    .line 1613
    .local v18, "endYearStg":Ljava/lang/String;
    move-object/from16 v21, v11

    move/from16 v22, v13

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v23, v11

    .line 1614
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    .line 1613
    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v19, v21

    .line 1616
    .local v19, "endMonthStg":Ljava/lang/String;
    move-object/from16 v21, v18

    :try_start_3
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v21

    move/from16 v15, v21

    .line 1621
    .line 1623
    move-object/from16 v21, v19

    :try_start_4
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v21

    move/from16 v17, v21

    .line 1628
    .line 1629
    .line 1634
    move/from16 v21, v14

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move/from16 v21, v16

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move/from16 v21, v15

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move/from16 v21, v17

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 1636
    move/from16 v21, v14

    move/from16 v22, v16

    move/from16 v23, v15

    move/from16 v24, v17

    move/from16 v25, v8

    invoke-static/range {v21 .. v25}, Ljava/time/chrono/HijrahDate;->addDeviationAsHijrah(IIIII)V

    .line 1642
    .line 1647
    .line 1651
    goto/16 :goto_0

    .line 1568
    .end local v8    # "offset":I
    .end local v9    # "separatorIndex":I
    .end local v10    # "startDateStg":Ljava/lang/String;
    .end local v11    # "endDateStg":Ljava/lang/String;
    .end local v12    # "startDateYearSepIndex":I
    .end local v13    # "endDateYearSepIndex":I
    .end local v14    # "startYear":I
    .end local v15    # "endYear":I
    .end local v16    # "startMonth":I
    .end local v17    # "endMonth":I
    .end local v18    # "endYearStg":Ljava/lang/String;
    .end local v19    # "endMonthStg":Ljava/lang/String;
    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .line 1569
    .local v9, "ex":Ljava/lang/NumberFormatException;
    new-instance v21, Ljava/text/ParseException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Offset is not properly set at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v3

    invoke-direct/range {v22 .. v24}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v21

    .line 1593
    .restart local v8    # "offset":I
    .local v9, "separatorIndex":I
    .restart local v10    # "startDateStg":Ljava/lang/String;
    .restart local v11    # "endDateStg":Ljava/lang/String;
    .restart local v12    # "startDateYearSepIndex":I
    .restart local v13    # "endDateYearSepIndex":I
    .restart local v14    # "startYear":I
    .restart local v15    # "endYear":I
    .restart local v16    # "startMonth":I
    .restart local v17    # "endMonth":I
    .local v18, "startYearStg":Ljava/lang/String;
    .local v19, "startMonthStg":Ljava/lang/String;
    :catch_1
    move-exception v21

    move-object/from16 v20, v21

    .line 1594
    .local v20, "ex":Ljava/lang/NumberFormatException;
    new-instance v21, Ljava/text/ParseException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start year is not properly set at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v3

    invoke-direct/range {v22 .. v24}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v21

    .line 1600
    .end local v20    # "ex":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v21

    move-object/from16 v20, v21

    .line 1601
    .restart local v20    # "ex":Ljava/lang/NumberFormatException;
    new-instance v21, Ljava/text/ParseException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start month is not properly set at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v3

    invoke-direct/range {v22 .. v24}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v21

    .line 1606
    .end local v18    # "startYearStg":Ljava/lang/String;
    .end local v19    # "startMonthStg":Ljava/lang/String;
    .end local v20    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v21, Ljava/text/ParseException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start year/month has incorrect format at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v3

    invoke-direct/range {v22 .. v24}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v21

    .line 1617
    .local v18, "endYearStg":Ljava/lang/String;
    .local v19, "endMonthStg":Ljava/lang/String;
    :catch_3
    move-exception v21

    move-object/from16 v20, v21

    .line 1618
    .restart local v20    # "ex":Ljava/lang/NumberFormatException;
    new-instance v21, Ljava/text/ParseException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "End year is not properly set at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v3

    invoke-direct/range {v22 .. v24}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v21

    .line 1624
    .end local v20    # "ex":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v21

    move-object/from16 v20, v21

    .line 1625
    .restart local v20    # "ex":Ljava/lang/NumberFormatException;
    new-instance v21, Ljava/text/ParseException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "End month is not properly set at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v3

    invoke-direct/range {v22 .. v24}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v21

    .line 1630
    .end local v20    # "ex":Ljava/lang/NumberFormatException;
    .local v18, "startYearStg":Ljava/lang/String;
    .local v19, "startMonthStg":Ljava/lang/String;
    :cond_1
    new-instance v21, Ljava/text/ParseException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "End year/month has incorrect format at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v3

    invoke-direct/range {v22 .. v24}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v21

    .line 1639
    .local v18, "endYearStg":Ljava/lang/String;
    .local v19, "endMonthStg":Ljava/lang/String;
    :cond_2
    new-instance v21, Ljava/text/ParseException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown error at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v3

    invoke-direct/range {v22 .. v24}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v21

    .line 1643
    .end local v10    # "startDateStg":Ljava/lang/String;
    .end local v11    # "endDateStg":Ljava/lang/String;
    .end local v12    # "startDateYearSepIndex":I
    .end local v13    # "endDateYearSepIndex":I
    .end local v14    # "startYear":I
    .end local v15    # "endYear":I
    .end local v16    # "startMonth":I
    .end local v17    # "endMonth":I
    .end local v18    # "endYearStg":Ljava/lang/String;
    .end local v19    # "endMonthStg":Ljava/lang/String;
    :cond_3
    new-instance v21, Ljava/text/ParseException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start and end year/month has incorrect format at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v3

    invoke-direct/range {v22 .. v24}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v21

    .line 1648
    .end local v7    # "offsetString":Ljava/lang/String;
    .end local v8    # "offset":I
    .end local v9    # "separatorIndex":I
    :cond_4
    new-instance v21, Ljava/text/ParseException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Offset has incorrect format at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v3

    invoke-direct/range {v22 .. v24}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v21

    .line 1652
    .end local v5    # "deviationElement":Ljava/lang/String;
    .end local v6    # "offsetIndex":I
    :cond_5
    return-void
.end method

.method private static readDeviationConfig()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1530
    invoke-static {}, Ljava/time/chrono/HijrahDate;->getConfigFileInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v0, v5

    .line 1531
    .local v0, "is":Ljava/io/InputStream;
    move-object v5, v0

    if-eqz v5, :cond_1

    .line 1532
    const/4 v5, 0x0

    move-object v1, v5

    .line 1534
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/io/InputStreamReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 1535
    const-string v5, ""

    move-object v2, v5

    .line 1536
    .local v2, "line":Ljava/lang/String;
    const/4 v5, 0x0

    move v3, v5

    .line 1537
    .local v3, "num":I
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v2, v6

    if-eqz v5, :cond_0

    .line 1538
    add-int/lit8 v3, v3, 0x1

    .line 1539
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 1540
    move-object v5, v2

    move v6, v3

    invoke-static {v5, v6}, Ljava/time/chrono/HijrahDate;->parseLine(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1543
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 1544
    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1548
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "num":I
    :cond_1
    return-void

    .line 1543
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    if-eqz v5, :cond_2

    .line 1544
    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_2
    move-object v5, v4

    throw v5
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1770
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v4

    move v1, v4

    .line 1771
    .local v1, "year":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readByte()B

    move-result v4

    move v2, v4

    .line 1772
    .local v2, "month":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readByte()B

    move-result v4

    move v3, v4

    .line 1773
    .local v3, "dayOfMonth":I
    sget-object v4, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 612
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    new-instance v2, Ljava/time/chrono/HijrahDate;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/chrono/HijrahDate;->gregorianEpochDay:J

    invoke-direct {v3, v4, v5}, Ljava/time/chrono/HijrahDate;-><init>(J)V

    move-object v1, v2

    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    return-object v1
.end method

.method private static resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;
    .locals 7

    .prologue
    .line 698
    move v0, p0

    .local v0, "yearOfEra":I
    move v1, p1

    .local v1, "month":I
    move v2, p2

    .local v2, "day":I
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v5, v0

    invoke-static {v4, v5}, Ljava/time/chrono/HijrahDate;->getMonthDays(II)I

    move-result v4

    move v3, v4

    .line 699
    .local v3, "monthDays":I
    move v4, v2

    move v5, v3

    if-le v4, v5, :cond_0

    .line 700
    move v4, v3

    move v2, v4

    .line 702
    :cond_0
    move v4, v0

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Ljava/time/chrono/HijrahDate;->of(III)Ljava/time/chrono/HijrahDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "yearOfEra":I
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1759
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    new-instance v1, Ljava/time/chrono/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x3

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method private static yearToGregorianEpochDay(I)J
    .locals 11

    .prologue
    .line 865
    move v0, p0

    .local v0, "prolepticYear":I
    move v6, v0

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x1e

    div-int/lit8 v6, v6, 0x1e

    move v1, v6

    .line 866
    .local v1, "cycleNumber":I
    move v6, v0

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x1e

    rem-int/lit8 v6, v6, 0x1e

    move v2, v6

    .line 868
    .local v2, "yearInCycle":I
    move v6, v1

    invoke-static {v6}, Ljava/time/chrono/HijrahDate;->getAdjustedCycle(I)[Ljava/lang/Integer;

    move-result-object v6

    move v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    aget-object v6, v6, v7

    .line 869
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v3, v6

    .line 871
    .local v3, "dayInCycle":I
    move v6, v2

    if-gez v6, :cond_0

    .line 872
    move v6, v3

    neg-int v6, v6

    move v3, v6

    .line 878
    :cond_0
    :try_start_0
    sget-object v6, Ljava/time/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move v7, v1

    aget-object v6, v6, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 881
    .line 883
    .local v4, "cycleDays":Ljava/lang/Long;
    :goto_0
    move-object v6, v4

    if-nez v6, :cond_1

    .line 884
    new-instance v6, Ljava/lang/Long;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v1

    const/16 v9, 0x2987

    mul-int/lit16 v8, v8, 0x2987

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    move-object v4, v6

    .line 887
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move v8, v3

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/32 v8, -0x78274

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-wide v0, v6

    .end local v0    # "prolepticYear":I
    return-wide v0

    .line 879
    .end local v4    # "cycleDays":Ljava/lang/Long;
    .restart local v0    # "prolepticYear":I
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 880
    .local v5, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v6, 0x0

    move-object v4, v6

    .restart local v4    # "cycleDays":Ljava/lang/Long;
    goto :goto_0
.end method


# virtual methods
.method public final atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    .local v1, "localTime":Ljava/time/LocalTime;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/AbstractChronology;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/HijrahChronology;
    .locals 2

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    sget-object v1, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public bridge synthetic getEra()Ljava/time/chrono/Era;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/HijrahDate;->getEra()Ljava/time/chrono/HijrahEra;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public getEra()Ljava/time/chrono/HijrahEra;
    .locals 2

    .prologue
    .line 623
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/HijrahDate;->era:Ljava/time/chrono/HijrahEra;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 647
    sget-object v2, Ljava/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 661
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 648
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/HijrahDate;->dayOfWeek:Ljava/time/DayOfWeek;

    invoke-virtual {v2}, Ljava/time/DayOfWeek;->getValue()I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    .line 663
    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    :goto_0
    return-wide v0

    .line 649
    .restart local v0    # "this":Ljava/time/chrono/HijrahDate;
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/HijrahDate;->dayOfWeek:Ljava/time/DayOfWeek;

    invoke-virtual {v2}, Ljava/time/DayOfWeek;->getValue()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x7

    rem-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 650
    :pswitch_2
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/HijrahDate;->dayOfYear:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x7

    rem-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 651
    :pswitch_3
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 652
    :pswitch_4
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/HijrahDate;->dayOfYear:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 653
    :pswitch_5
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 654
    :pswitch_6
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x7

    div-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 655
    :pswitch_7
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/HijrahDate;->dayOfYear:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x7

    div-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 656
    :pswitch_8
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 657
    :pswitch_9
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 658
    :pswitch_a
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 659
    :pswitch_b
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/HijrahDate;->era:Ljava/time/chrono/HijrahEra;

    invoke-virtual {v2}, Ljava/time/chrono/HijrahEra;->getValue()I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 663
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public isLeapYear()Z
    .locals 2

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, v0

    iget-boolean v1, v1, Ljava/time/chrono/HijrahDate;->isLeapYear:Z

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return v0
.end method

.method public lengthOfMonth()I
    .locals 3

    .prologue
    .line 1143
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, v0

    iget v1, v1, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    invoke-static {v1, v2}, Ljava/time/chrono/HijrahDate;->getMonthLength(II)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return v0
.end method

.method public lengthOfYear()I
    .locals 2

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, v0

    iget v1, v1, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    invoke-static {v1}, Ljava/time/chrono/HijrahDate;->getYearLength(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 9

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/HijrahDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;
    .locals 9

    .prologue
    .line 722
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-wide v2, p1

    .local v2, "amountToAdd":J
    move-object v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-super {v5, v6, v7, v8}, Ljava/time/chrono/ChronoDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    check-cast v5, Ljava/time/chrono/HijrahDate;

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    return-object v1
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;
    .locals 4

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/HijrahDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/HijrahDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 9

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoDateImpl;
    .locals 9

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    return-object v1
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;
    .locals 9

    .prologue
    .line 712
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-wide v2, p1

    .local v2, "amountToAdd":J
    move-object v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-super {v5, v6, v7, v8}, Ljava/time/chrono/ChronoDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    check-cast v5, Ljava/time/chrono/HijrahDate;

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    return-object v1
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;
    .locals 4

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/HijrahDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/HijrahDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/HijrahDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method bridge synthetic plusDays(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method plusDays(J)Ljava/time/chrono/HijrahDate;
    .locals 11

    .prologue
    .line 777
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-wide v2, p1

    .local v2, "days":J
    new-instance v4, Ljava/time/chrono/HijrahDate;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    iget-wide v6, v6, Ljava/time/chrono/HijrahDate;->gregorianEpochDay:J

    move-wide v8, v2

    add-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/time/chrono/HijrahDate;-><init>(J)V

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    return-object v1
.end method

.method bridge synthetic plusMonths(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/HijrahDate;->plusMonths(J)Ljava/time/chrono/HijrahDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method plusMonths(J)Ljava/time/chrono/HijrahDate;
    .locals 11

    .prologue
    .line 760
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-wide v2, p1

    .local v2, "months":J
    move-wide v7, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 761
    move-object v7, v1

    move-object v1, v7

    .line 772
    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    :goto_0
    return-object v1

    .line 763
    .restart local v1    # "this":Ljava/time/chrono/HijrahDate;
    :cond_0
    move-object v7, v1

    iget v7, v7, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .line 764
    .local v4, "newMonth":I
    move v7, v4

    move-wide v8, v2

    long-to-int v8, v8

    add-int/2addr v7, v8

    move v4, v7

    .line 765
    move v7, v4

    const/16 v8, 0xc

    div-int/lit8 v7, v7, 0xc

    move v5, v7

    .line 766
    .local v5, "years":I
    move v7, v4

    const/16 v8, 0xc

    rem-int/lit8 v7, v7, 0xc

    move v4, v7

    .line 767
    :goto_1
    move v7, v4

    if-gez v7, :cond_1

    .line 768
    add-int/lit8 v4, v4, 0xc

    .line 769
    move v7, v5

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v7

    move v5, v7

    goto :goto_1

    .line 771
    :cond_1
    move-object v7, v1

    iget v7, v7, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    move v8, v5

    invoke-static {v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v7

    move v6, v7

    .line 772
    .local v6, "newYear":I
    move-object v7, v1

    iget-object v7, v7, Ljava/time/chrono/HijrahDate;->era:Ljava/time/chrono/HijrahEra;

    move v8, v6

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v1

    iget v10, v10, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v7, v8, v9, v10}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahEra;III)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    goto :goto_0
.end method

.method bridge synthetic plusYears(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/HijrahDate;->plusYears(J)Ljava/time/chrono/HijrahDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method plusYears(J)Ljava/time/chrono/HijrahDate;
    .locals 9

    .prologue
    .line 751
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-wide v2, p1

    .local v2, "years":J
    move-wide v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 752
    move-object v5, v1

    move-object v1, v5

    .line 755
    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    :goto_0
    return-object v1

    .line 754
    .restart local v1    # "this":Ljava/time/chrono/HijrahDate;
    :cond_0
    move-object v5, v1

    iget v5, v5, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    move-wide v6, v2

    long-to-int v6, v6

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v5

    move v4, v5

    .line 755
    .local v4, "newYear":I
    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/HijrahDate;->era:Ljava/time/chrono/HijrahEra;

    move v6, v4

    move-object v7, v1

    iget v7, v7, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    move-object v8, v1

    iget v8, v8, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v5, v6, v7, v8}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahEra;III)Ljava/time/chrono/HijrahDate;

    move-result-object v5

    move-object v1, v5

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 9

    .prologue
    .line 628
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v4, v2

    instance-of v4, v4, Ljava/time/temporal/ChronoField;

    if-eqz v4, :cond_1

    .line 629
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/chrono/HijrahDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 630
    move-object v4, v2

    check-cast v4, Ljava/time/temporal/ChronoField;

    move-object v3, v4

    .line 631
    .local v3, "f":Ljava/time/temporal/ChronoField;
    sget-object v4, Ljava/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v5, v3

    invoke-virtual {v5}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 637
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/HijrahDate;->getChronology()Ljava/time/chrono/HijrahChronology;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/chrono/HijrahChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    .line 641
    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    .end local v3    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v1

    .line 632
    .restart local v1    # "this":Ljava/time/chrono/HijrahDate;
    .restart local v3    # "f":Ljava/time/temporal/ChronoField;
    :pswitch_0
    const-wide/16 v4, 0x1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/chrono/HijrahDate;->lengthOfMonth()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 633
    :pswitch_1
    const-wide/16 v4, 0x1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 634
    :pswitch_2
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x5

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 635
    :pswitch_3
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x3e8

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 639
    .end local v3    # "f":Ljava/time/temporal/ChronoField;
    :cond_0
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 641
    :cond_1
    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 4

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, v0

    iget v1, v1, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v1, v2, v3}, Ljava/time/chrono/HijrahDate;->getGregorianEpochDay(III)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-wide v0
.end method

.method public bridge synthetic until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-wide v0
.end method

.method public bridge synthetic until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;
    .locals 4

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/HijrahDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;
    .locals 14

    .prologue
    .line 674
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/HijrahDate;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-wide/from16 v3, p2

    .local v3, "newValue":J
    move-object v7, v2

    instance-of v7, v7, Ljava/time/temporal/ChronoField;

    if-eqz v7, :cond_1

    .line 675
    move-object v7, v2

    check-cast v7, Ljava/time/temporal/ChronoField;

    move-object v5, v7

    .line 676
    .local v5, "f":Ljava/time/temporal/ChronoField;
    move-object v7, v5

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v7

    .line 677
    move-wide v7, v3

    long-to-int v7, v7

    move v6, v7

    .line 678
    .local v6, "nvalue":I
    sget-object v7, Ljava/time/chrono/HijrahDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v8, v5

    invoke-virtual {v8}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 692
    new-instance v7, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported field: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 679
    :pswitch_0
    move-object v7, v1

    move-wide v8, v3

    move-object v10, v1

    iget-object v10, v10, Ljava/time/chrono/HijrahDate;->dayOfWeek:Ljava/time/DayOfWeek;

    invoke-virtual {v10}, Ljava/time/DayOfWeek;->getValue()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    .line 694
    .end local v1    # "this":Ljava/time/chrono/HijrahDate;
    .end local v5    # "f":Ljava/time/temporal/ChronoField;
    .end local v6    # "nvalue":I
    :goto_0
    return-object v1

    .line 680
    .restart local v1    # "this":Ljava/time/chrono/HijrahDate;
    .restart local v5    # "f":Ljava/time/temporal/ChronoField;
    .restart local v6    # "nvalue":I
    :pswitch_1
    move-object v7, v1

    move-wide v8, v3

    move-object v10, v1

    sget-object v11, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 681
    :pswitch_2
    move-object v7, v1

    move-wide v8, v3

    move-object v10, v1

    sget-object v11, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 682
    :pswitch_3
    move-object v7, v1

    iget v7, v7, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    move-object v8, v1

    iget v8, v8, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    move v9, v6

    invoke-static {v7, v8, v9}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 683
    :pswitch_4
    move-object v7, v1

    iget v7, v7, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    const/16 v9, 0x1e

    div-int/lit8 v8, v8, 0x1e

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0x1e

    rem-int/lit8 v9, v9, 0x1e

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v7, v8, v9}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 684
    :pswitch_5
    new-instance v7, Ljava/time/chrono/HijrahDate;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move v9, v6

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Ljava/time/chrono/HijrahDate;-><init>(J)V

    move-object v1, v7

    goto :goto_0

    .line 685
    :pswitch_6
    move-object v7, v1

    move-wide v8, v3

    move-object v10, v1

    sget-object v11, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x7

    mul-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 686
    :pswitch_7
    move-object v7, v1

    move-wide v8, v3

    move-object v10, v1

    sget-object v11, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11}, Ljava/time/chrono/HijrahDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x7

    mul-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 687
    :pswitch_8
    move-object v7, v1

    iget v7, v7, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    move v8, v6

    move-object v9, v1

    iget v9, v9, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v7, v8, v9}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    goto/16 :goto_0

    .line 688
    :pswitch_9
    move-object v7, v1

    iget v7, v7, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    move v7, v6

    :goto_1
    move-object v8, v1

    iget v8, v8, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    move-object v9, v1

    iget v9, v9, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v7, v8, v9}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    goto/16 :goto_0

    :cond_0
    const/4 v7, 0x1

    move v8, v6

    rsub-int/lit8 v7, v8, 0x1

    goto :goto_1

    .line 689
    :pswitch_a
    move v7, v6

    move-object v8, v1

    iget v8, v8, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    move-object v9, v1

    iget v9, v9, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v7, v8, v9}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    goto/16 :goto_0

    .line 690
    :pswitch_b
    const/4 v7, 0x1

    move-object v8, v1

    iget v8, v8, Ljava/time/chrono/HijrahDate;->yearOfEra:I

    rsub-int/lit8 v7, v8, 0x1

    move-object v8, v1

    iget v8, v8, Ljava/time/chrono/HijrahDate;->monthOfYear:I

    move-object v9, v1

    iget v9, v9, Ljava/time/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v7, v8, v9}, Ljava/time/chrono/HijrahDate;->resolvePreviousValid(III)Ljava/time/chrono/HijrahDate;

    move-result-object v7

    move-object v1, v7

    goto/16 :goto_0

    .line 694
    .end local v5    # "f":Ljava/time/temporal/ChronoField;
    .end local v6    # "nvalue":I
    :cond_1
    move-object v7, v2

    move-object v8, v1

    move-wide v9, v3

    invoke-interface {v7, v8, v9, v10}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v7

    check-cast v7, Ljava/time/chrono/HijrahDate;

    move-object v1, v7

    goto/16 :goto_0

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/HijrahDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/HijrahDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/HijrahDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/HijrahDate;
    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1764
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/HijrahDate;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1765
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1766
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4}, Ljava/time/chrono/HijrahDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1767
    return-void
.end method
