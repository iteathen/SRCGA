.class final Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
.super Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReducedPrinterParser"
.end annotation


# static fields
.field static final BASE_DATE:Ljava/time/LocalDate;


# instance fields
.field private final baseDate:Ljava/time/chrono/AbstractChronoLocalDate;

.field private final baseValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2555
    const/16 v0, 0x7d0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    return-void
.end method

.method constructor <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/AbstractChronoLocalDate;)V
    .locals 12

    .prologue
    .line 2569
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "maxWidth":I
    move/from16 v4, p4

    .local v4, "baseValue":I
    move-object/from16 v5, p5

    .local v5, "baseDate":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    sget-object v10, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    .line 2570
    move v6, v2

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    move v6, v2

    const/16 v7, 0xa

    if-le v6, v7, :cond_1

    .line 2571
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The width must be from 1 to 10 inclusive but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2573
    :cond_1
    move v6, v3

    const/4 v7, 0x1

    if-lt v6, v7, :cond_2

    move v6, v3

    const/16 v7, 0xa

    if-le v6, v7, :cond_3

    .line 2574
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The maxWidth must be from 1 to 10 inclusive but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2576
    :cond_3
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_4

    .line 2577
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "The maxWidth must be greater than the width"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2579
    :cond_4
    move-object v6, v5

    if-nez v6, :cond_6

    .line 2580
    move-object v6, v1

    invoke-interface {v6}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v6

    move v7, v4

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2581
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "The base value must be within the range of the field"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2583
    :cond_5
    move v6, v4

    int-to-long v6, v6

    sget-object v8, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[I

    move v9, v2

    aget v8, v8, v9

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 2584
    new-instance v6, Ljava/time/DateTimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2587
    :cond_6
    move-object v6, v0

    move v7, v4

    iput v7, v6, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2588
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/AbstractChronoLocalDate;

    .line 2589
    return-void
.end method

.method private constructor <init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/AbstractChronoLocalDate;I)V
    .locals 14

    .prologue
    .line 2593
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move/from16 v2, p2

    .local v2, "minWidth":I
    move/from16 v3, p3

    .local v3, "maxWidth":I
    move/from16 v4, p4

    .local v4, "baseValue":I
    move-object/from16 v5, p5

    .local v5, "baseDate":Ljava/time/chrono/AbstractChronoLocalDate;
    move/from16 v6, p6

    .local v6, "subsequentWidth":I
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    sget-object v11, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    move v12, v6

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;ILjava/time/format/DateTimeFormatterBuilder$1;)V

    .line 2594
    move-object v7, v0

    move v8, v4

    iput v8, v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    .line 2595
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/AbstractChronoLocalDate;

    .line 2596
    return-void
.end method


# virtual methods
.method getValue(Ljava/time/format/DateTimePrintContext;J)J
    .locals 14

    .prologue
    .line 2600
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-wide/from16 v2, p2

    .local v2, "value":J
    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    move-wide v4, v8

    .line 2601
    .local v4, "absValue":J
    move-object v8, v0

    iget v8, v8, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    move v6, v8

    .line 2602
    .local v6, "baseValue":I
    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v8, :cond_0

    .line 2603
    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v8

    invoke-static {v8}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v8

    move-object v7, v8

    .line 2604
    .local v7, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-virtual {v8, v9}, Ljava/time/chrono/AbstractChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v8, v9}, Ljava/time/chrono/AbstractChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v8

    move v6, v8

    .line 2606
    .end local v7    # "chrono":Ljava/time/chrono/AbstractChronology;
    :cond_0
    move-wide v8, v2

    move v10, v6

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    move-wide v8, v2

    move v10, v6

    sget-object v11, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[I

    move-object v12, v0

    iget v12, v12, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget v11, v11, v12

    add-int/2addr v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 2607
    move-wide v8, v4

    sget-object v10, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[I

    move-object v11, v0

    iget v11, v11, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    aget v10, v10, v11

    int-to-long v10, v10

    rem-long/2addr v8, v10

    move-wide v0, v8

    .line 2609
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    :goto_0
    return-wide v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    :cond_1
    move-wide v8, v4

    sget-object v10, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[I

    move-object v11, v0

    iget v11, v11, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    aget v10, v10, v11

    int-to-long v10, v10

    rem-long/2addr v8, v10

    move-wide v0, v8

    goto :goto_0
.end method

.method isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z
    .locals 4

    .prologue
    .line 2653
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2654
    const/4 v2, 0x0

    move v0, v2

    .line 2656
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method setValue(Ljava/time/format/DateTimeParseContext;JII)I
    .locals 22

    .prologue
    .line 2614
    move-object/from16 v2, p0

    .local v2, "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move-object/from16 v3, p1

    .local v3, "context":Ljava/time/format/DateTimeParseContext;
    move-wide/from16 v4, p2

    .local v4, "value":J
    move/from16 v6, p4

    .local v6, "errorPos":I
    move/from16 v7, p5

    .local v7, "successPos":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    move/from16 v16, v0

    move/from16 v8, v16

    .line 2615
    .local v8, "baseValue":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 2616
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v16

    move-object/from16 v9, v16

    .line 2617
    .local v9, "chrono":Ljava/time/chrono/Chronology;
    move-object/from16 v16, v9

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v16

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v16

    move/from16 v8, v16

    .line 2618
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-wide/from16 v18, v4

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-virtual/range {v16 .. v21}, Ljava/time/format/DateTimeParseContext;->addChronologyChangedParser(Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;JII)V

    .line 2620
    .end local v9    # "chrono":Ljava/time/chrono/Chronology;
    :cond_0
    move/from16 v16, v7

    move/from16 v17, v6

    sub-int v16, v16, v17

    move/from16 v9, v16

    .line 2621
    .local v9, "parseLen":I
    move/from16 v16, v9

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-wide/from16 v16, v4

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_1

    .line 2622
    sget-object v16, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->EXCEED_POINTS:[I

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    move/from16 v17, v0

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v10, v16

    .line 2623
    .local v10, "range":J
    move/from16 v16, v8

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v10

    rem-long v16, v16, v18

    move-wide/from16 v12, v16

    .line 2624
    .local v12, "lastPart":J
    move/from16 v16, v8

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v12

    sub-long v16, v16, v18

    move-wide/from16 v14, v16

    .line 2625
    .local v14, "basePart":J
    move/from16 v16, v8

    if-lez v16, :cond_2

    .line 2626
    move-wide/from16 v16, v14

    move-wide/from16 v18, v4

    add-long v16, v16, v18

    move-wide/from16 v4, v16

    .line 2630
    :goto_0
    move-wide/from16 v16, v4

    move/from16 v18, v8

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-gez v16, :cond_1

    .line 2631
    move-wide/from16 v16, v4

    move-wide/from16 v18, v10

    add-long v16, v16, v18

    move-wide/from16 v4, v16

    .line 2634
    .end local v10    # "range":J
    .end local v12    # "lastPart":J
    .end local v14    # "basePart":J
    :cond_1
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object/from16 v17, v0

    move-wide/from16 v18, v4

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-virtual/range {v16 .. v21}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v16

    move/from16 v2, v16

    .end local v2    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    return v2

    .line 2628
    .restart local v2    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .restart local v10    # "range":J
    .restart local v12    # "lastPart":J
    .restart local v14    # "basePart":J
    :cond_2
    move-wide/from16 v16, v14

    move-wide/from16 v18, v4

    sub-long v16, v16, v18

    move-wide/from16 v4, v16

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2661
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReducedValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/AbstractChronoLocalDate;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 10

    .prologue
    .line 2639
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move-object v1, v0

    iget v1, v1, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2640
    move-object v1, v0

    move-object v0, v1

    .line 2642
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    :cond_0
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object v4, v0

    iget v4, v4, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    move-object v5, v0

    iget v5, v5, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    move-object v6, v0

    iget v6, v6, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/AbstractChronoLocalDate;

    const/4 v8, -0x1

    invoke-direct/range {v2 .. v8}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/AbstractChronoLocalDate;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method bridge synthetic withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 4

    .prologue
    .line 2554
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    return-object v0
.end method

.method withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    .locals 12

    .prologue
    .line 2647
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move v1, p1

    .local v1, "subsequentWidth":I
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object v5, v0

    iget v5, v5, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->minWidth:I

    move-object v6, v0

    iget v6, v6, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->maxWidth:I

    move-object v7, v0

    iget v7, v7, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseValue:I

    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->baseDate:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v9, v0

    iget v9, v9, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->subsequentWidth:I

    move v10, v1

    add-int/2addr v9, v10

    invoke-direct/range {v3 .. v9}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/AbstractChronoLocalDate;I)V

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    return-object v0
.end method
