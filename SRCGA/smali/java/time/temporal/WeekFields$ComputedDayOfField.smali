.class Ljava/time/temporal/WeekFields$ComputedDayOfField;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/WeekFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputedDayOfField"
.end annotation


# static fields
.field private static final DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

.field private static final WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

.field private static final WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

.field private static final WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

.field private static final WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;


# instance fields
.field private final baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final name:Ljava/lang/String;

.field private final range:Ljava/time/temporal/ValueRange;

.field private final rangeUnit:Ljava/time/temporal/TemporalUnit;

.field private final weekDef:Ljava/time/temporal/WeekFields;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 625
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x7

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

    .line 626
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x4

    const-wide/16 v6, 0x6

    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

    .line 627
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x34

    const-wide/16 v6, 0x36

    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    .line 628
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x34

    const-wide/16 v4, 0x35

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    .line 629
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V
    .locals 8

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "weekDef":Ljava/time/temporal/WeekFields;
    move-object v3, p3

    .local v3, "baseUnit":Ljava/time/temporal/TemporalUnit;
    move-object v4, p4

    .local v4, "rangeUnit":Ljava/time/temporal/TemporalUnit;
    move-object v5, p5

    .local v5, "range":Ljava/time/temporal/ValueRange;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 618
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    .line 619
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    .line 620
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 621
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 622
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    .line 623
    return-void
.end method

.method private computeWeek(II)I
    .locals 6

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "day":I
    const/4 v3, 0x7

    move v4, v1

    add-int/2addr v3, v4

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    const/4 v4, 0x7

    div-int/lit8 v3, v3, 0x7

    move v0, v3

    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    return v0
.end method

.method private localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;I)I
    .locals 6

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move v2, p2

    .local v2, "sow":I
    move-object v4, v1

    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    move v3, v4

    .line 659
    .local v3, "isoDow":I
    move v4, v3

    move v5, v2

    sub-int/2addr v4, v5

    const/4 v5, 0x7

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    return v0
.end method

.method private localizedWBY(Ljava/time/temporal/TemporalAccessor;)I
    .locals 16

    .prologue
    .line 695
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object/from16 v2, p1

    .local v2, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v12, v1

    iget-object v12, v12, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v12}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/DayOfWeek;->getValue()I

    move-result v12

    move v3, v12

    .line 696
    .local v3, "sow":I
    move-object v12, v2

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    move v4, v12

    .line 697
    .local v4, "isoDow":I
    move v12, v4

    move v13, v3

    sub-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-static {v12, v13}, Ljava/time/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v5, v12

    .line 698
    .local v5, "dow":I
    move-object v12, v2

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    move v6, v12

    .line 699
    .local v6, "year":I
    move-object v12, v1

    move-object v13, v2

    move v14, v5

    invoke-direct {v12, v13, v14}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;I)J

    move-result-wide v12

    move-wide v7, v12

    .line 700
    .local v7, "woy":J
    move-wide v12, v7

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 701
    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v1, v12

    .line 711
    .end local v1    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :goto_0
    return v1

    .line 702
    .restart local v1    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :cond_0
    move-wide v12, v7

    const-wide/16 v14, 0x35

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 703
    move v12, v6

    move v1, v12

    goto :goto_0

    .line 705
    :cond_1
    move-object v12, v1

    move-object v13, v2

    sget-object v14, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v13

    move v14, v5

    invoke-direct {v12, v13, v14}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v12

    move v9, v12

    .line 706
    .local v9, "offset":I
    move v12, v6

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/time/Year;->isLeap(J)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x16e

    :goto_1
    move v10, v12

    .line 707
    .local v10, "yearLen":I
    move-object v12, v1

    move v13, v9

    move v14, v10

    move-object v15, v1

    iget-object v15, v15, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v15}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v12, v13, v14}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v12

    move v11, v12

    .line 708
    .local v11, "weekIndexOfFirstWeekNextYear":I
    move-wide v12, v7

    move v14, v11

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-ltz v12, :cond_3

    .line 709
    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v1, v12

    goto :goto_0

    .line 706
    .end local v10    # "yearLen":I
    .end local v11    # "weekIndexOfFirstWeekNextYear":I
    :cond_2
    const/16 v12, 0x16d

    goto :goto_1

    .line 711
    .restart local v10    # "yearLen":I
    .restart local v11    # "weekIndexOfFirstWeekNextYear":I
    :cond_3
    move v12, v6

    move v1, v12

    goto :goto_0
.end method

.method private localizedWOWBY(Ljava/time/temporal/TemporalAccessor;)I
    .locals 16

    .prologue
    .line 675
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object/from16 v2, p1

    .local v2, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v12, v1

    iget-object v12, v12, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v12}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/DayOfWeek;->getValue()I

    move-result v12

    move v3, v12

    .line 676
    .local v3, "sow":I
    move-object v12, v2

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    move v4, v12

    .line 677
    .local v4, "isoDow":I
    move v12, v4

    move v13, v3

    sub-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-static {v12, v13}, Ljava/time/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v5, v12

    .line 678
    .local v5, "dow":I
    move-object v12, v1

    move-object v13, v2

    move v14, v5

    invoke-direct {v12, v13, v14}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;I)J

    move-result-wide v12

    move-wide v6, v12

    .line 679
    .local v6, "woy":J
    move-wide v12, v6

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 680
    move-object v12, v2

    invoke-static {v12}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/time/chrono/AbstractChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v12

    const-wide/16 v13, 0x1

    sget-object v15, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v12, v13, v14, v15}, Ljava/time/chrono/AbstractChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v12

    move-object v8, v12

    .line 681
    .local v8, "previous":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v12, v1

    move-object v13, v8

    move v14, v5

    invoke-direct {v12, v13, v14}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;I)J

    move-result-wide v12

    long-to-int v12, v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v1, v12

    .line 691
    .end local v1    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .end local v8    # "previous":Ljava/time/chrono/AbstractChronoLocalDate;
    :goto_0
    return v1

    .line 682
    .restart local v1    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :cond_0
    move-wide v12, v6

    const-wide/16 v14, 0x35

    cmp-long v12, v12, v14

    if-ltz v12, :cond_2

    .line 683
    move-object v12, v1

    move-object v13, v2

    sget-object v14, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v13

    move v14, v5

    invoke-direct {v12, v13, v14}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v12

    move v8, v12

    .line 684
    .local v8, "offset":I
    move-object v12, v2

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    move v9, v12

    .line 685
    .local v9, "year":I
    move v12, v9

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/time/Year;->isLeap(J)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x16e

    :goto_1
    move v10, v12

    .line 686
    .local v10, "yearLen":I
    move-object v12, v1

    move v13, v8

    move v14, v10

    move-object v15, v1

    iget-object v15, v15, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v15}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v12, v13, v14}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v12

    move v11, v12

    .line 687
    .local v11, "weekIndexOfFirstWeekNextYear":I
    move-wide v12, v6

    move v14, v11

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-ltz v12, :cond_2

    .line 688
    move-wide v12, v6

    move v14, v11

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    int-to-long v14, v14

    sub-long/2addr v12, v14

    long-to-int v12, v12

    move v1, v12

    goto :goto_0

    .line 685
    .end local v10    # "yearLen":I
    .end local v11    # "weekIndexOfFirstWeekNextYear":I
    :cond_1
    const/16 v12, 0x16d

    goto :goto_1

    .line 691
    .end local v8    # "offset":I
    .end local v9    # "year":I
    :cond_2
    move-wide v12, v6

    long-to-int v12, v12

    move v1, v12

    goto :goto_0
.end method

.method private localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;I)J
    .locals 8

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move v2, p2

    .local v2, "dow":I
    move-object v5, v1

    sget-object v6, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v5

    move v3, v5

    .line 664
    .local v3, "dom":I
    move-object v5, v0

    move v6, v3

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v5

    move v4, v5

    .line 665
    .local v4, "offset":I
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-direct {v5, v6, v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    int-to-long v5, v5

    move-wide v0, v5

    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    return-wide v0
.end method

.method private localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;I)J
    .locals 8

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move v2, p2

    .local v2, "dow":I
    move-object v5, v1

    sget-object v6, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v5

    move v3, v5

    .line 670
    .local v3, "doy":I
    move-object v5, v0

    move v6, v3

    move v7, v2

    invoke-direct {v5, v6, v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v5

    move v4, v5

    .line 671
    .local v4, "offset":I
    move-object v5, v0

    move v6, v4

    move v7, v3

    invoke-direct {v5, v6, v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    int-to-long v5, v5

    move-wide v0, v5

    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    return-wide v0
.end method

.method static ofDayOfWeekField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .locals 9

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "weekDef":Ljava/time/temporal/WeekFields;
    new-instance v1, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const-string v3, "DayOfWeek"

    move-object v4, v0

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

    invoke-direct/range {v2 .. v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    move-object v0, v1

    .end local v0    # "weekDef":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method static ofWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .locals 9

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "weekDef":Ljava/time/temporal/WeekFields;
    new-instance v1, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const-string v3, "WeekBasedYear"

    move-object v4, v0

    sget-object v5, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    invoke-direct/range {v2 .. v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    move-object v0, v1

    .end local v0    # "weekDef":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method static ofWeekOfMonthField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .locals 9

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "weekDef":Ljava/time/temporal/WeekFields;
    new-instance v1, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const-string v3, "WeekOfMonth"

    move-object v4, v0

    sget-object v5, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

    invoke-direct/range {v2 .. v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    move-object v0, v1

    .end local v0    # "weekDef":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method static ofWeekOfWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .locals 9

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "weekDef":Ljava/time/temporal/WeekFields;
    new-instance v1, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const-string v3, "WeekOfWeekBasedYear"

    move-object v4, v0

    sget-object v5, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    sget-object v7, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    invoke-direct/range {v2 .. v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    move-object v0, v1

    .end local v0    # "weekDef":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method static ofWeekOfYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .locals 9

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "weekDef":Ljava/time/temporal/WeekFields;
    new-instance v1, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    const-string v3, "WeekOfYear"

    move-object v4, v0

    sget-object v5, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v7, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    invoke-direct/range {v2 .. v7}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    move-object v0, v1

    .end local v0    # "weekDef":Ljava/time/temporal/WeekFields;
    return-object v0
.end method

.method private rangeWOWBY(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 17

    .prologue
    .line 979
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object/from16 v2, p1

    .local v2, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v12, v1

    iget-object v12, v12, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v12}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/DayOfWeek;->getValue()I

    move-result v12

    move v3, v12

    .line 980
    .local v3, "sow":I
    move-object v12, v2

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    move v4, v12

    .line 981
    .local v4, "isoDow":I
    move v12, v4

    move v13, v3

    sub-int/2addr v12, v13

    const/4 v13, 0x7

    invoke-static {v12, v13}, Ljava/time/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v5, v12

    .line 982
    .local v5, "dow":I
    move-object v12, v1

    move-object v13, v2

    move v14, v5

    invoke-direct {v12, v13, v14}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;I)J

    move-result-wide v12

    move-wide v6, v12

    .line 983
    .local v6, "woy":J
    move-wide v12, v6

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 984
    move-object v12, v1

    move-object v13, v2

    invoke-static {v13}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/time/chrono/AbstractChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v13

    const-wide/16 v14, 0x2

    sget-object v16, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v13 .. v16}, Ljava/time/chrono/AbstractChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWOWBY(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v12

    move-object v1, v12

    .line 993
    .end local v1    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :goto_0
    return-object v1

    .line 986
    .restart local v1    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :cond_0
    move-object v12, v1

    move-object v13, v2

    sget-object v14, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v13

    move v14, v5

    invoke-direct {v12, v13, v14}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v12

    move v8, v12

    .line 987
    .local v8, "offset":I
    move-object v12, v2

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    move v9, v12

    .line 988
    .local v9, "year":I
    move v12, v9

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/time/Year;->isLeap(J)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x16e

    :goto_1
    move v10, v12

    .line 989
    .local v10, "yearLen":I
    move-object v12, v1

    move v13, v8

    move v14, v10

    move-object v15, v1

    iget-object v15, v15, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v15}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v12, v13, v14}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v12

    move v11, v12

    .line 990
    .local v11, "weekIndexOfFirstWeekNextYear":I
    move-wide v12, v6

    move v14, v11

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-ltz v12, :cond_2

    .line 991
    move-object v12, v1

    move-object v13, v2

    invoke-static {v13}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/time/chrono/AbstractChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v13

    const-wide/16 v14, 0x2

    sget-object v16, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v13 .. v16}, Ljava/time/chrono/AbstractChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWOWBY(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v12

    move-object v1, v12

    goto :goto_0

    .line 988
    .end local v10    # "yearLen":I
    .end local v11    # "weekIndexOfFirstWeekNextYear":I
    :cond_1
    const/16 v12, 0x16d

    goto :goto_1

    .line 993
    .restart local v10    # "yearLen":I
    .restart local v11    # "weekIndexOfFirstWeekNextYear":I
    :cond_2
    const-wide/16 v12, 0x1

    move v14, v11

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    int-to-long v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v12

    move-object v1, v12

    goto :goto_0
.end method

.method private startOfWeekOffset(II)I
    .locals 7

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move v1, p1

    .local v1, "day":I
    move v2, p2

    .local v2, "dow":I
    move v5, v1

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v5

    move v3, v5

    .line 724
    .local v3, "weekStart":I
    move v5, v3

    neg-int v5, v5

    move v4, v5

    .line 725
    .local v4, "offset":I
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v6}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 727
    const/4 v5, 0x7

    move v6, v3

    rsub-int/lit8 v5, v6, 0x7

    move v4, v5

    .line 729
    :cond_0
    move v5, v4

    move v0, v5

    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    return v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 748
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object/from16 v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    move-wide/from16 v2, p2

    .local v2, "newValue":J
    move-object v11, v0

    iget-object v11, v11, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-wide v12, v2

    move-object v14, v0

    invoke-virtual {v11, v12, v13, v14}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v11

    move v4, v11

    .line 749
    .local v4, "newVal":I
    move-object v11, v1

    move-object v12, v0

    invoke-interface {v11, v12}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v11

    move v5, v11

    .line 750
    .local v5, "currentVal":I
    move v11, v4

    move v12, v5

    if-ne v11, v12, :cond_0

    .line 751
    move-object v11, v1

    move-object v0, v11

    .line 779
    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :goto_0
    return-object v0

    .line 753
    .restart local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v12, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v11, v12, :cond_4

    .line 755
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v12}, Ljava/time/temporal/WeekFields;->access$000(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v11

    move v6, v11

    .line 756
    .local v6, "baseWowby":I
    move-wide v11, v2

    move v13, v5

    int-to-long v13, v13

    sub-long/2addr v11, v13

    long-to-double v11, v11

    const-wide v13, 0x404a16b851eb851fL    # 52.1775

    mul-double/2addr v11, v13

    double-to-long v11, v11

    move-wide v7, v11

    .line 757
    .local v7, "diffWeeks":J
    move-object v11, v1

    move-wide v12, v7

    sget-object v14, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v11, v12, v13, v14}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v11

    move-object v9, v11

    .line 758
    .local v9, "result":Ljava/time/temporal/Temporal;
    move-object v11, v9

    move-object v12, v0

    invoke-interface {v11, v12}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v11

    move v12, v4

    if-le v11, v12, :cond_2

    .line 761
    move-object v11, v9

    move-object v12, v0

    iget-object v12, v12, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v12}, Ljava/time/temporal/WeekFields;->access$000(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v11

    move v10, v11

    .line 762
    .local v10, "newWowby":I
    move-object v11, v9

    move v12, v10

    int-to-long v12, v12

    sget-object v14, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v11, v12, v13, v14}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v11

    move-object v9, v11

    .line 775
    :cond_1
    :goto_1
    move-object v11, v9

    move-object v0, v11

    goto :goto_0

    .line 764
    .end local v10    # "newWowby":I
    :cond_2
    move-object v11, v9

    move-object v12, v0

    invoke-interface {v11, v12}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v11

    move v12, v4

    if-ge v11, v12, :cond_3

    .line 766
    move-object v11, v9

    const-wide/16 v12, 0x2

    sget-object v14, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v11, v12, v13, v14}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v11

    move-object v9, v11

    .line 769
    :cond_3
    move-object v11, v9

    move-object v12, v0

    iget-object v12, v12, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v12}, Ljava/time/temporal/WeekFields;->access$000(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v11

    move v10, v11

    .line 770
    .restart local v10    # "newWowby":I
    move-object v11, v9

    move v12, v6

    move v13, v10

    sub-int/2addr v12, v13

    int-to-long v12, v12

    sget-object v14, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v11, v12, v13, v14}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v11

    move-object v9, v11

    .line 771
    move-object v11, v9

    move-object v12, v0

    invoke-interface {v11, v12}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v11

    move v12, v4

    if-le v11, v12, :cond_1

    .line 772
    move-object v11, v9

    const-wide/16 v12, 0x1

    sget-object v14, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v11, v12, v13, v14}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v11

    move-object v9, v11

    goto :goto_1

    .line 778
    .end local v6    # "baseWowby":I
    .end local v7    # "diffWeeks":J
    .end local v9    # "result":Ljava/time/temporal/Temporal;
    .end local v10    # "newWowby":I
    :cond_4
    move v11, v4

    move v12, v5

    sub-int/2addr v11, v12

    move v6, v11

    .line 779
    .local v6, "delta":I
    move-object v11, v1

    move v12, v6

    int-to-long v12, v12

    move-object v14, v0

    iget-object v14, v14, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    invoke-interface {v11, v12, v13, v14}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 906
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v1

    const-string v3, "locale"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 999
    move-object v2, v0

    iget-object v2, v2, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_0

    .line 1000
    const-string v2, "Week"

    move-object v0, v2

    .line 1002
    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .locals 12

    .prologue
    .line 634
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object v2, p1

    .local v2, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v8, v1

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/DayOfWeek;->getValue()I

    move-result v8

    move v3, v8

    .line 635
    .local v3, "sow":I
    move-object v8, v2

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v9}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v8

    move v4, v8

    .line 636
    .local v4, "isoDow":I
    move v8, v4

    move v9, v3

    sub-int/2addr v8, v9

    const/4 v9, 0x7

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 638
    .local v5, "dow":I
    move-object v8, v1

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v9, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_0

    .line 639
    move v8, v5

    int-to-long v8, v8

    move-wide v1, v8

    .line 651
    .end local v1    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :goto_0
    return-wide v1

    .line 640
    .restart local v1    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v9, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_1

    .line 641
    move-object v8, v2

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v9}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v8

    move v6, v8

    .line 642
    .local v6, "dom":I
    move-object v8, v1

    move v9, v6

    move v10, v5

    invoke-direct {v8, v9, v10}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v8

    move v7, v8

    .line 643
    .local v7, "offset":I
    move-object v8, v1

    move v9, v7

    move v10, v6

    invoke-direct {v8, v9, v10}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v8

    int-to-long v8, v8

    move-wide v1, v8

    goto :goto_0

    .line 644
    .end local v6    # "dom":I
    .end local v7    # "offset":I
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v9, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_2

    .line 645
    move-object v8, v2

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v9}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v8

    move v6, v8

    .line 646
    .local v6, "doy":I
    move-object v8, v1

    move v9, v6

    move v10, v5

    invoke-direct {v8, v9, v10}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v8

    move v7, v8

    .line 647
    .restart local v7    # "offset":I
    move-object v8, v1

    move v9, v7

    move v10, v6

    invoke-direct {v8, v9, v10}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v8

    int-to-long v8, v8

    move-wide v1, v8

    goto :goto_0

    .line 648
    .end local v6    # "doy":I
    .end local v7    # "offset":I
    :cond_2
    move-object v8, v1

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v9, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v8, v9, :cond_3

    .line 649
    move-object v8, v1

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWOWBY(Ljava/time/temporal/TemporalAccessor;)I

    move-result v8

    int-to-long v8, v8

    move-wide v1, v8

    goto :goto_0

    .line 650
    :cond_3
    move-object v8, v1

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v9, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_4

    .line 651
    move-object v8, v1

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWBY(Ljava/time/temporal/TemporalAccessor;)I

    move-result v8

    int-to-long v8, v8

    move-wide v1, v8

    goto :goto_0

    .line 653
    :cond_4
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "unreachable"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 911
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    return-object v0
.end method

.method public isDateBased()Z
    .locals 2

    .prologue
    .line 922
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    return v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 4

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 933
    move-object v2, v0

    iget-object v2, v2, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_0

    .line 934
    const/4 v2, 0x1

    move v0, v2

    .line 945
    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :goto_0
    return v0

    .line 935
    .restart local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_1

    .line 936
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 937
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_2

    .line 938
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 939
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v3, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v2, v3, :cond_3

    .line 940
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 941
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_4

    .line 942
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 945
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isTimeBased()Z
    .locals 2

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    return v0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .locals 2

    .prologue
    .line 916
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    return-object v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 15

    .prologue
    .line 950
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object/from16 v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v9, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_0

    .line 951
    move-object v8, v0

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-object v0, v8

    .line 974
    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :goto_0
    return-object v0

    .line 954
    .restart local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :cond_0
    const/4 v8, 0x0

    move-object v2, v8

    .line 955
    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v9, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_1

    .line 956
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object v2, v8

    .line 968
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/DayOfWeek;->getValue()I

    move-result v8

    move v3, v8

    .line 969
    .local v3, "sow":I
    move-object v8, v1

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v9}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v8

    move v4, v8

    .line 970
    .local v4, "isoDow":I
    move v8, v4

    move v9, v3

    sub-int/2addr v8, v9

    const/4 v9, 0x7

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v5, v8

    .line 972
    .local v5, "dow":I
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-interface {v9, v10}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v9

    move v10, v5

    invoke-direct {v8, v9, v10}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v8

    move v6, v8

    .line 973
    .local v6, "offset":I
    move-object v8, v1

    move-object v9, v2

    invoke-interface {v8, v9}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v7, v8

    .line 974
    .local v7, "fieldRange":Ljava/time/temporal/ValueRange;
    move-object v8, v0

    move v9, v6

    move-object v10, v7

    invoke-virtual {v10}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-direct {v8, v9, v10}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v8

    int-to-long v8, v8

    move-object v10, v0

    move v11, v6

    move-object v12, v7

    .line 975
    invoke-virtual {v12}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-direct {v10, v11, v12}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v10

    int-to-long v10, v10

    .line 974
    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 957
    .end local v3    # "sow":I
    .end local v4    # "isoDow":I
    .end local v5    # "dow":I
    .end local v6    # "offset":I
    .end local v7    # "fieldRange":Ljava/time/temporal/ValueRange;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v9, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_2

    .line 958
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v2, v8

    goto :goto_1

    .line 959
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v9, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v8, v9, :cond_3

    .line 960
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWOWBY(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 961
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v9, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_4

    .line 962
    move-object v8, v1

    sget-object v9, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v9}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 964
    :cond_4
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const-string v10, "unreachable"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .locals 28
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
    .line 785
    move-object/from16 v3, p0

    .local v3, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    move-object/from16 v4, p1

    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v5, p2

    .local v5, "partialTemporal":Ljava/time/temporal/TemporalAccessor;
    move-object/from16 v6, p3

    .local v6, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/time/DayOfWeek;->getValue()I

    move-result v22

    move/from16 v7, v22

    .line 786
    .local v7, "sow":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    move-object/from16 v22, v0

    sget-object v23, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 787
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 788
    .local v8, "value":J
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-object/from16 v22, v0

    move-wide/from16 v23, v8

    move-object/from16 v25, v3

    invoke-virtual/range {v22 .. v25}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v22

    move/from16 v10, v22

    .line 789
    .local v10, "localDow":I
    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v23, v10

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    add-int v22, v22, v23

    const/16 v23, 0x7

    invoke-static/range {v22 .. v23}, Ljava/time/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v22

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v11, v22

    .line 790
    .local v11, "isoDow":I
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move/from16 v24, v11

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 791
    const/16 v22, 0x0

    move-object/from16 v3, v22

    .line 897
    .end local v3    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .end local v8    # "value":J
    .end local v10    # "localDow":I
    .end local v11    # "isoDow":I
    :goto_0
    return-object v3

    .line 793
    .restart local v3    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    :cond_0
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 794
    const/16 v22, 0x0

    move-object/from16 v3, v22

    goto :goto_0

    .line 798
    :cond_1
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    move-object/from16 v22, v0

    sget-object v23, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 799
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/time/temporal/WeekFields;->access$000(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 800
    const/16 v22, 0x0

    move-object/from16 v3, v22

    goto :goto_0

    .line 802
    :cond_2
    move-object/from16 v22, v5

    invoke-static/range {v22 .. v22}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v22

    move-object/from16 v8, v22

    .line 803
    .local v8, "chrono":Ljava/time/chrono/AbstractChronology;
    sget-object v22, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v23, v4

    sget-object v24, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v22

    move/from16 v9, v22

    .line 804
    .local v9, "isoDow":I
    move/from16 v22, v9

    move/from16 v23, v7

    sub-int v22, v22, v23

    const/16 v23, 0x7

    invoke-static/range {v22 .. v23}, Ljava/time/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v22

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v10, v22

    .line 805
    .local v10, "dow":I
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v22

    move-object/from16 v23, v4

    move-object/from16 v24, v3

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move-object/from16 v25, v3

    invoke-virtual/range {v22 .. v25}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v22

    move/from16 v11, v22

    .line 808
    .local v11, "wby":I
    move-object/from16 v22, v6

    sget-object v23, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 809
    move-object/from16 v22, v8

    move/from16 v23, v11

    const/16 v24, 0x1

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v25

    invoke-virtual/range {v22 .. v25}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v22

    move-object/from16 v12, v22

    .line 810
    .local v12, "date":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/time/temporal/WeekFields;->access$000(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v15, v22

    .line 811
    .local v15, "wowby":J
    move-object/from16 v22, v3

    move-object/from16 v23, v12

    move/from16 v24, v7

    invoke-direct/range {v22 .. v24}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;I)I

    move-result v22

    move/from16 v17, v22

    .line 812
    .local v17, "dateDow":I
    move-wide/from16 v22, v15

    move-object/from16 v24, v3

    move-object/from16 v25, v12

    move/from16 v26, v17

    invoke-direct/range {v24 .. v26}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;I)J

    move-result-wide v24

    sub-long v22, v22, v24

    move-wide/from16 v18, v22

    .line 813
    .local v18, "weeks":J
    move-wide/from16 v22, v18

    const-wide/16 v24, 0x7

    mul-long v22, v22, v24

    move/from16 v24, v10

    move/from16 v25, v17

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v13, v22

    .line 822
    .local v13, "days":J
    :goto_1
    move-object/from16 v22, v12

    move-wide/from16 v23, v13

    sget-object v25, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v22 .. v25}, Ljava/time/chrono/AbstractChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v22

    move-object/from16 v12, v22

    .line 823
    move-object/from16 v22, v6

    sget-object v23, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 824
    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v22 .. v23}, Ljava/time/chrono/AbstractChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v22

    move-object/from16 v24, v4

    move-object/from16 v25, v3

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-eqz v22, :cond_4

    .line 825
    new-instance v22, Ljava/time/DateTimeException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const-string v24, "Strict mode rejected date parsed to a different year"

    invoke-direct/range {v23 .. v24}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 815
    .end local v12    # "date":Ljava/time/chrono/AbstractChronoLocalDate;
    .end local v13    # "days":J
    .end local v15    # "wowby":J
    .end local v17    # "dateDow":I
    .end local v18    # "weeks":J
    :cond_3
    move-object/from16 v22, v8

    move/from16 v23, v11

    const/16 v24, 0x1

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v25

    invoke-virtual/range {v22 .. v25}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v22

    move-object/from16 v12, v22

    .line 816
    .restart local v12    # "date":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/time/temporal/WeekFields;->access$000(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v22

    move-object/from16 v23, v4

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    move-object/from16 v24, v0

    .line 817
    invoke-static/range {v24 .. v24}, Ljava/time/temporal/WeekFields;->access$000(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/time/temporal/WeekFields;->access$000(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v25

    .line 816
    invoke-virtual/range {v22 .. v25}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v15, v22

    .line 818
    .restart local v15    # "wowby":J
    move-object/from16 v22, v3

    move-object/from16 v23, v12

    move/from16 v24, v7

    invoke-direct/range {v22 .. v24}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;I)I

    move-result v22

    move/from16 v17, v22

    .line 819
    .restart local v17    # "dateDow":I
    move-wide/from16 v22, v15

    move-object/from16 v24, v3

    move-object/from16 v25, v12

    move/from16 v26, v17

    invoke-direct/range {v24 .. v26}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;I)J

    move-result-wide v24

    sub-long v22, v22, v24

    move-wide/from16 v18, v22

    .line 820
    .restart local v18    # "weeks":J
    move-wide/from16 v22, v18

    const-wide/16 v24, 0x7

    mul-long v22, v22, v24

    move/from16 v24, v10

    move/from16 v25, v17

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v13, v22

    .restart local v13    # "days":J
    goto/16 :goto_1

    .line 828
    :cond_4
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 829
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/time/temporal/WeekFields;->access$000(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 830
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 831
    move-object/from16 v22, v12

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 834
    .end local v8    # "chrono":Ljava/time/chrono/AbstractChronology;
    .end local v9    # "isoDow":I
    .end local v10    # "dow":I
    .end local v11    # "wby":I
    .end local v12    # "date":Ljava/time/chrono/AbstractChronoLocalDate;
    .end local v13    # "days":J
    .end local v15    # "wowby":J
    .end local v17    # "dateDow":I
    .end local v18    # "weeks":J
    :cond_5
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 835
    const/16 v22, 0x0

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 837
    :cond_6
    sget-object v22, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v23, v4

    sget-object v24, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v22

    move/from16 v8, v22

    .line 838
    .local v8, "isoDow":I
    move/from16 v22, v8

    move/from16 v23, v7

    sub-int v22, v22, v23

    const/16 v23, 0x7

    invoke-static/range {v22 .. v23}, Ljava/time/jdk8/Jdk8Methods;->floorMod(II)I

    move-result v22

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v9, v22

    .line 839
    .local v9, "dow":I
    sget-object v22, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v23, v4

    sget-object v24, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v22

    move/from16 v10, v22

    .line 840
    .local v10, "year":I
    move-object/from16 v22, v5

    invoke-static/range {v22 .. v22}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v22

    move-object/from16 v11, v22

    .line 841
    .local v11, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    move-object/from16 v22, v0

    sget-object v23, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 842
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 843
    const/16 v22, 0x0

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 845
    :cond_7
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 848
    .local v12, "value":J
    move-object/from16 v22, v6

    sget-object v23, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 849
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v17, v22

    .line 850
    .local v17, "month":J
    move-object/from16 v22, v11

    move/from16 v23, v10

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-virtual/range {v22 .. v25}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v22

    move-object/from16 v14, v22

    .line 851
    .local v14, "date":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object/from16 v22, v14

    move-wide/from16 v23, v17

    const-wide/16 v25, 0x1

    sub-long v23, v23, v25

    sget-object v25, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v22 .. v25}, Ljava/time/chrono/AbstractChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v22

    move-object/from16 v14, v22

    .line 852
    move-object/from16 v22, v3

    move-object/from16 v23, v14

    move/from16 v24, v7

    invoke-direct/range {v22 .. v24}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;I)I

    move-result v22

    move/from16 v19, v22

    .line 853
    .local v19, "dateDow":I
    move-wide/from16 v22, v12

    move-object/from16 v24, v3

    move-object/from16 v25, v14

    move/from16 v26, v19

    invoke-direct/range {v24 .. v26}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;I)J

    move-result-wide v24

    sub-long v22, v22, v24

    move-wide/from16 v20, v22

    .line 854
    .local v20, "weeks":J
    move-wide/from16 v22, v20

    const-wide/16 v24, 0x7

    mul-long v22, v22, v24

    move/from16 v24, v9

    move/from16 v25, v19

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v15, v22

    .line 863
    .end local v17    # "month":J
    .end local v19    # "dateDow":I
    .local v15, "days":J
    :goto_2
    move-object/from16 v22, v14

    move-wide/from16 v23, v15

    sget-object v25, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v22 .. v25}, Ljava/time/chrono/AbstractChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v22

    move-object/from16 v14, v22

    .line 864
    move-object/from16 v22, v6

    sget-object v23, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 865
    move-object/from16 v22, v14

    sget-object v23, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v22 .. v23}, Ljava/time/chrono/AbstractChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v22

    move-object/from16 v24, v4

    sget-object v25, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-eqz v22, :cond_9

    .line 866
    new-instance v22, Ljava/time/DateTimeException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const-string v24, "Strict mode rejected date parsed to a different month"

    invoke-direct/range {v23 .. v24}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 856
    .end local v14    # "date":Ljava/time/chrono/AbstractChronoLocalDate;
    .end local v15    # "days":J
    .end local v20    # "weeks":J
    :cond_8
    sget-object v22, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v23, v4

    sget-object v24, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v22

    move/from16 v17, v22

    .line 857
    .local v17, "month":I
    move-object/from16 v22, v11

    move/from16 v23, v10

    move/from16 v24, v17

    const/16 v25, 0x8

    invoke-virtual/range {v22 .. v25}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v22

    move-object/from16 v14, v22

    .line 858
    .restart local v14    # "date":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object/from16 v22, v3

    move-object/from16 v23, v14

    move/from16 v24, v7

    invoke-direct/range {v22 .. v24}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;I)I

    move-result v22

    move/from16 v18, v22

    .line 859
    .local v18, "dateDow":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-object/from16 v22, v0

    move-wide/from16 v23, v12

    move-object/from16 v25, v3

    invoke-virtual/range {v22 .. v25}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v22

    move/from16 v19, v22

    .line 860
    .local v19, "wom":I
    move/from16 v22, v19

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v14

    move/from16 v26, v18

    invoke-direct/range {v24 .. v26}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;I)J

    move-result-wide v24

    sub-long v22, v22, v24

    move-wide/from16 v20, v22

    .line 861
    .restart local v20    # "weeks":J
    move-wide/from16 v22, v20

    const-wide/16 v24, 0x7

    mul-long v22, v22, v24

    move/from16 v24, v9

    move/from16 v25, v18

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v15, v22

    .restart local v15    # "days":J
    goto/16 :goto_2

    .line 869
    .end local v17    # "month":I
    .end local v18    # "dateDow":I
    .end local v19    # "wom":I
    :cond_9
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 870
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 871
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 872
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 873
    move-object/from16 v22, v14

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 874
    .end local v12    # "value":J
    .end local v14    # "date":Ljava/time/chrono/AbstractChronoLocalDate;
    .end local v15    # "days":J
    .end local v20    # "weeks":J
    :cond_a
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    move-object/from16 v22, v0

    sget-object v23, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 875
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 876
    .restart local v12    # "value":J
    move-object/from16 v22, v11

    move/from16 v23, v10

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-virtual/range {v22 .. v25}, Ljava/time/chrono/AbstractChronology;->date(III)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v22

    move-object/from16 v14, v22

    .line 878
    .restart local v14    # "date":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object/from16 v22, v6

    sget-object v23, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 879
    move-object/from16 v22, v3

    move-object/from16 v23, v14

    move/from16 v24, v7

    invoke-direct/range {v22 .. v24}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;I)I

    move-result v22

    move/from16 v17, v22

    .line 880
    .local v17, "dateDow":I
    move-wide/from16 v22, v12

    move-object/from16 v24, v3

    move-object/from16 v25, v14

    move/from16 v26, v17

    invoke-direct/range {v24 .. v26}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;I)J

    move-result-wide v24

    sub-long v22, v22, v24

    move-wide/from16 v18, v22

    .line 881
    .local v18, "weeks":J
    move-wide/from16 v22, v18

    const-wide/16 v24, 0x7

    mul-long v22, v22, v24

    move/from16 v24, v9

    move/from16 v25, v17

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v15, v22

    .line 888
    .end local v18    # "weeks":J
    .restart local v15    # "days":J
    :goto_3
    move-object/from16 v22, v14

    move-wide/from16 v23, v15

    sget-object v25, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual/range {v22 .. v25}, Ljava/time/chrono/AbstractChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v22

    move-object/from16 v14, v22

    .line 889
    move-object/from16 v22, v6

    sget-object v23, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 890
    move-object/from16 v22, v14

    sget-object v23, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v22 .. v23}, Ljava/time/chrono/AbstractChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v22

    move-object/from16 v24, v4

    sget-object v25, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v22, v22, v24

    if-eqz v22, :cond_c

    .line 891
    new-instance v22, Ljava/time/DateTimeException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const-string v24, "Strict mode rejected date parsed to a different year"

    invoke-direct/range {v23 .. v24}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 883
    .end local v15    # "days":J
    .end local v17    # "dateDow":I
    :cond_b
    move-object/from16 v22, v3

    move-object/from16 v23, v14

    move/from16 v24, v7

    invoke-direct/range {v22 .. v24}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;I)I

    move-result v22

    move/from16 v17, v22

    .line 884
    .restart local v17    # "dateDow":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-object/from16 v22, v0

    move-wide/from16 v23, v12

    move-object/from16 v25, v3

    invoke-virtual/range {v22 .. v25}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v22

    move/from16 v18, v22

    .line 885
    .local v18, "woy":I
    move/from16 v22, v18

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v14

    move/from16 v26, v17

    invoke-direct/range {v24 .. v26}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;I)J

    move-result-wide v24

    sub-long v22, v22, v24

    move-wide/from16 v19, v22

    .line 886
    .local v19, "weeks":J
    move-wide/from16 v22, v19

    const-wide/16 v24, 0x7

    mul-long v22, v22, v24

    move/from16 v24, v9

    move/from16 v25, v17

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v15, v22

    .restart local v15    # "days":J
    goto/16 :goto_3

    .line 894
    .end local v18    # "woy":I
    .end local v19    # "weeks":J
    :cond_c
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 895
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 896
    move-object/from16 v22, v4

    sget-object v23, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 897
    move-object/from16 v22, v14

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 899
    .end local v12    # "value":J
    .end local v14    # "date":Ljava/time/chrono/AbstractChronoLocalDate;
    .end local v15    # "days":J
    .end local v17    # "dateDow":I
    :cond_d
    new-instance v22, Ljava/lang/IllegalStateException;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    const-string v24, "unreachable"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v2}, Ljava/time/temporal/WeekFields;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/WeekFields$ComputedDayOfField;
    return-object v0
.end method
