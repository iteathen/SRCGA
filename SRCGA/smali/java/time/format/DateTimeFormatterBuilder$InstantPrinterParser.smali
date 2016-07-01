.class final Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
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
    name = "InstantPrinterParser"
.end annotation


# static fields
.field private static final SECONDS_0000_TO_1970:J = 0xe79747c00L

.field private static final SECONDS_PER_10000_YEARS:J = 0x497968bd80L


# instance fields
.field private final fractionalDigits:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 2930
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
    move v1, p1

    .local v1, "fractionalDigits":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2931
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    .line 2932
    return-void
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 34

    .prologue
    .line 3010
    move-object/from16 v2, p0

    .local v2, "this":Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
    move-object/from16 v3, p1

    .local v3, "context":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v4, p2

    .local v4, "text":Ljava/lang/CharSequence;
    move/from16 v5, p3

    .local v5, "position":I
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljava/time/format/DateTimeParseContext;->copy()Ljava/time/format/DateTimeParseContext;

    move-result-object v26

    move-object/from16 v6, v26

    .line 3011
    .local v6, "newContext":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v26, v0

    if-gez v26, :cond_0

    const/16 v26, 0x0

    :goto_0
    move/from16 v7, v26

    .line 3012
    .local v7, "minDigits":I
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v26, v0

    if-gez v26, :cond_1

    const/16 v26, 0x9

    :goto_1
    move/from16 v8, v26

    .line 3013
    .local v8, "maxDigits":I
    new-instance v26, Ljava/time/format/DateTimeFormatterBuilder;

    move-object/from16 v33, v26

    move-object/from16 v26, v33

    move-object/from16 v27, v33

    invoke-direct/range {v27 .. v27}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v27, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 3014
    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v26

    const/16 v27, 0x54

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v26

    sget-object v27, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const/16 v28, 0x2

    .line 3015
    invoke-virtual/range {v26 .. v28}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v26

    const/16 v27, 0x3a

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v26

    sget-object v27, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const/16 v28, 0x2

    invoke-virtual/range {v26 .. v28}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v26

    const/16 v27, 0x3a

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v26

    sget-object v27, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const/16 v28, 0x2

    .line 3016
    invoke-virtual/range {v26 .. v28}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v26

    sget-object v27, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move/from16 v28, v7

    move/from16 v29, v8

    const/16 v30, 0x1

    invoke-virtual/range {v26 .. v30}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v26

    const/16 v27, 0x5a

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v26

    .line 3017
    invoke-virtual/range {v26 .. v26}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v26

    move-object/from16 v9, v26

    .line 3018
    .local v9, "parser":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    move-object/from16 v26, v9

    move-object/from16 v27, v6

    move-object/from16 v28, v4

    move/from16 v29, v5

    invoke-virtual/range {v26 .. v29}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v26

    move/from16 v10, v26

    .line 3019
    .local v10, "pos":I
    move/from16 v26, v10

    if-gez v26, :cond_2

    .line 3020
    move/from16 v26, v10

    move/from16 v2, v26

    .line 3052
    .end local v2    # "this":Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
    :goto_2
    return v2

    .line 3011
    .end local v7    # "minDigits":I
    .end local v8    # "maxDigits":I
    .end local v9    # "parser":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .end local v10    # "pos":I
    .restart local v2    # "this":Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
    :cond_0
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v26, v0

    goto/16 :goto_0

    .line 3012
    .restart local v7    # "minDigits":I
    :cond_1
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v26, v0

    goto/16 :goto_1

    .line 3024
    .restart local v8    # "maxDigits":I
    .restart local v9    # "parser":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .restart local v10    # "pos":I
    :cond_2
    move-object/from16 v26, v6

    sget-object v27, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-wide/from16 v11, v26

    .line 3025
    .local v11, "yearParsed":J
    move-object/from16 v26, v6

    sget-object v27, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->intValue()I

    move-result v26

    move/from16 v13, v26

    .line 3026
    .local v13, "month":I
    move-object/from16 v26, v6

    sget-object v27, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->intValue()I

    move-result v26

    move/from16 v14, v26

    .line 3027
    .local v14, "day":I
    move-object/from16 v26, v6

    sget-object v27, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->intValue()I

    move-result v26

    move/from16 v15, v26

    .line 3028
    .local v15, "hour":I
    move-object/from16 v26, v6

    sget-object v27, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->intValue()I

    move-result v26

    move/from16 v16, v26

    .line 3029
    .local v16, "min":I
    move-object/from16 v26, v6

    sget-object v27, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v17, v26

    .line 3030
    .local v17, "secVal":Ljava/lang/Long;
    move-object/from16 v26, v6

    sget-object v27, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v26 .. v27}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v18, v26

    .line 3031
    .local v18, "nanoVal":Ljava/lang/Long;
    move-object/from16 v26, v17

    if-eqz v26, :cond_4

    move-object/from16 v26, v17

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->intValue()I

    move-result v26

    :goto_3
    move/from16 v19, v26

    .line 3032
    .local v19, "sec":I
    move-object/from16 v26, v18

    if-eqz v26, :cond_5

    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->intValue()I

    move-result v26

    :goto_4
    move/from16 v20, v26

    .line 3033
    .local v20, "nano":I
    move-wide/from16 v26, v11

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    const/16 v27, 0x2710

    move/from16 v0, v26

    rem-int/lit16 v0, v0, 0x2710

    move/from16 v26, v0

    move/from16 v21, v26

    .line 3034
    .local v21, "year":I
    const/16 v26, 0x0

    move/from16 v22, v26

    .line 3035
    .local v22, "days":I
    move/from16 v26, v15

    const/16 v27, 0x18

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    move/from16 v26, v16

    if-nez v26, :cond_6

    move/from16 v26, v19

    if-nez v26, :cond_6

    move/from16 v26, v20

    if-nez v26, :cond_6

    .line 3036
    const/16 v26, 0x0

    move/from16 v15, v26

    .line 3037
    const/16 v26, 0x1

    move/from16 v22, v26

    .line 3044
    :cond_3
    :goto_5
    move/from16 v26, v21

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    move/from16 v30, v16

    move/from16 v31, v19

    const/16 v32, 0x0

    :try_start_0
    invoke-static/range {v26 .. v32}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object v26

    move/from16 v27, v22

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v26

    move-object/from16 v25, v26

    .line 3045
    .local v25, "ldt":Ljava/time/LocalDateTime;
    move-object/from16 v26, v25

    sget-object v27, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual/range {v26 .. v27}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v26

    move-wide/from16 v23, v26

    .line 3046
    .local v23, "instantSecs":J
    move-wide/from16 v26, v23

    move-wide/from16 v28, v11

    const-wide/16 v30, 0x2710

    div-long v28, v28, v30

    const-wide v30, 0x497968bd80L

    invoke-static/range {v28 .. v31}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v28

    add-long v26, v26, v28

    move-wide/from16 v23, v26

    .line 3049
    .line 3050
    move/from16 v26, v10

    move/from16 v25, v26

    .line 3051
    .local v25, "successPos":I
    move-object/from16 v26, v3

    sget-object v27, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-wide/from16 v28, v23

    move/from16 v30, v5

    move/from16 v31, v25

    invoke-virtual/range {v26 .. v31}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v26

    move/from16 v25, v26

    .line 3052
    move-object/from16 v26, v3

    sget-object v27, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move/from16 v28, v20

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move/from16 v30, v5

    move/from16 v31, v25

    invoke-virtual/range {v26 .. v31}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v26

    move/from16 v2, v26

    goto/16 :goto_2

    .line 3031
    .end local v19    # "sec":I
    .end local v20    # "nano":I
    .end local v21    # "year":I
    .end local v22    # "days":I
    .end local v23    # "instantSecs":J
    .end local v25    # "successPos":I
    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 3032
    .restart local v19    # "sec":I
    :cond_5
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 3038
    .restart local v20    # "nano":I
    .restart local v21    # "year":I
    .restart local v22    # "days":I
    :cond_6
    move/from16 v26, v15

    const/16 v27, 0x17

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    move/from16 v26, v16

    const/16 v27, 0x3b

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    move/from16 v26, v19

    const/16 v27, 0x3c

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 3039
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Ljava/time/format/DateTimeParseContext;->setParsedLeapSecond()V

    .line 3040
    const/16 v26, 0x3b

    move/from16 v19, v26

    goto/16 :goto_5

    .line 3047
    :catch_0
    move-exception v26

    move-object/from16 v25, v26

    .line 3048
    .local v25, "ex":Ljava/lang/RuntimeException;
    move/from16 v26, v5

    const/16 v27, -0x1

    xor-int/lit8 v26, v26, -0x1

    move/from16 v2, v26

    goto/16 :goto_2
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 25

    .prologue
    .line 2937
    move-object/from16 v2, p0

    .local v2, "this":Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
    move-object/from16 v3, p1

    .local v3, "context":Ljava/time/format/DateTimePrintContext;
    move-object/from16 v4, p2

    .local v4, "buf":Ljava/lang/StringBuilder;
    move-object/from16 v18, v3

    sget-object v19, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual/range {v18 .. v19}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v5, v18

    .line 2938
    .local v5, "inSecs":Ljava/lang/Long;
    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v6, v18

    .line 2939
    .local v6, "inNanos":Ljava/lang/Long;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v18

    sget-object v19, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v18 .. v19}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2940
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v18

    sget-object v19, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v18 .. v19}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v6, v18

    .line 2942
    :cond_0
    move-object/from16 v18, v5

    if-nez v18, :cond_1

    .line 2943
    const/16 v18, 0x0

    move/from16 v2, v18

    .line 3004
    .end local v2    # "this":Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
    :goto_0
    return v2

    .line 2945
    .restart local v2    # "this":Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
    :cond_1
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v7, v18

    .line 2946
    .local v7, "inSec":J
    sget-object v18, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v18

    move/from16 v9, v18

    .line 2947
    .local v9, "inNano":I
    move-wide/from16 v18, v7

    const-wide v20, -0xe79747c00L

    cmp-long v18, v18, v20

    if-ltz v18, :cond_5

    .line 2949
    move-wide/from16 v18, v7

    const-wide v20, 0x497968bd80L

    sub-long v18, v18, v20

    const-wide v20, 0xe79747c00L

    add-long v18, v18, v20

    move-wide/from16 v10, v18

    .line 2950
    .local v10, "zeroSecs":J
    move-wide/from16 v18, v10

    const-wide v20, 0x497968bd80L

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v18

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v12, v18

    .line 2951
    .local v12, "hi":J
    move-wide/from16 v18, v10

    const-wide v20, 0x497968bd80L

    invoke-static/range {v18 .. v21}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 2952
    .local v14, "lo":J
    move-wide/from16 v18, v14

    const-wide v20, 0xe79747c00L

    sub-long v18, v18, v20

    const/16 v20, 0x0

    sget-object v21, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static/range {v18 .. v21}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v18

    move-object/from16 v16, v18

    .line 2953
    .local v16, "ldt":Ljava/time/LocalDateTime;
    move-wide/from16 v18, v12

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_2

    .line 2954
    move-object/from16 v18, v4

    const/16 v19, 0x2b

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-wide/from16 v19, v12

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2956
    :cond_2
    move-object/from16 v18, v4

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2957
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v18

    if-nez v18, :cond_3

    .line 2958
    move-object/from16 v18, v4

    const-string v19, ":00"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2960
    .line 2982
    :cond_3
    :goto_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v18, v0

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 2983
    move/from16 v18, v9

    if-eqz v18, :cond_4

    .line 2984
    move-object/from16 v18, v4

    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2985
    move/from16 v18, v9

    const v19, 0xf4240

    rem-int v18, v18, v19

    if-nez v18, :cond_9

    .line 2986
    move-object/from16 v18, v4

    move/from16 v19, v9

    const v20, 0xf4240

    div-int v19, v19, v20

    const/16 v20, 0x3e8

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3003
    .end local v10    # "zeroSecs":J
    .end local v12    # "hi":J
    :cond_4
    :goto_2
    move-object/from16 v18, v4

    const/16 v19, 0x5a

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3004
    const/16 v18, 0x1

    move/from16 v2, v18

    goto/16 :goto_0

    .line 2962
    .end local v14    # "lo":J
    .end local v16    # "ldt":Ljava/time/LocalDateTime;
    :cond_5
    move-wide/from16 v18, v7

    const-wide v20, 0xe79747c00L

    add-long v18, v18, v20

    move-wide/from16 v10, v18

    .line 2963
    .restart local v10    # "zeroSecs":J
    move-wide/from16 v18, v10

    const-wide v20, 0x497968bd80L

    div-long v18, v18, v20

    move-wide/from16 v12, v18

    .line 2964
    .restart local v12    # "hi":J
    move-wide/from16 v18, v10

    const-wide v20, 0x497968bd80L

    rem-long v18, v18, v20

    move-wide/from16 v14, v18

    .line 2965
    .restart local v14    # "lo":J
    move-wide/from16 v18, v14

    const-wide v20, 0xe79747c00L

    sub-long v18, v18, v20

    const/16 v20, 0x0

    sget-object v21, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static/range {v18 .. v21}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v18

    move-object/from16 v16, v18

    .line 2966
    .restart local v16    # "ldt":Ljava/time/LocalDateTime;
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    move/from16 v17, v18

    .line 2967
    .local v17, "pos":I
    move-object/from16 v18, v4

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2968
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v18

    if-nez v18, :cond_6

    .line 2969
    move-object/from16 v18, v4

    const-string v19, ":00"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2971
    :cond_6
    move-wide/from16 v18, v12

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gez v18, :cond_3

    .line 2972
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Ljava/time/LocalDateTime;->getYear()I

    move-result v18

    const/16 v19, -0x2710

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 2973
    move-object/from16 v18, v4

    move/from16 v19, v17

    move/from16 v20, v17

    const/16 v21, 0x2

    add-int/lit8 v20, v20, 0x2

    move-wide/from16 v21, v12

    const-wide/16 v23, 0x1

    sub-long v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    goto/16 :goto_1

    .line 2974
    :cond_7
    move-wide/from16 v18, v14

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_8

    .line 2975
    move-object/from16 v18, v4

    move/from16 v19, v17

    move-wide/from16 v20, v12

    invoke-virtual/range {v18 .. v21}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    move-result-object v18

    goto/16 :goto_1

    .line 2977
    :cond_8
    move-object/from16 v18, v4

    move/from16 v19, v17

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move-wide/from16 v20, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    invoke-virtual/range {v18 .. v21}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    move-result-object v18

    goto/16 :goto_1

    .line 2987
    .end local v17    # "pos":I
    :cond_9
    move/from16 v18, v9

    const/16 v19, 0x3e8

    move/from16 v0, v18

    rem-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 2988
    move-object/from16 v18, v4

    move/from16 v19, v9

    const/16 v20, 0x3e8

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    const v20, 0xf4240

    add-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    goto/16 :goto_2

    .line 2990
    :cond_a
    move-object/from16 v18, v4

    move/from16 v19, v9

    const v20, 0x3b9aca00

    add-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    goto/16 :goto_2

    .line 2993
    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v18, v0

    if-gtz v18, :cond_c

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move/from16 v18, v9

    if-lez v18, :cond_4

    .line 2994
    :cond_c
    move-object/from16 v18, v4

    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2995
    const v18, 0x5f5e100

    move/from16 v10, v18

    .line 2996
    .local v10, "div":I
    const/16 v18, 0x0

    move/from16 v11, v18

    .end local v12    # "hi":J
    .local v11, "i":I
    :goto_3
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    move/from16 v18, v9

    if-gtz v18, :cond_e

    :cond_d
    move/from16 v18, v11

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;->fractionalDigits:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 2997
    :cond_e
    move/from16 v18, v9

    move/from16 v19, v10

    div-int v18, v18, v19

    move/from16 v12, v18

    .line 2998
    .local v12, "digit":I
    move-object/from16 v18, v4

    move/from16 v19, v12

    const/16 v20, 0x30

    add-int/lit8 v19, v19, 0x30

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2999
    move/from16 v18, v9

    move/from16 v19, v12

    move/from16 v20, v10

    mul-int v19, v19, v20

    sub-int v18, v18, v19

    move/from16 v9, v18

    .line 3000
    move/from16 v18, v10

    const/16 v19, 0xa

    div-int/lit8 v18, v18, 0xa

    move/from16 v10, v18

    .line 2996
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3057
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
    const-string v1, "Instant()"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;
    return-object v0
.end method
