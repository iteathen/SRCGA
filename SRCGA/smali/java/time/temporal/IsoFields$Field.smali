.class abstract enum Ljava/time/temporal/IsoFields$Field;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/temporal/IsoFields$Field;",
        ">;",
        "Ljava/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/temporal/IsoFields$Field;

.field public static final enum DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

.field private static final QUARTER_DAYS:[I

.field public static final enum QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

.field public static final enum WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 206
    new-instance v0, Ljava/time/temporal/IsoFields$Field$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DAY_OF_QUARTER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/time/temporal/IsoFields$Field$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    .line 298
    new-instance v0, Ljava/time/temporal/IsoFields$Field$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "QUARTER_OF_YEAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/time/temporal/IsoFields$Field$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    .line 339
    new-instance v0, Ljava/time/temporal/IsoFields$Field$3;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WEEK_OF_WEEK_BASED_YEAR"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/time/temporal/IsoFields$Field$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    .line 425
    new-instance v0, Ljava/time/temporal/IsoFields$Field$4;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "WEEK_BASED_YEAR"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljava/time/temporal/IsoFields$Field$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    .line 205
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/time/temporal/IsoFields$Field;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljava/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljava/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljava/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Ljava/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    aput-object v3, v1, v2

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->$VALUES:[Ljava/time/temporal/IsoFields$Field;

    .line 490
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/time/temporal/IsoFields$1;)V
    .locals 7

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move v2, p2

    .local v2, "x1":I
    move-object v3, p3

    .local v3, "x2":Ljava/time/temporal/IsoFields$1;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "x0":Ljava/time/temporal/TemporalAccessor;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/temporal/IsoFields$Field;->isIso(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljava/time/temporal/TemporalAccessor;
    return v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 205
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-object v0
.end method

.method static synthetic access$300(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "x0":Ljava/time/LocalDate;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/LocalDate;
    return-object v0
.end method

.method static synthetic access$400(Ljava/time/LocalDate;)I
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "x0":Ljava/time/LocalDate;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/temporal/IsoFields$Field;->getWeek(Ljava/time/LocalDate;)I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljava/time/LocalDate;
    return v0
.end method

.method static synthetic access$500(Ljava/time/LocalDate;)I
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "x0":Ljava/time/LocalDate;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/temporal/IsoFields$Field;->getWeekBasedYear(Ljava/time/LocalDate;)I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljava/time/LocalDate;
    return v0
.end method

.method static synthetic access$600(I)I
    .locals 2

    .prologue
    .line 205
    move v0, p0

    .local v0, "x0":I
    move v1, v0

    invoke-static {v1}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result v1

    move v0, v1

    .end local v0    # "x0":I
    return v0
.end method

.method private static getWeek(Ljava/time/LocalDate;)I
    .locals 11

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "date":Ljava/time/LocalDate;
    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v8

    move v1, v8

    .line 521
    .local v1, "dow0":I
    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v2, v8

    .line 522
    .local v2, "doy0":I
    move v8, v2

    const/4 v9, 0x3

    move v10, v1

    rsub-int/lit8 v9, v10, 0x3

    add-int/2addr v8, v9

    move v3, v8

    .line 523
    .local v3, "doyThu0":I
    move v8, v3

    const/4 v9, 0x7

    div-int/lit8 v8, v8, 0x7

    move v4, v8

    .line 524
    .local v4, "alignedWeek":I
    move v8, v3

    move v9, v4

    const/4 v10, 0x7

    mul-int/lit8 v9, v9, 0x7

    sub-int/2addr v8, v9

    move v5, v8

    .line 525
    .local v5, "firstThuDoy0":I
    move v8, v5

    const/4 v9, 0x3

    add-int/lit8 v8, v8, -0x3

    move v6, v8

    .line 526
    .local v6, "firstMonDoy0":I
    move v8, v6

    const/4 v9, -0x3

    if-ge v8, v9, :cond_0

    .line 527
    add-int/lit8 v6, v6, 0x7

    .line 529
    :cond_0
    move v8, v2

    move v9, v6

    if-ge v8, v9, :cond_1

    .line 530
    move-object v8, v0

    const/16 v9, 0xb4

    invoke-virtual {v8, v9}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object v8

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/time/LocalDate;->minusYears(J)Ljava/time/LocalDate;

    move-result-object v8

    invoke-static {v8}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    long-to-int v8, v8

    move v0, v8

    .line 538
    .end local v0    # "date":Ljava/time/LocalDate;
    :goto_0
    return v0

    .line 532
    .restart local v0    # "date":Ljava/time/LocalDate;
    :cond_1
    move v8, v2

    move v9, v6

    sub-int/2addr v8, v9

    const/4 v9, 0x7

    div-int/lit8 v8, v8, 0x7

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v7, v8

    .line 533
    .local v7, "week":I
    move v8, v7

    const/16 v9, 0x35

    if-ne v8, v9, :cond_3

    .line 534
    move v8, v6

    const/4 v9, -0x3

    if-eq v8, v9, :cond_2

    move v8, v6

    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    const/4 v8, 0x1

    :goto_1
    if-nez v8, :cond_3

    .line 535
    const/4 v8, 0x1

    move v7, v8

    .line 538
    :cond_3
    move v8, v7

    move v0, v8

    goto :goto_0

    .line 534
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static getWeekBasedYear(Ljava/time/LocalDate;)I
    .locals 6

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "date":Ljava/time/LocalDate;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    move v1, v4

    .line 543
    .local v1, "year":I
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v4

    move v2, v4

    .line 544
    .local v2, "doy":I
    move v4, v2

    const/4 v5, 0x3

    if-gt v4, v5, :cond_1

    .line 545
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v4

    move v3, v4

    .line 546
    .local v3, "dow":I
    move v4, v2

    move v5, v3

    sub-int/2addr v4, v5

    const/4 v5, -0x2

    if-ge v4, v5, :cond_0

    .line 547
    add-int/lit8 v1, v1, -0x1

    .line 549
    .line 556
    .end local v3    # "dow":I
    :cond_0
    :goto_0
    move v4, v1

    move v0, v4

    .end local v0    # "date":Ljava/time/LocalDate;
    return v0

    .line 549
    .restart local v0    # "date":Ljava/time/LocalDate;
    :cond_1
    move v4, v2

    const/16 v5, 0x16b

    if-lt v4, v5, :cond_0

    .line 550
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v4

    move v3, v4

    .line 551
    .restart local v3    # "dow":I
    move v4, v2

    const/16 v5, 0x16b

    add-int/lit16 v4, v4, -0x16b

    move-object v5, v0

    invoke-virtual {v5}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    sub-int/2addr v4, v5

    move v2, v4

    .line 552
    move v4, v2

    move v5, v3

    sub-int/2addr v4, v5

    if-ltz v4, :cond_0

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 551
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static getWeekRange(I)I
    .locals 5

    .prologue
    .line 511
    move v0, p0

    .local v0, "wby":I
    move v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    move-object v1, v2

    .line 513
    .local v1, "date":Ljava/time/LocalDate;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v2

    sget-object v3, Ljava/time/DayOfWeek;->THURSDAY:Ljava/time/DayOfWeek;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v2

    sget-object v3, Ljava/time/DayOfWeek;->WEDNESDAY:Ljava/time/DayOfWeek;

    if-ne v2, v3, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    :cond_0
    const/16 v2, 0x35

    move v0, v2

    .line 516
    .end local v0    # "wby":I
    :goto_0
    return v0

    .restart local v0    # "wby":I
    :cond_1
    const/16 v2, 0x34

    move v0, v2

    goto :goto_0
.end method

.method private static getWeekRange(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;
    .locals 6

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "date":Ljava/time/LocalDate;
    move-object v2, v0

    invoke-static {v2}, Ljava/time/temporal/IsoFields$Field;->getWeekBasedYear(Ljava/time/LocalDate;)I

    move-result v2

    move v1, v2

    .line 507
    .local v1, "wby":I
    const-wide/16 v2, 0x1

    move v4, v1

    invoke-static {v4}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "date":Ljava/time/LocalDate;
    return-object v0
.end method

.method private static isIso(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 3

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v1

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v1, v2}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/temporal/IsoFields$Field;
    .locals 3

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljava/time/temporal/IsoFields$Field;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/IsoFields$Field;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljava/time/temporal/IsoFields$Field;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->$VALUES:[Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v0}, [Ljava/time/temporal/IsoFields$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/IsoFields$Field;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v1

    const-string v3, "locale"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 480
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/temporal/IsoFields$Field;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field;
    return-object v0
.end method

.method public isDateBased()Z
    .locals 2

    .prologue
    .line 494
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field;
    return v0
.end method

.method public isTimeBased()Z
    .locals 2

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field;
    return v0
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
    .line 486
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field;
    move-object v1, p1

    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object v2, p2

    .local v2, "partialTemporal":Ljava/time/temporal/TemporalAccessor;
    move-object v3, p3

    .local v3, "resolverStyle":Ljava/time/format/ResolverStyle;
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field;
    return-object v0
.end method
