.class public final Ljava/time/temporal/TemporalAdjusters;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;,
        Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;,
        Ljava/time/temporal/TemporalAdjusters$Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/TemporalAdjusters;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static dayOfWeekInMonth(ILjava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 8

    .prologue
    .line 320
    move v0, p0

    .local v0, "ordinal":I
    move-object v1, p1

    .local v1, "dayOfWeek":Ljava/time/DayOfWeek;
    move-object v2, v1

    const-string v3, "dayOfWeek"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 321
    new-instance v2, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;-><init>(ILjava/time/DayOfWeek;Ljava/time/temporal/TemporalAdjusters$1;)V

    move-object v0, v2

    .end local v0    # "ordinal":I
    return-object v0
.end method

.method public static firstDayOfMonth()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 101
    # getter for: Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Ljava/time/temporal/TemporalAdjusters$Impl;->access$000()Ljava/time/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static firstDayOfNextMonth()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 144
    # getter for: Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_NEXT_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Ljava/time/temporal/TemporalAdjusters$Impl;->access$200()Ljava/time/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static firstDayOfNextYear()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 205
    # getter for: Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_NEXT_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Ljava/time/temporal/TemporalAdjusters$Impl;->access$500()Ljava/time/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static firstDayOfYear()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 165
    # getter for: Ljava/time/temporal/TemporalAdjusters$Impl;->FIRST_DAY_OF_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Ljava/time/temporal/TemporalAdjusters$Impl;->access$300()Ljava/time/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static firstInMonth(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 7

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "dayOfWeek":Ljava/time/DayOfWeek;
    move-object v1, v0

    const-string v2, "dayOfWeek"

    invoke-static {v1, v2}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 263
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;-><init>(ILjava/time/DayOfWeek;Ljava/time/temporal/TemporalAdjusters$1;)V

    move-object v0, v1

    .end local v0    # "dayOfWeek":Ljava/time/DayOfWeek;
    return-object v0
.end method

.method public static lastDayOfMonth()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 124
    # getter for: Ljava/time/temporal/TemporalAdjusters$Impl;->LAST_DAY_OF_MONTH:Ljava/time/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Ljava/time/temporal/TemporalAdjusters$Impl;->access$100()Ljava/time/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static lastDayOfYear()Ljava/time/temporal/TemporalAdjuster;
    .locals 1

    .prologue
    .line 186
    # getter for: Ljava/time/temporal/TemporalAdjusters$Impl;->LAST_DAY_OF_YEAR:Ljava/time/temporal/TemporalAdjusters$Impl;
    invoke-static {}, Ljava/time/temporal/TemporalAdjusters$Impl;->access$400()Ljava/time/temporal/TemporalAdjusters$Impl;

    move-result-object v0

    return-object v0
.end method

.method public static lastInMonth(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 7

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "dayOfWeek":Ljava/time/DayOfWeek;
    move-object v1, v0

    const-string v2, "dayOfWeek"

    invoke-static {v1, v2}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 284
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, -0x1

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/time/temporal/TemporalAdjusters$DayOfWeekInMonth;-><init>(ILjava/time/DayOfWeek;Ljava/time/temporal/TemporalAdjusters$1;)V

    move-object v0, v1

    .end local v0    # "dayOfWeek":Ljava/time/DayOfWeek;
    return-object v0
.end method

.method public static next(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 7

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "dayOfWeek":Ljava/time/DayOfWeek;
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILjava/time/DayOfWeek;Ljava/time/temporal/TemporalAdjusters$1;)V

    move-object v0, v1

    .end local v0    # "dayOfWeek":Ljava/time/DayOfWeek;
    return-object v0
.end method

.method public static nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 7

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "dayOfWeek":Ljava/time/DayOfWeek;
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILjava/time/DayOfWeek;Ljava/time/temporal/TemporalAdjusters$1;)V

    move-object v0, v1

    .end local v0    # "dayOfWeek":Ljava/time/DayOfWeek;
    return-object v0
.end method

.method public static previous(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 7

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "dayOfWeek":Ljava/time/DayOfWeek;
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x3

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILjava/time/DayOfWeek;Ljava/time/temporal/TemporalAdjusters$1;)V

    move-object v0, v1

    .end local v0    # "dayOfWeek":Ljava/time/DayOfWeek;
    return-object v0
.end method

.method public static previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .locals 7

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "dayOfWeek":Ljava/time/DayOfWeek;
    new-instance v1, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/time/temporal/TemporalAdjusters$RelativeDayOfWeek;-><init>(ILjava/time/DayOfWeek;Ljava/time/temporal/TemporalAdjusters$1;)V

    move-object v0, v1

    .end local v0    # "dayOfWeek":Ljava/time/DayOfWeek;
    return-object v0
.end method
