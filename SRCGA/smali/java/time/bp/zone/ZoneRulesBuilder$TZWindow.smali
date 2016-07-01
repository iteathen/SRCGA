.class Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
.super Ljava/lang/Object;
.source "ZoneRulesBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/bp/zone/ZoneRulesBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TZWindow"
.end annotation


# instance fields
.field private fixedSavingAmountSecs:Ljava/lang/Integer;

.field private lastRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;",
            ">;"
        }
    .end annotation
.end field

.field private maxLastRuleStartYear:I

.field private ruleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;",
            ">;"
        }
    .end annotation
.end field

.field private final standardOffset:Ljava/time/ZoneOffset;

.field final synthetic this$0:Ljava/time/bp/zone/ZoneRulesBuilder;

.field private final timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private final windowEnd:Ljava/time/LocalDateTime;


# direct methods
.method constructor <init>(Ljava/time/bp/zone/ZoneRulesBuilder;Ljava/time/ZoneOffset;Ljava/time/LocalDateTime;Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;)V
    .locals 9

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v1, p1

    .local v1, "this$0":Ljava/time/bp/zone/ZoneRulesBuilder;
    move-object v2, p2

    .local v2, "standardOffset":Ljava/time/ZoneOffset;
    move-object v3, p3

    .local v3, "windowEnd":Ljava/time/LocalDateTime;
    move-object v4, p4

    .local v4, "timeDefinition":Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->this$0:Ljava/time/bp/zone/ZoneRulesBuilder;

    .line 454
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 437
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    .line 439
    move-object v5, v0

    const v6, -0x3b9ac9ff

    iput v6, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 441
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 455
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Ljava/time/LocalDateTime;

    .line 456
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 457
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Ljava/time/ZoneOffset;

    .line 458
    return-void
.end method

.method static synthetic access$000(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/time/ZoneOffset;
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Ljava/time/ZoneOffset;

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    return-object v0
.end method

.method static synthetic access$100(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    return-object v0
.end method

.method static synthetic access$200(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    return-object v0
.end method

.method static synthetic access$400(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)Ljava/util/List;
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    return-object v0
.end method


# virtual methods
.method addRule(IILjava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V
    .locals 25

    .prologue
    .line 500
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move/from16 v1, p1

    .local v1, "startYear":I
    move/from16 v2, p2

    .local v2, "endYear":I
    move-object/from16 v3, p3

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

    .local v9, "savingAmountSecs":I
    move-object v13, v0

    iget-object v13, v13, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    if-eqz v13, :cond_0

    .line 501
    new-instance v13, Ljava/lang/IllegalStateException;

    move-object/from16 v24, v13

    move-object/from16 v13, v24

    move-object/from16 v14, v24

    const-string v15, "Window has a fixed DST saving, so cannot have DST rules"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 503
    :cond_0
    move-object v13, v0

    iget-object v13, v13, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/16 v14, 0x7d0

    if-lt v13, v14, :cond_1

    .line 504
    new-instance v13, Ljava/lang/IllegalStateException;

    move-object/from16 v24, v13

    move-object/from16 v13, v24

    move-object/from16 v14, v24

    const-string v15, "Window has reached the maximum number of allowed rules"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 506
    :cond_1
    const/4 v13, 0x0

    move v10, v13

    .line 507
    .local v10, "lastRule":Z
    move v13, v2

    const v14, 0x3b9ac9ff

    if-ne v13, v14, :cond_2

    .line 508
    const/4 v13, 0x1

    move v10, v13

    .line 509
    move v13, v1

    move v2, v13

    .line 511
    :cond_2
    move v13, v1

    move v11, v13

    .line 512
    .local v11, "year":I
    :goto_0
    move v13, v11

    move v14, v2

    if-gt v13, v14, :cond_4

    .line 513
    new-instance v13, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;

    move-object/from16 v24, v13

    move-object/from16 v13, v24

    move-object/from16 v14, v24

    move-object v15, v0

    iget-object v15, v15, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->this$0:Ljava/time/bp/zone/ZoneRulesBuilder;

    move/from16 v16, v11

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    invoke-direct/range {v14 .. v23}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;-><init>(Ljava/time/bp/zone/ZoneRulesBuilder;ILjava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    move-object v12, v13

    .line 514
    .local v12, "rule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move v13, v10

    if-eqz v13, :cond_3

    .line 515
    move-object v13, v0

    iget-object v13, v13, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    move-object v14, v12

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 516
    move-object v13, v0

    move v14, v1

    move-object v15, v0

    iget v15, v15, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v13, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 520
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 521
    goto :goto_0

    .line 518
    :cond_3
    move-object v13, v0

    iget-object v13, v13, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    move-object v14, v12

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_1

    .line 522
    .end local v12    # "rule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    :cond_4
    return-void
.end method

.method createDateTimeEpochSecond(I)J
    .locals 8

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move v1, p1

    .local v1, "savingsSecs":I
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->createWallOffset(I)Ljava/time/ZoneOffset;

    move-result-object v4

    move-object v2, v4

    .line 612
    .local v2, "wallOffset":Ljava/time/ZoneOffset;
    move-object v4, v0

    iget-object v4, v4, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Ljava/time/LocalDateTime;

    move-object v6, v0

    iget-object v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Ljava/time/ZoneOffset;

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v3, v4

    .line 613
    .local v3, "ldt":Ljava/time/LocalDateTime;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v4

    move-wide v0, v4

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    return-wide v0
.end method

.method createWallOffset(I)Ljava/time/ZoneOffset;
    .locals 4

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move v1, p1

    .local v1, "savingsSecs":I
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    move v3, v1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    return-object v0
.end method

.method isSingleWindowStandardOffset()Z
    .locals 3

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Ljava/time/LocalDateTime;

    sget-object v2, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->timeDefinition:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    sget-object v2, Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    .line 591
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    return v0

    .restart local v0    # "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setFixedSavings(I)V
    .locals 6

    .prologue
    .line 467
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move v1, p1

    .local v1, "fixedSavingAmount":I
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 468
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Window has DST rules, so cannot have fixed savings"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 470
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    .line 471
    return-void
.end method

.method tidy(I)V
    .locals 16

    .prologue
    .line 545
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move/from16 v1, p1

    .local v1, "windowStartYear":I
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 546
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const-string v7, "Cannot have only one rule defined as being forever"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 550
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Ljava/time/LocalDateTime;

    sget-object v6, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    invoke-virtual {v5, v6}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 552
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    move v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    .line 553
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;

    move-object v3, v5

    .line 554
    .local v3, "lastRule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v5, v0

    move-object v6, v3

    invoke-static {v6}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$500(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    move-object v8, v3

    invoke-static {v8}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$600(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/Month;

    move-result-object v8

    move-object v9, v3

    invoke-static {v9}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$700(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v9

    move-object v10, v3

    .line 555
    invoke-static {v10}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$800(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/DayOfWeek;

    move-result-object v10

    move-object v11, v3

    invoke-static {v11}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$900(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/LocalTime;

    move-result-object v11

    move-object v12, v3

    invoke-static {v12}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$1000(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Z

    move-result v12

    move-object v13, v3

    invoke-static {v13}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$1100(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v13

    move-object v14, v3

    invoke-static {v14}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v14

    .line 554
    invoke-virtual/range {v5 .. v14}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->addRule(IILjava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    .line 556
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$502(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;I)I

    move-result v5

    .line 557
    goto :goto_0

    .line 558
    .end local v3    # "lastRule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    :cond_1
    move-object v5, v0

    iget v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    const v6, 0x3b9ac9ff

    if-ne v5, v6, :cond_3

    .line 559
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 575
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 576
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 579
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->ruleList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    if-nez v5, :cond_2

    .line 580
    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->fixedSavingAmountSecs:Ljava/lang/Integer;

    .line 582
    :cond_2
    return-void

    .line 561
    :cond_3
    move-object v5, v0

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    iget v6, v6, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    goto :goto_1

    .line 565
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Ljava/time/LocalDateTime;

    invoke-virtual {v5}, Ljava/time/LocalDateTime;->getYear()I

    move-result v5

    move v2, v5

    .line 566
    .local v2, "endYear":I
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;

    move-object v4, v5

    .line 567
    .local v4, "lastRule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    move-object v5, v0

    move-object v6, v4

    invoke-static {v6}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$500(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v6

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v4

    invoke-static {v8}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$600(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/Month;

    move-result-object v8

    move-object v9, v4

    invoke-static {v9}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$700(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v9

    move-object v10, v4

    .line 568
    invoke-static {v10}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$800(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/DayOfWeek;

    move-result-object v10

    move-object v11, v4

    invoke-static {v11}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$900(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/LocalTime;

    move-result-object v11

    move-object v12, v4

    invoke-static {v12}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$1000(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Z

    move-result v12

    move-object v13, v4

    invoke-static {v13}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$1100(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)Ljava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v13

    move-object v14, v4

    invoke-static {v14}, Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;->access$300(Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;)I

    move-result v14

    .line 567
    invoke-virtual/range {v5 .. v14}, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->addRule(IILjava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/bp/zone/ZoneOffsetTransitionRule$TimeDefinition;I)V

    .line 569
    goto :goto_2

    .line 570
    .end local v4    # "lastRule":Ljava/time/bp/zone/ZoneRulesBuilder$TZRule;
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->lastRuleList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 571
    move-object v5, v0

    const v6, 0x3b9ac9ff

    iput v6, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->maxLastRuleStartYear:I

    goto/16 :goto_1
.end method

.method validateWindowOrder(Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;)V
    .locals 7

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v1, p1

    .local v1, "previous":Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Ljava/time/LocalDateTime;

    move-object v3, v1

    iget-object v3, v3, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Ljava/time/LocalDateTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Windows must be added in date-time order: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Ljava/time/bp/zone/ZoneRulesBuilder$TZWindow;->windowEnd:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 535
    :cond_0
    return-void
.end method
