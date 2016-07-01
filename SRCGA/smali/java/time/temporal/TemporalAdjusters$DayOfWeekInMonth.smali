.class final Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/TemporalAdjusters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DayOfWeekInMonth"
.end annotation


# instance fields
.field private final dowValue:I

.field private final ordinal:I


# direct methods
.method private constructor <init>(ILjava/time/DayOfWeek;)V
    .locals 5

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;
    move v1, p1

    .local v1, "ordinal":I
    move-object v2, p2

    .local v2, "dow":Ljava/time/DayOfWeek;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 335
    move-object v3, v0

    move v4, v1

    iput v4, v3, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    .line 336
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/DayOfWeek;->getValue()I

    move-result v4

    iput v4, v3, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;->dowValue:I

    .line 337
    return-void
.end method

.method synthetic constructor <init>(ILjava/time/DayOfWeek;Ljava/time/temporal/TemporalAdjusters$1;)V
    .locals 7

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;
    move v1, p1

    .local v1, "x0":I
    move-object v2, p2

    .local v2, "x1":Ljava/time/DayOfWeek;
    move-object v3, p3

    .local v3, "x2":Ljava/time/temporal/TemporalAdjusters$1;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;-><init>(ILjava/time/DayOfWeek;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 12

    .prologue
    .line 340
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;
    move-object v2, p1

    .local v2, "temporal":Ljava/time/temporal/Temporal;
    move-object v6, v1

    iget v6, v6, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    if-ltz v6, :cond_0

    .line 341
    move-object v6, v2

    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const-wide/16 v8, 0x1

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    move-object v3, v6

    .line 342
    .local v3, "temp":Ljava/time/temporal/Temporal;
    move-object v6, v3

    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v6

    move v4, v6

    .line 343
    .local v4, "curDow":I
    move-object v6, v1

    iget v6, v6, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;->dowValue:I

    move v7, v4

    sub-int/2addr v6, v7

    const/4 v7, 0x7

    add-int/lit8 v6, v6, 0x7

    const/4 v7, 0x7

    rem-int/lit8 v6, v6, 0x7

    move v5, v6

    .line 344
    .local v5, "dowDiff":I
    move v6, v5

    int-to-long v6, v6

    move-object v8, v1

    iget v8, v8, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    int-to-long v8, v8

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x7

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v6, v6

    move v5, v6

    .line 345
    move-object v6, v3

    move v7, v5

    int-to-long v7, v7

    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v6

    move-object v1, v6

    .line 352
    .end local v1    # "this":Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;
    .end local v5    # "dowDiff":I
    :goto_0
    return-object v1

    .line 347
    .end local v3    # "temp":Ljava/time/temporal/Temporal;
    .end local v4    # "curDow":I
    .restart local v1    # "this":Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;
    :cond_0
    move-object v6, v2

    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object v8, v2

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v9}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    move-object v3, v6

    .line 348
    .restart local v3    # "temp":Ljava/time/temporal/Temporal;
    move-object v6, v3

    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v6

    move v4, v6

    .line 349
    .restart local v4    # "curDow":I
    move-object v6, v1

    iget v6, v6, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;->dowValue:I

    move v7, v4

    sub-int/2addr v6, v7

    move v5, v6

    .line 350
    .local v5, "daysDiff":I
    move v6, v5

    if-nez v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    move v5, v6

    .line 351
    move v6, v5

    int-to-long v6, v6

    move-object v8, v1

    iget v8, v8, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;->ordinal:I

    neg-int v8, v8

    int-to-long v8, v8

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x7

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    long-to-int v6, v6

    move v5, v6

    .line 352
    move-object v6, v3

    move v7, v5

    int-to-long v7, v7

    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 350
    :cond_1
    move v6, v5

    if-lez v6, :cond_2

    move v6, v5

    const/4 v7, 0x7

    add-int/lit8 v6, v6, -0x7

    goto :goto_1

    :cond_2
    move v6, v5

    goto :goto_1
.end method
