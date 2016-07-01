.class final Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZoneIdPrinterParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    }
.end annotation


# static fields
.field private static volatile cachedSubstringTree:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final query:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3430
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<Ljava/time/ZoneId;>;"
    move-object v2, p2

    .local v2, "description":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 3431
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljava/time/temporal/TemporalQuery;

    .line 3432
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    .line 3433
    return-void
.end method

.method private convertToZone(Ljava/util/Set;Ljava/lang/String;Z)Ljava/time/ZoneId;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/time/ZoneId;"
        }
    .end annotation

    .prologue
    .line 3538
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    move-object v1, p1

    .local v1, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "parsedZoneId":Ljava/lang/String;
    move v3, p3

    .local v3, "caseSensitive":Z
    move-object v6, v2

    if-nez v6, :cond_0

    .line 3539
    const/4 v6, 0x0

    move-object v0, v6

    .line 3549
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    :goto_0
    return-object v0

    .line 3541
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    :cond_0
    move v6, v3

    if-eqz v6, :cond_2

    .line 3542
    move-object v6, v1

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-static {v6}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 3544
    :cond_2
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_2
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 3545
    .local v5, "regionId":Ljava/lang/String;
    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3546
    move-object v6, v5

    invoke-static {v6}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 3548
    :cond_3
    goto :goto_2

    .line 3549
    .end local v5    # "regionId":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method private parsePrefixedOffset(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;II)I
    .locals 14

    .prologue
    .line 3554
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move/from16 v3, p3

    .local v3, "prefixPos":I
    move/from16 v4, p4

    .local v4, "position":I
    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-interface {v10, v11, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 3555
    .local v5, "prefix":Ljava/lang/String;
    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/format/DateTimeParseContext;->copy()Ljava/time/format/DateTimeParseContext;

    move-result-object v10

    move-object v6, v10

    .line 3556
    .local v6, "newContext":Ljava/time/format/DateTimeParseContext;
    move v10, v4

    move-object v11, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v10, v11, :cond_0

    move-object v10, v1

    move-object v11, v2

    move v12, v4

    invoke-interface {v11, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x5a

    invoke-virtual {v10, v11, v12}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3557
    move-object v10, v1

    move-object v11, v5

    sget-object v12, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v11, v12}, Ljava/time/ZoneId;->ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3558
    move v10, v4

    move v0, v10

    .line 3568
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    :goto_0
    return v0

    .line 3560
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    :cond_0
    sget-object v10, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v11, v6

    move-object v12, v2

    move v13, v4

    invoke-virtual {v10, v11, v12, v13}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v10

    move v7, v10

    .line 3561
    .local v7, "endPos":I
    move v10, v7

    if-gez v10, :cond_1

    .line 3562
    move-object v10, v1

    move-object v11, v5

    sget-object v12, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v11, v12}, Ljava/time/ZoneId;->ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3563
    move v10, v4

    move v0, v10

    goto :goto_0

    .line 3565
    :cond_1
    move-object v10, v6

    sget-object v11, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-int v10, v10

    move v8, v10

    .line 3566
    .local v8, "offsetSecs":I
    move v10, v8

    invoke-static {v10}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v10

    move-object v9, v10

    .line 3567
    .local v9, "offset":Ljava/time/ZoneOffset;
    move-object v10, v1

    move-object v11, v5

    move-object v12, v9

    invoke-static {v11, v12}, Ljava/time/ZoneId;->ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3568
    move v10, v7

    move v0, v10

    goto :goto_0
.end method

.method private static prepareParser(Ljava/util/Set;)Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;"
        }
    .end annotation

    .prologue
    .line 3656
    move-object v0, p0

    .local v0, "availableIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v5

    .line 3657
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v1

    sget-object v6, Ljava/time/format/DateTimeFormatterBuilder;->LENGTH_SORT:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3660
    new-instance v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;-><init>(ILjava/time/format/DateTimeFormatterBuilder$1;)V

    move-object v2, v5

    .line 3661
    .local v2, "tree":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 3662
    .local v4, "id":Ljava/lang/String;
    move-object v5, v2

    move-object v6, v4

    invoke-static {v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->access$300(Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;Ljava/lang/String;)V

    .line 3663
    goto :goto_0

    .line 3664
    .end local v4    # "id":Ljava/lang/String;
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "availableIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-object v0
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 19

    .prologue
    .line 3464
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    move-object/from16 v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move/from16 v3, p3

    .local v3, "position":I
    move-object v12, v2

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    move v4, v12

    .line 3465
    .local v4, "length":I
    move v12, v3

    move v13, v4

    if-le v12, v13, :cond_0

    .line 3466
    new-instance v12, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v12

    .line 3468
    :cond_0
    move v12, v3

    move v13, v4

    if-ne v12, v13, :cond_1

    .line 3469
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    .line 3534
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    :goto_0
    return v0

    .line 3473
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    :cond_1
    move-object v12, v2

    move v13, v3

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v5, v12

    .line 3474
    .local v5, "nextChar":C
    move v12, v5

    const/16 v13, 0x2b

    if-eq v12, v13, :cond_2

    move v12, v5

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_4

    .line 3475
    :cond_2
    move-object v12, v1

    invoke-virtual {v12}, Ljava/time/format/DateTimeParseContext;->copy()Ljava/time/format/DateTimeParseContext;

    move-result-object v12

    move-object v6, v12

    .line 3476
    .local v6, "newContext":Ljava/time/format/DateTimeParseContext;
    sget-object v12, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v13, v6

    move-object v14, v2

    move v15, v3

    invoke-virtual {v12, v13, v14, v15}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v12

    move v7, v12

    .line 3477
    .local v7, "endPos":I
    move v12, v7

    if-gez v12, :cond_3

    .line 3478
    move v12, v7

    move v0, v12

    goto :goto_0

    .line 3480
    :cond_3
    move-object v12, v6

    sget-object v13, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v13}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    long-to-int v12, v12

    move v8, v12

    .line 3481
    .local v8, "offset":I
    move v12, v8

    invoke-static {v12}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v12

    move-object v9, v12

    .line 3482
    .local v9, "zone":Ljava/time/ZoneId;
    move-object v12, v1

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3483
    move v12, v7

    move v0, v12

    goto :goto_0

    .line 3484
    .end local v6    # "newContext":Ljava/time/format/DateTimeParseContext;
    .end local v7    # "endPos":I
    .end local v8    # "offset":I
    .end local v9    # "zone":Ljava/time/ZoneId;
    :cond_4
    move v12, v4

    move v13, v3

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    if-lt v12, v13, :cond_7

    .line 3485
    move-object v12, v2

    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v6, v12

    .line 3486
    .local v6, "nextNextChar":C
    move-object v12, v1

    move v13, v5

    const/16 v14, 0x55

    invoke-virtual {v12, v13, v14}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v12, v1

    move v13, v6

    const/16 v14, 0x54

    .line 3487
    invoke-virtual {v12, v13, v14}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3488
    move v12, v4

    move v13, v3

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    if-lt v12, v13, :cond_5

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    .line 3489
    invoke-interface {v13, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v14, 0x43

    invoke-virtual {v12, v13, v14}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3490
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v3

    const/16 v17, 0x3

    add-int/lit8 v16, v16, 0x3

    invoke-direct/range {v12 .. v16}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parsePrefixedOffset(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;II)I

    move-result v12

    move v0, v12

    goto/16 :goto_0

    .line 3492
    :cond_5
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v3

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    invoke-direct/range {v12 .. v16}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parsePrefixedOffset(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;II)I

    move-result v12

    move v0, v12

    goto/16 :goto_0

    .line 3493
    :cond_6
    move-object v12, v1

    move v13, v5

    const/16 v14, 0x47

    invoke-virtual {v12, v13, v14}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v12

    if-eqz v12, :cond_7

    move v12, v4

    move v13, v3

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    if-lt v12, v13, :cond_7

    move-object v12, v1

    move v13, v6

    const/16 v14, 0x4d

    .line 3495
    invoke-virtual {v12, v13, v14}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    .line 3496
    invoke-interface {v13, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v14, 0x54

    invoke-virtual {v12, v13, v14}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3497
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move/from16 v16, v3

    const/16 v17, 0x3

    add-int/lit8 v16, v16, 0x3

    invoke-direct/range {v12 .. v16}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parsePrefixedOffset(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;II)I

    move-result v12

    move v0, v12

    goto/16 :goto_0

    .line 3502
    .end local v6    # "nextNextChar":C
    :cond_7
    invoke-static {}, Ljava/time/bp/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v12

    move-object v6, v12

    .line 3503
    .local v6, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    move v7, v12

    .line 3504
    .local v7, "regionIdsSize":I
    sget-object v12, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedSubstringTree:Ljava/util/Map$Entry;

    move-object v8, v12

    .line 3505
    .local v8, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;>;"
    move-object v12, v8

    if-eqz v12, :cond_8

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v13, v7

    if-eq v12, v13, :cond_b

    .line 3506
    :cond_8
    move-object v12, v0

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v9, v13

    monitor-enter v12

    .line 3507
    :try_start_0
    sget-object v12, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedSubstringTree:Ljava/util/Map$Entry;

    move-object v8, v12

    .line 3508
    move-object v12, v8

    if-eqz v12, :cond_9

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v13, v7

    if-eq v12, v13, :cond_a

    .line 3509
    :cond_9
    new-instance v12, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v15, v6

    invoke-static {v15}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->prepareParser(Ljava/util/Set;)Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v8, v13

    sput-object v12, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedSubstringTree:Ljava/util/Map$Entry;

    .line 3511
    :cond_a
    move-object v12, v9

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3513
    :cond_b
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-object v9, v12

    .line 3516
    .local v9, "tree":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    const/4 v12, 0x0

    move-object v10, v12

    .line 3517
    .local v10, "parsedZoneId":Ljava/lang/String;
    :goto_1
    move-object v12, v9

    if-eqz v12, :cond_c

    .line 3518
    move-object v12, v9

    iget v12, v12, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->length:I

    move v11, v12

    .line 3519
    .local v11, "nodeLength":I
    move v12, v3

    move v13, v11

    add-int/2addr v12, v13

    move v13, v4

    if-le v12, v13, :cond_d

    .line 3520
    .line 3525
    .end local v11    # "nodeLength":I
    :cond_c
    move-object v12, v0

    move-object v13, v6

    move-object v14, v10

    move-object v15, v1

    invoke-virtual {v15}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v15

    invoke-direct {v12, v13, v14, v15}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->convertToZone(Ljava/util/Set;Ljava/lang/String;Z)Ljava/time/ZoneId;

    move-result-object v12

    move-object v11, v12

    .line 3526
    .local v11, "zone":Ljava/time/ZoneId;
    move-object v12, v11

    if-nez v12, :cond_f

    .line 3527
    move-object v12, v1

    move v13, v5

    const/16 v14, 0x5a

    invoke-virtual {v12, v13, v14}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 3528
    move-object v12, v1

    sget-object v13, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v12, v13}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3529
    move v12, v3

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v0, v12

    goto/16 :goto_0

    .line 3511
    .end local v9    # "tree":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .end local v10    # "parsedZoneId":Ljava/lang/String;
    .end local v11    # "zone":Ljava/time/ZoneId;
    :catchall_0
    move-exception v12

    move-object v10, v12

    move-object v12, v9

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v10

    throw v12

    .line 3522
    .restart local v9    # "tree":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;
    .restart local v10    # "parsedZoneId":Ljava/lang/String;
    .local v11, "nodeLength":I
    :cond_d
    move-object v12, v2

    move v13, v3

    move v14, v3

    move v15, v11

    add-int/2addr v14, v15

    invoke-interface {v12, v13, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 3523
    move-object v12, v9

    move-object v13, v10

    move-object v14, v1

    invoke-virtual {v14}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v14

    invoke-static {v12, v13, v14}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;->access$100(Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;Ljava/lang/CharSequence;Z)Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser$SubstringTree;

    move-result-object v12

    move-object v9, v12

    .line 3524
    goto :goto_1

    .line 3531
    .local v11, "zone":Ljava/time/ZoneId;
    :cond_e
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 3533
    :cond_f
    move-object v12, v1

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3534
    move v12, v3

    move-object v13, v10

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    move v0, v12

    goto/16 :goto_0
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 6

    .prologue
    .line 3438
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/ZoneId;

    move-object v3, v4

    .line 3439
    .local v3, "zone":Ljava/time/ZoneId;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 3440
    const/4 v4, 0x0

    move v0, v4

    .line 3443
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    :goto_0
    return v0

    .line 3442
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    :cond_0
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3443
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3670
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
    return-object v0
.end method
