.class final Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
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
    name = "FractionPrinterParser"
.end annotation


# instance fields
.field private final decimalPoint:Z

.field private final field:Ljava/time/temporal/TemporalField;

.field private final maxWidth:I

.field private final minWidth:I


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalField;IIZ)V
    .locals 10

    .prologue
    .line 2683
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move v2, p2

    .local v2, "minWidth":I
    move v3, p3

    .local v3, "maxWidth":I
    move v4, p4

    .local v4, "decimalPoint":Z
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 2684
    move-object v5, v1

    const-string v6, "field"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2685
    move-object v5, v1

    invoke-interface {v5}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/temporal/ValueRange;->isFixed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2686
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Field must have a fixed set of values: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2688
    :cond_0
    move v5, v2

    if-ltz v5, :cond_1

    move v5, v2

    const/16 v6, 0x9

    if-le v5, v6, :cond_2

    .line 2689
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2691
    :cond_2
    move v5, v3

    const/4 v6, 0x1

    if-lt v5, v6, :cond_3

    move v5, v3

    const/16 v6, 0x9

    if-le v5, v6, :cond_4

    .line 2692
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2694
    :cond_4
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_5

    .line 2695
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2698
    :cond_5
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2699
    move-object v5, v0

    move v6, v2

    iput v6, v5, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    .line 2700
    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    .line 2701
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    .line 2702
    return-void
.end method

.method private convertFromFraction(Ljava/math/BigDecimal;)J
    .locals 9

    .prologue
    .line 2818
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    move-object v1, p1

    .local v1, "fraction":Ljava/math/BigDecimal;
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v6}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-object v2, v6

    .line 2819
    .local v2, "range":Ljava/time/temporal/ValueRange;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v3, v6

    .line 2820
    .local v3, "minBD":Ljava/math/BigDecimal;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    sget-object v7, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v4, v6

    .line 2821
    .local v4, "rangeBD":Ljava/math/BigDecimal;
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    const/4 v7, 0x0

    sget-object v8, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v6, v7, v8}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v5, v6

    .line 2822
    .local v5, "valueBD":Ljava/math/BigDecimal;
    move-object v6, v5

    invoke-virtual {v6}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    return-wide v0
.end method

.method private convertToFraction(J)Ljava/math/BigDecimal;
    .locals 13

    .prologue
    .line 2791
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    move-wide v1, p1

    .local v1, "value":J
    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v8}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v8

    move-object v3, v8

    .line 2792
    .local v3, "range":Ljava/time/temporal/ValueRange;
    move-object v8, v3

    move-wide v9, v1

    move-object v11, v0

    iget-object v11, v11, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v8

    .line 2793
    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v4, v8

    .line 2794
    .local v4, "minBD":Ljava/math/BigDecimal;
    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    sget-object v9, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v5, v8

    .line 2795
    .local v5, "rangeBD":Ljava/math/BigDecimal;
    move-wide v8, v1

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v6, v8

    .line 2796
    .local v6, "valueBD":Ljava/math/BigDecimal;
    move-object v8, v6

    move-object v9, v5

    const/16 v10, 0x9

    sget-object v11, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v8, v9, v10, v11}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v7, v8

    .line 2798
    .local v7, "fraction":Ljava/math/BigDecimal;
    move-object v8, v7

    sget-object v9, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    :goto_0
    move-object v0, v8

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    :cond_0
    move-object v8, v7

    invoke-virtual {v8}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 21

    .prologue
    .line 2736
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    move-object/from16 v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move/from16 v3, p3

    .local v3, "position":I
    move-object v14, v1

    invoke-virtual {v14}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v0

    iget v14, v14, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    :goto_0
    move v4, v14

    .line 2737
    .local v4, "effectiveMin":I
    move-object v14, v1

    invoke-virtual {v14}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v0

    iget v14, v14, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    :goto_1
    move v5, v14

    .line 2738
    .local v5, "effectiveMax":I
    move-object v14, v2

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move v6, v14

    .line 2739
    .local v6, "length":I
    move v14, v3

    move v15, v6

    if-ne v14, v15, :cond_3

    .line 2741
    move v14, v4

    if-lez v14, :cond_2

    move v14, v3

    const/4 v15, -0x1

    xor-int/lit8 v14, v14, -0x1

    :goto_2
    move v0, v14

    .line 2771
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    :goto_3
    return v0

    .line 2736
    .end local v4    # "effectiveMin":I
    .end local v5    # "effectiveMax":I
    .end local v6    # "length":I
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 2737
    .restart local v4    # "effectiveMin":I
    :cond_1
    const/16 v14, 0x9

    goto :goto_1

    .line 2741
    .restart local v5    # "effectiveMax":I
    .restart local v6    # "length":I
    :cond_2
    move v14, v3

    goto :goto_2

    .line 2743
    :cond_3
    move-object v14, v0

    iget-boolean v14, v14, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v14, :cond_6

    .line 2744
    move-object v14, v2

    move v15, v3

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    move-object v15, v1

    invoke-virtual {v15}, Ljava/time/format/DateTimeParseContext;->getSymbols()Ljava/time/format/DecimalStyle;

    move-result-object v15

    invoke-virtual {v15}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v15

    if-eq v14, v15, :cond_5

    .line 2746
    move v14, v4

    if-lez v14, :cond_4

    move v14, v3

    const/4 v15, -0x1

    xor-int/lit8 v14, v14, -0x1

    :goto_4
    move v0, v14

    goto :goto_3

    :cond_4
    move v14, v3

    goto :goto_4

    .line 2748
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 2750
    :cond_6
    move v14, v3

    move v15, v4

    add-int/2addr v14, v15

    move v7, v14

    .line 2751
    .local v7, "minEndPos":I
    move v14, v7

    move v15, v6

    if-le v14, v15, :cond_7

    .line 2752
    move v14, v3

    const/4 v15, -0x1

    xor-int/lit8 v14, v14, -0x1

    move v0, v14

    goto :goto_3

    .line 2754
    :cond_7
    move v14, v3

    move v15, v5

    add-int/2addr v14, v15

    move v15, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v8, v14

    .line 2755
    .local v8, "maxEndPos":I
    const/4 v14, 0x0

    move v9, v14

    .line 2756
    .local v9, "total":I
    move v14, v3

    move v10, v14

    .line 2757
    .local v10, "pos":I
    :goto_5
    move v14, v10

    move v15, v8

    if-ge v14, v15, :cond_9

    .line 2758
    move-object v14, v2

    move v15, v10

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    move v11, v14

    .line 2759
    .local v11, "ch":C
    move-object v14, v1

    invoke-virtual {v14}, Ljava/time/format/DateTimeParseContext;->getSymbols()Ljava/time/format/DecimalStyle;

    move-result-object v14

    move v15, v11

    invoke-virtual {v14, v15}, Ljava/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v14

    move v12, v14

    .line 2760
    .local v12, "digit":I
    move v14, v12

    if-gez v14, :cond_a

    .line 2761
    move v14, v10

    move v15, v7

    if-ge v14, v15, :cond_8

    .line 2762
    move v14, v3

    const/4 v15, -0x1

    xor-int/lit8 v14, v14, -0x1

    move v0, v14

    goto :goto_3

    .line 2764
    :cond_8
    add-int/lit8 v10, v10, -0x1

    .line 2769
    .end local v11    # "ch":C
    .end local v12    # "digit":I
    :cond_9
    new-instance v14, Ljava/math/BigDecimal;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move/from16 v16, v9

    invoke-direct/range {v15 .. v16}, Ljava/math/BigDecimal;-><init>(I)V

    move v15, v10

    move/from16 v16, v3

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v14

    move-object v11, v14

    .line 2770
    .local v11, "fraction":Ljava/math/BigDecimal;
    move-object v14, v0

    move-object v15, v11

    invoke-direct {v14, v15}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertFromFraction(Ljava/math/BigDecimal;)J

    move-result-wide v14

    move-wide v12, v14

    .line 2771
    .local v12, "value":J
    move-object v14, v1

    move-object v15, v0

    iget-object v15, v15, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-wide/from16 v16, v12

    move/from16 v18, v3

    move/from16 v19, v10

    invoke-virtual/range {v14 .. v19}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v14

    move v0, v14

    goto/16 :goto_3

    .line 2767
    .local v11, "ch":C
    .local v12, "digit":I
    :cond_a
    move v14, v9

    const/16 v15, 0xa

    mul-int/lit8 v14, v14, 0xa

    move v15, v12

    add-int/2addr v14, v15

    move v9, v14

    .line 2768
    goto :goto_5
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 12

    .prologue
    .line 2706
    move-object v1, p0

    .local v1, "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    move-object v2, p1

    .local v2, "context":Ljava/time/format/DateTimePrintContext;
    move-object v3, p2

    .local v3, "buf":Ljava/lang/StringBuilder;
    move-object v9, v2

    move-object v10, v1

    iget-object v10, v10, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v9, v10}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v9

    move-object v4, v9

    .line 2707
    .local v4, "value":Ljava/lang/Long;
    move-object v9, v4

    if-nez v9, :cond_0

    .line 2708
    const/4 v9, 0x0

    move v1, v9

    .line 2731
    .end local v1    # "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    :goto_0
    return v1

    .line 2710
    .restart local v1    # "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Ljava/time/format/DateTimePrintContext;->getSymbols()Ljava/time/format/DecimalStyle;

    move-result-object v9

    move-object v5, v9

    .line 2711
    .local v5, "symbols":Ljava/time/format/DecimalStyle;
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertToFraction(J)Ljava/math/BigDecimal;

    move-result-object v9

    move-object v6, v9

    .line 2712
    .local v6, "fraction":Ljava/math/BigDecimal;
    move-object v9, v6

    invoke-virtual {v9}, Ljava/math/BigDecimal;->scale()I

    move-result v9

    if-nez v9, :cond_3

    .line 2713
    move-object v9, v1

    iget v9, v9, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-lez v9, :cond_2

    .line 2714
    move-object v9, v1

    iget-boolean v9, v9, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v9, :cond_1

    .line 2715
    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v10}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2717
    :cond_1
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move-object v10, v1

    iget v10, v10, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-ge v9, v10, :cond_2

    .line 2718
    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v10}, Ljava/time/format/DecimalStyle;->getZeroDigit()C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2717
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2731
    .end local v7    # "i":I
    :cond_2
    :goto_2
    const/4 v9, 0x1

    move v1, v9

    goto :goto_0

    .line 2722
    :cond_3
    move-object v9, v6

    invoke-virtual {v9}, Ljava/math/BigDecimal;->scale()I

    move-result v9

    move-object v10, v1

    iget v10, v10, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object v10, v1

    iget v10, v10, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v7, v9

    .line 2723
    .local v7, "outputScale":I
    move-object v9, v6

    move v10, v7

    sget-object v11, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v9, v10, v11}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v9

    move-object v6, v9

    .line 2724
    move-object v9, v6

    invoke-virtual {v9}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 2725
    .local v8, "str":Ljava/lang/String;
    move-object v9, v5

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 2726
    move-object v9, v1

    iget-boolean v9, v9, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v9, :cond_4

    .line 2727
    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v10}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2729
    :cond_4
    move-object v9, v3

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2827
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    move-object v2, v0

    iget-boolean v2, v2, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v2, :cond_0

    const-string v2, ",DecimalPoint"

    :goto_0
    move-object v1, v2

    .line 2828
    .local v1, "decimal":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fraction("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    return-object v0

    .line 2827
    .end local v1    # "decimal":Ljava/lang/String;
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
