.class final Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;
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
    name = "RelativeDayOfWeek"
.end annotation


# instance fields
.field private final dowValue:I

.field private final relative:I


# direct methods
.method private constructor <init>(ILjava/time/DayOfWeek;)V
    .locals 5

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;
    move v1, p1

    .local v1, "relative":I
    move-object v2, p2

    .local v2, "dayOfWeek":Ljava/time/DayOfWeek;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 450
    move-object v3, v2

    const-string v4, "dayOfWeek"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 451
    move-object v3, v0

    move v4, v1

    iput v4, v3, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;->relative:I

    .line 452
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/DayOfWeek;->getValue()I

    move-result v4

    iput v4, v3, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    .line 453
    return-void
.end method

.method synthetic constructor <init>(ILjava/time/DayOfWeek;Ljava/time/temporal/TemporalAdjusters$1;)V
    .locals 7

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;
    move v1, p1

    .local v1, "x0":I
    move-object v2, p2

    .local v2, "x1":Ljava/time/DayOfWeek;
    move-object v3, p3

    .local v3, "x2":Ljava/time/temporal/TemporalAdjusters$1;
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILjava/time/DayOfWeek;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 457
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;
    move-object v2, p1

    .local v2, "temporal":Ljava/time/temporal/Temporal;
    move-object v5, v2

    sget-object v6, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v5, v6}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v5

    move v3, v5

    .line 458
    .local v3, "calDow":I
    move-object v5, v1

    iget v5, v5, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;->relative:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    move v5, v3

    move-object v6, v1

    iget v6, v6, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    if-ne v5, v6, :cond_0

    .line 459
    move-object v5, v2

    move-object v1, v5

    .line 466
    .end local v1    # "this":Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;
    :goto_0
    return-object v1

    .line 461
    .restart local v1    # "this":Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;
    :cond_0
    move-object v5, v1

    iget v5, v5, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;->relative:I

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 462
    move v5, v3

    move-object v6, v1

    iget v6, v6, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 463
    .local v4, "daysDiff":I
    move-object v5, v2

    move v6, v4

    if-ltz v6, :cond_1

    const/4 v6, 0x7

    move v7, v4

    rsub-int/lit8 v6, v7, 0x7

    int-to-long v6, v6

    :goto_1
    sget-object v8, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    :cond_1
    move v6, v4

    neg-int v6, v6

    int-to-long v6, v6

    goto :goto_1

    .line 465
    .end local v4    # "daysDiff":I
    :cond_2
    move-object v5, v1

    iget v5, v5, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;->dowValue:I

    move v6, v3

    sub-int/2addr v5, v6

    move v4, v5

    .line 466
    .restart local v4    # "daysDiff":I
    move-object v5, v2

    move v6, v4

    if-ltz v6, :cond_3

    const/4 v6, 0x7

    move v7, v4

    rsub-int/lit8 v6, v7, 0x7

    int-to-long v6, v6

    :goto_2
    sget-object v8, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    :cond_3
    move v6, v4

    neg-int v6, v6

    int-to-long v6, v6

    goto :goto_2
.end method
