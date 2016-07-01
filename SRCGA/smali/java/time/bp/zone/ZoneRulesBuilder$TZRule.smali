.class Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
.super Ljava/lang/Object;
.source "ZoneRulesBuilder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/bp/zone/ZoneRulesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TZRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;",
        ">;"
    }
.end annotation


# instance fields
.field private dayOfMonthIndicator:I

.field private dayOfWeek:Ljava/time/DayOfWeek;

.field private month:Ljava/time/Month;

.field private savingAmountSecs:I

.field final synthetic this$0:Ljava/time/bp/zone/ZoneRulesBuilder;

.field private time:Ljava/time/LocalTime;

.field private timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private timeEndOfDay:Z

.field private year:I


# direct methods
.method constructor <init>(Ljava/time/bp/zone/ZoneRulesBuilder;ILjava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V
    .locals 12

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, p1

    .local v1, "this$0":Ljava/time/bp/zone/ZoneRulesBuilder;
    move v2, p2

    .local v2, "year":I
    move-object v3, p3

    .local v3, "month":Ljava/time/Month;
    move/from16 v4, p4

    .local v4, "dayOfMonthIndicator":I
    move-object/from16 v5, p5

    .local v5, "dayOfWeek":Ljava/time/DayOfWeek;
    move-object/from16 v6, p6

    .local v6, "time":Ljava/time/LocalTime;
    move/from16 v7, p7

    .local v7, "timeEndOfDay":Z
    move-object/from16 v8, p8

    .local v8, "timeDefinition":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move/from16 v9, p9

    .local v9, "savingAfterSecs":I
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Ljava/time/bp/zone/ZoneRulesBuilder;

    .line 655
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 656
    move-object v10, v0

    move v11, v2

    iput v11, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    .line 657
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    .line 658
    move-object v10, v0

    move v11, v4

    iput v11, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 659
    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Ljava/time/DayOfWeek;

    .line 660
    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->time:Ljava/time/LocalTime;

    .line 661
    move-object v10, v0

    move v11, v7

    iput-boolean v11, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    .line 662
    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 663
    move-object v10, v0

    move v11, v9

    iput v11, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I

    .line 664
    return-void
.end method

.method static synthetic access$1000(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Z
    .locals 2

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, v0

    iget-boolean v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    move v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return v0
.end method

.method static synthetic access$1100(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .locals 2

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return-object v0
.end method

.method static synthetic access$300(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 2

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, v0

    iget v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I

    move v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return v0
.end method

.method static synthetic access$500(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 2

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, v0

    iget v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    move v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return v0
.end method

.method static synthetic access$502(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;I)I
    .locals 7

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    move v0, v2

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return v0
.end method

.method static synthetic access$600(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/Month;
    .locals 2

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return-object v0
.end method

.method static synthetic access$700(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 2

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, v0

    iget v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    move v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return v0
.end method

.method static synthetic access$800(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/DayOfWeek;
    .locals 2

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Ljava/time/DayOfWeek;

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return-object v0
.end method

.method static synthetic access$900(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/LocalTime;
    .locals 2

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->time:Ljava/time/LocalTime;

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return-object v0
.end method

.method private toLocalDate()Ljava/time/LocalDate;
    .locals 7

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v3, v0

    iget v3, v3, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    if-gez v3, :cond_2

    .line 731
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v5, v0

    iget v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/time/Month;->length(Z)I

    move-result v3

    move v2, v3

    .line 732
    .local v2, "monthLen":I
    move-object v3, v0

    iget v3, v3, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    add-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v3

    move-object v1, v3

    .line 733
    .local v1, "date":Ljava/time/LocalDate;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Ljava/time/DayOfWeek;

    if-eqz v3, :cond_0

    .line 734
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Ljava/time/DayOfWeek;

    invoke-static {v4}, Ljava/time/temporal/TemporalAdjusters;->previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v3

    move-object v1, v3

    .line 736
    .line 742
    .end local v2    # "monthLen":I
    :cond_0
    :goto_0
    move-object v3, v0

    iget-boolean v3, v3, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    if-eqz v3, :cond_1

    .line 743
    move-object v3, v1

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    move-object v1, v3

    .line 745
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return-object v0

    .line 737
    .end local v1    # "date":Ljava/time/LocalDate;
    .restart local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    :cond_2
    move-object v3, v0

    iget v3, v3, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    move-object v5, v0

    iget v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v3

    move-object v1, v3

    .line 738
    .restart local v1    # "date":Ljava/time/LocalDate;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Ljava/time/DayOfWeek;

    if-eqz v3, :cond_0

    .line 739
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Ljava/time/DayOfWeek;

    invoke-static {v4}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;

    invoke-virtual {v2, v3}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->compareTo(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return v0
.end method

.method public compareTo(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I
    .locals 7

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, p1

    .local v1, "other":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v5, v0

    iget v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    move-object v6, v1

    iget v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->year:I

    sub-int/2addr v5, v6

    move v2, v5

    .line 717
    .local v2, "cmp":I
    move v5, v2

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    move-object v6, v1

    iget-object v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    invoke-virtual {v5, v6}, Ljava/time/Month;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    :goto_0
    move v2, v5

    .line 718
    move v5, v2

    if-nez v5, :cond_0

    .line 720
    move-object v5, v0

    invoke-direct {v5}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v5

    move-object v3, v5

    .line 721
    .local v3, "thisDate":Ljava/time/LocalDate;
    move-object v5, v1

    invoke-direct {v5}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v5

    move-object v4, v5

    .line 722
    .local v4, "otherDate":Ljava/time/LocalDate;
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v5

    move v2, v5

    .line 724
    .end local v3    # "thisDate":Ljava/time/LocalDate;
    .end local v4    # "otherDate":Ljava/time/LocalDate;
    :cond_0
    move v5, v2

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->time:Ljava/time/LocalTime;

    move-object v6, v1

    iget-object v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v5, v6}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v5

    :goto_1
    move v2, v5

    .line 725
    move v5, v2

    move v0, v5

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return v0

    .line 717
    .restart local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    :cond_1
    move v5, v2

    goto :goto_0

    .line 724
    :cond_2
    move v5, v2

    goto :goto_1
.end method

.method toTransition(Ljava/time/ZoneOffset;I)Ljava/time/bp/zone/ZoneOffsetTransition;
    .locals 14

    .prologue
    .line 675
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v1, p1

    .local v1, "standardOffset":Ljava/time/ZoneOffset;
    move/from16 v2, p2

    .local v2, "savingsBeforeSecs":I
    move-object v8, v0

    invoke-direct {v8}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v8

    move-object v3, v8

    .line 676
    .local v3, "date":Ljava/time/LocalDate;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Ljava/time/bp/zone/ZoneRulesBuilder;

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/LocalDate;

    move-object v3, v8

    .line 677
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Ljava/time/bp/zone/ZoneRulesBuilder;

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->time:Ljava/time/LocalTime;

    invoke-static {v9, v10}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/LocalDateTime;

    move-object v4, v8

    .line 678
    .local v4, "ldt":Ljava/time/LocalDateTime;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Ljava/time/bp/zone/ZoneRulesBuilder;

    move-object v9, v1

    invoke-virtual {v9}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    move v10, v2

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/ZoneOffset;

    move-object v5, v8

    .line 679
    .local v5, "wallOffset":Ljava/time/ZoneOffset;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Ljava/time/bp/zone/ZoneRulesBuilder;

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v10, v4

    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v9, v10, v11, v12}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/LocalDateTime;

    move-object v6, v8

    .line 680
    .local v6, "dt":Ljava/time/LocalDateTime;
    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->this$0:Ljava/time/bp/zone/ZoneRulesBuilder;

    move-object v9, v1

    invoke-virtual {v9}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    move-object v10, v0

    iget v10, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->savingAmountSecs:I

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/time/bp/zone/ZoneRulesBuilder;->deduplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/ZoneOffset;

    move-object v7, v8

    .line 681
    .local v7, "offsetAfter":Ljava/time/ZoneOffset;
    new-instance v8, Ljava/time/bp/zone/ZoneOffsetTransition;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v6

    move-object v11, v5

    move-object v12, v7

    invoke-direct {v9, v10, v11, v12}, Ljava/time/bp/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object v0, v8

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return-object v0
.end method

.method toTransitionRule(Ljava/time/ZoneOffset;I)Ljava/time/bp/zone/ZoneOffsetTransitionRule;
    .locals 16

    .prologue
    .line 693
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object/from16 v1, p1

    .local v1, "standardOffset":Ljava/time/ZoneOffset;
    move/from16 v2, p2

    .local v2, "savingsBeforeSecs":I
    move-object v4, v0

    iget v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    if-gez v4, :cond_0

    .line 694
    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    sget-object v5, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    if-eq v4, v5, :cond_0

    .line 695
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    invoke-virtual {v5}, Ljava/time/Month;->maxLength()I

    move-result v5

    const/4 v6, 0x6

    add-int/lit8 v5, v5, -0x6

    iput v5, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 698
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    if-eqz v4, :cond_2

    move-object v4, v0

    iget v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    if-lez v4, :cond_2

    move-object v4, v0

    iget v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    const/16 v5, 0x1c

    if-ne v4, v5, :cond_3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    sget-object v5, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_2

    .line 699
    const/16 v4, 0x7d4

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    move-object v6, v0

    iget v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    invoke-static {v4, v5, v6}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v4

    move-object v3, v4

    .line 700
    .local v3, "date":Ljava/time/LocalDate;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v5

    iput-object v5, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    .line 701
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v5

    iput v5, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    .line 702
    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Ljava/time/DayOfWeek;

    if-eqz v4, :cond_1

    .line 703
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Ljava/time/DayOfWeek;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/time/DayOfWeek;->plus(J)Ljava/time/DayOfWeek;

    move-result-object v5

    iput-object v5, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Ljava/time/DayOfWeek;

    .line 705
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    .line 709
    .end local v3    # "date":Ljava/time/LocalDate;
    :cond_2
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->toTransition(Ljava/time/ZoneOffset;I)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v4

    move-object v3, v4

    .line 710
    .local v3, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    new-instance v4, Ljava/time/bp/zone/ZoneOffsetTransitionRule;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->month:Ljava/time/Month;

    move-object v7, v0

    iget v7, v7, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfMonthIndicator:I

    move-object v8, v0

    iget-object v8, v8, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->dayOfWeek:Ljava/time/DayOfWeek;

    move-object v9, v0

    iget-object v9, v9, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->time:Ljava/time/LocalTime;

    move-object v10, v0

    iget-boolean v10, v10, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->timeEndOfDay:Z

    move-object v11, v0

    iget-object v11, v11, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v12, v1

    move-object v13, v3

    .line 712
    invoke-virtual {v13}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v14}, Ljava/time/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v14

    invoke-direct/range {v5 .. v14}, Ljava/time/bp/zone/ZoneOffsetTransitionRule;-><init>(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object v0, v4

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    return-object v0

    .line 698
    .end local v3    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    .restart local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
