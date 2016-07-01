.class Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberPrinterParser"
.end annotation


# static fields
.field static final EXCEED_POINTS:[I


# instance fields
.field final field:Ljava/time/temporal/TemporalField;

.field final maxWidth:I

.field final minWidth:I

.field final signStyle:Ljava/time/format/SignStyle;

.field final subsequentWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2283
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method constructor <init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V
    .locals 7

    .prologue
    .line 2310
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move v2, p2

    .local v2, "minWidth":I
    move v3, p3

    .local v3, "maxWidth":I
    move-object v4, p4

    .local v4, "signStyle":Ljava/time/format/SignStyle;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 2312
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2313
    move-object v5, v0

    move v6, v2

    iput v6, v5, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2314
    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2315
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    .line 2316
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2317
    return-void
.end method

.method private constructor <init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V
    .locals 8

    .prologue
    .line 2329
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move v2, p2

    .local v2, "minWidth":I
    move v3, p3

    .local v3, "maxWidth":I
    move-object v4, p4

    .local v4, "signStyle":Ljava/time/format/SignStyle;
    move v5, p5

    .local v5, "subsequentWidth":I
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 2331
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2332
    move-object v6, v0

    move v7, v2

    iput v7, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2333
    move-object v6, v0

    move v7, v3

    iput v7, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2334
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    .line 2335
    move-object v6, v0

    move v7, v5

    iput v7, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2336
    return-void
.end method

.method synthetic constructor <init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;ILjava/time/format/DateTimeFormatterBuilder$1;)V
    .locals 13

    .prologue
    .line 2278
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v1, p1

    .local v1, "x0":Ljava/time/temporal/TemporalField;
    move v2, p2

    .local v2, "x1":I
    move/from16 v3, p3

    .local v3, "x2":I
    move-object/from16 v4, p4

    .local v4, "x3":Ljava/time/format/SignStyle;
    move/from16 v5, p5

    .local v5, "x4":I
    move-object/from16 v6, p6

    .local v6, "x5":Ljava/time/format/DateTimeFormatterBuilder$1;
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-object v11, v4

    move v12, v5

    invoke-direct/range {v7 .. v12}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    return-void
.end method


# virtual methods
.method getValue(Ljava/time/format/DateTimePrintContext;J)J
    .locals 6

    .prologue
    .line 2415
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-wide v2, p2

    .local v2, "value":J
    move-wide v4, v2

    move-wide v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    return-wide v0
.end method

.method isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z
    .locals 4

    .prologue
    .line 2419
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v2, :cond_1

    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move-object v3, v0

    iget v3, v3, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v3, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    return v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 28

    .prologue
    .line 2425
    move-object/from16 v3, p0

    .local v3, "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object/from16 v4, p1

    .local v4, "context":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v5, p2

    .local v5, "text":Ljava/lang/CharSequence;
    move/from16 v6, p3

    .local v6, "position":I
    move-object/from16 v22, v5

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    move/from16 v7, v22

    .line 2426
    .local v7, "length":I
    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 2427
    move/from16 v22, v6

    const/16 v23, -0x1

    xor-int/lit8 v22, v22, -0x1

    move/from16 v3, v22

    .line 2522
    .end local v3    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :goto_0
    return v3

    .line 2429
    .restart local v3    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_0
    move-object/from16 v22, v5

    move/from16 v23, v6

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    move/from16 v8, v22

    .line 2430
    .local v8, "sign":C
    const/16 v22, 0x0

    move/from16 v9, v22

    .line 2431
    .local v9, "negative":Z
    const/16 v22, 0x0

    move/from16 v10, v22

    .line 2432
    .local v10, "positive":Z
    move/from16 v22, v8

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljava/time/format/DateTimeParseContext;->getSymbols()Ljava/time/format/DecimalStyle;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 2433
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v24

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    const/16 v25, 0x1

    :goto_1
    invoke-virtual/range {v22 .. v25}, Ljava/time/format/SignStyle;->parse(ZZZ)Z

    move-result v22

    if-nez v22, :cond_2

    .line 2434
    move/from16 v22, v6

    const/16 v23, -0x1

    xor-int/lit8 v22, v22, -0x1

    move/from16 v3, v22

    goto :goto_0

    .line 2433
    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    .line 2436
    :cond_2
    const/16 v22, 0x1

    move/from16 v10, v22

    .line 2437
    add-int/lit8 v6, v6, 0x1

    .line 2449
    :cond_3
    :goto_2
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v22

    if-nez v22, :cond_4

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v22 .. v23}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v22

    if-eqz v22, :cond_9

    :cond_4
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move/from16 v22, v0

    :goto_3
    move/from16 v11, v22

    .line 2450
    .local v11, "effMinWidth":I
    move/from16 v22, v6

    move/from16 v23, v11

    add-int v22, v22, v23

    move/from16 v12, v22

    .line 2451
    .local v12, "minEndPos":I
    move/from16 v22, v12

    move/from16 v23, v7

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_a

    .line 2452
    move/from16 v22, v6

    const/16 v23, -0x1

    xor-int/lit8 v22, v22, -0x1

    move/from16 v3, v22

    goto/16 :goto_0

    .line 2438
    .end local v11    # "effMinWidth":I
    .end local v12    # "minEndPos":I
    :cond_5
    move/from16 v22, v8

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljava/time/format/DateTimeParseContext;->getSymbols()Ljava/time/format/DecimalStyle;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/time/format/DecimalStyle;->getNegativeSign()C

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 2439
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v24

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    const/16 v25, 0x1

    :goto_4
    invoke-virtual/range {v22 .. v25}, Ljava/time/format/SignStyle;->parse(ZZZ)Z

    move-result v22

    if-nez v22, :cond_7

    .line 2440
    move/from16 v22, v6

    const/16 v23, -0x1

    xor-int/lit8 v22, v22, -0x1

    move/from16 v3, v22

    goto/16 :goto_0

    .line 2439
    :cond_6
    const/16 v25, 0x0

    goto :goto_4

    .line 2442
    :cond_7
    const/16 v22, 0x1

    move/from16 v9, v22

    .line 2443
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 2445
    :cond_8
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    move-object/from16 v22, v0

    sget-object v23, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 2446
    move/from16 v22, v6

    const/16 v23, -0x1

    xor-int/lit8 v22, v22, -0x1

    move/from16 v3, v22

    goto/16 :goto_0

    .line 2449
    :cond_9
    const/16 v22, 0x1

    goto/16 :goto_3

    .line 2454
    .restart local v11    # "effMinWidth":I
    .restart local v12    # "minEndPos":I
    :cond_a
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v22 .. v23}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v22

    if-eqz v22, :cond_c

    :cond_b
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    move/from16 v22, v0

    :goto_5
    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v13, v22

    .line 2455
    .local v13, "effMaxWidth":I
    const-wide/16 v22, 0x0

    move-wide/from16 v14, v22

    .line 2456
    .local v14, "total":J
    const/16 v22, 0x0

    move-object/from16 v16, v22

    .line 2457
    .local v16, "totalBig":Ljava/math/BigInteger;
    move/from16 v22, v6

    move/from16 v17, v22

    .line 2458
    .local v17, "pos":I
    const/16 v22, 0x0

    move/from16 v18, v22

    .local v18, "pass":I
    :goto_6
    move/from16 v22, v18

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    .line 2459
    move/from16 v22, v17

    move/from16 v23, v13

    add-int v22, v22, v23

    move/from16 v23, v7

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v19, v22

    .line 2460
    .local v19, "maxEndPos":I
    :goto_7
    move/from16 v22, v17

    move/from16 v23, v19

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 2461
    move-object/from16 v22, v5

    move/from16 v23, v17

    add-int/lit8 v17, v17, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    move/from16 v20, v22

    .line 2462
    .local v20, "ch":C
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljava/time/format/DateTimeParseContext;->getSymbols()Ljava/time/format/DecimalStyle;

    move-result-object v22

    move/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Ljava/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v22

    move/from16 v21, v22

    .line 2463
    .local v21, "digit":I
    move/from16 v22, v21

    if-gez v22, :cond_d

    .line 2464
    add-int/lit8 v17, v17, -0x1

    .line 2465
    move/from16 v22, v17

    move/from16 v23, v12

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    .line 2466
    move/from16 v22, v6

    const/16 v23, -0x1

    xor-int/lit8 v22, v22, -0x1

    move/from16 v3, v22

    goto/16 :goto_0

    .line 2454
    .end local v13    # "effMaxWidth":I
    .end local v14    # "total":J
    .end local v16    # "totalBig":Ljava/math/BigInteger;
    .end local v17    # "pos":I
    .end local v18    # "pass":I
    .end local v19    # "maxEndPos":I
    .end local v20    # "ch":C
    .end local v21    # "digit":I
    :cond_c
    const/16 v22, 0x9

    goto :goto_5

    .line 2470
    .restart local v13    # "effMaxWidth":I
    .restart local v14    # "total":J
    .restart local v16    # "totalBig":Ljava/math/BigInteger;
    .restart local v17    # "pos":I
    .restart local v18    # "pass":I
    .restart local v19    # "maxEndPos":I
    .restart local v20    # "ch":C
    .restart local v21    # "digit":I
    :cond_d
    move/from16 v22, v17

    move/from16 v23, v6

    sub-int v22, v22, v23

    const/16 v23, 0x12

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_f

    .line 2471
    move-object/from16 v22, v16

    if-nez v22, :cond_e

    .line 2472
    move-wide/from16 v22, v14

    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v16, v22

    .line 2474
    :cond_e
    move-object/from16 v22, v16

    sget-object v23, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    move/from16 v23, v21

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v16, v22

    .line 2478
    :goto_8
    goto :goto_7

    .line 2476
    :cond_f
    move-wide/from16 v22, v14

    const-wide/16 v24, 0xa

    mul-long v22, v22, v24

    move/from16 v24, v21

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v14, v22

    goto :goto_8

    .line 2479
    .end local v20    # "ch":C
    .end local v21    # "digit":I
    :cond_10
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    move/from16 v22, v0

    if-lez v22, :cond_11

    move/from16 v22, v18

    if-nez v22, :cond_11

    .line 2481
    move/from16 v22, v17

    move/from16 v23, v6

    sub-int v22, v22, v23

    move/from16 v20, v22

    .line 2482
    .local v20, "parseLen":I
    move/from16 v22, v11

    move/from16 v23, v20

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v13, v22

    .line 2483
    move/from16 v22, v6

    move/from16 v17, v22

    .line 2484
    const-wide/16 v22, 0x0

    move-wide/from16 v14, v22

    .line 2485
    const/16 v22, 0x0

    move-object/from16 v16, v22

    .line 2458
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 2490
    .end local v19    # "maxEndPos":I
    .end local v20    # "parseLen":I
    :cond_11
    move/from16 v22, v9

    if-eqz v22, :cond_17

    .line 2491
    move-object/from16 v22, v16

    if-eqz v22, :cond_15

    .line 2492
    move-object/from16 v22, v16

    sget-object v23, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 2493
    move/from16 v22, v6

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    const/16 v23, -0x1

    xor-int/lit8 v22, v22, -0x1

    move/from16 v3, v22

    goto/16 :goto_0

    .line 2495
    :cond_12
    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v16, v22

    .line 2514
    .end local v18    # "pass":I
    :cond_13
    :goto_9
    move-object/from16 v22, v16

    if-eqz v22, :cond_19

    .line 2515
    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->bitLength()I

    move-result v22

    const/16 v23, 0x3f

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_14

    .line 2517
    move-object/from16 v22, v16

    sget-object v23, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v16, v22

    .line 2518
    add-int/lit8 v17, v17, -0x1

    .line 2520
    :cond_14
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v24

    move/from16 v26, v6

    move/from16 v27, v17

    invoke-virtual/range {v22 .. v27}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    move-result v22

    move/from16 v3, v22

    goto/16 :goto_0

    .line 2497
    .restart local v18    # "pass":I
    :cond_15
    move-wide/from16 v22, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_16

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 2498
    move/from16 v22, v6

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    const/16 v23, -0x1

    xor-int/lit8 v22, v22, -0x1

    move/from16 v3, v22

    goto/16 :goto_0

    .line 2500
    :cond_16
    move-wide/from16 v22, v14

    move-wide/from16 v0, v22

    neg-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v14, v22

    goto :goto_9

    .line 2502
    :cond_17
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    move-object/from16 v22, v0

    sget-object v23, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_13

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 2503
    move/from16 v22, v17

    move/from16 v23, v6

    sub-int v22, v22, v23

    move/from16 v18, v22

    .line 2504
    .local v18, "parseLen":I
    move/from16 v22, v10

    if-eqz v22, :cond_18

    .line 2505
    move/from16 v22, v18

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_13

    .line 2506
    move/from16 v22, v6

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    const/16 v23, -0x1

    xor-int/lit8 v22, v22, -0x1

    move/from16 v3, v22

    goto/16 :goto_0

    .line 2509
    :cond_18
    move/from16 v22, v18

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    .line 2510
    move/from16 v22, v6

    const/16 v23, -0x1

    xor-int/lit8 v22, v22, -0x1

    move/from16 v3, v22

    goto/16 :goto_0

    .line 2522
    .end local v18    # "parseLen":I
    :cond_19
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-wide/from16 v24, v14

    move/from16 v26, v6

    move/from16 v27, v17

    invoke-virtual/range {v22 .. v27}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    move-result v22

    move/from16 v3, v22

    goto/16 :goto_0
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 16

    .prologue
    .line 2362
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object/from16 v2, p1

    .local v2, "context":Ljava/time/format/DateTimePrintContext;
    move-object/from16 v3, p2

    .local v3, "buf":Ljava/lang/StringBuilder;
    move-object v10, v2

    move-object v11, v1

    iget-object v11, v11, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    move-object v4, v10

    .line 2363
    .local v4, "valueLong":Ljava/lang/Long;
    move-object v10, v4

    if-nez v10, :cond_0

    .line 2364
    const/4 v10, 0x0

    move v1, v10

    .line 2404
    .end local v1    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :goto_0
    return v1

    .line 2366
    .restart local v1    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_0
    move-object v10, v1

    move-object v11, v2

    move-object v12, v4

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->getValue(Ljava/time/format/DateTimePrintContext;J)J

    move-result-wide v10

    move-wide v5, v10

    .line 2367
    .local v5, "value":J
    move-object v10, v2

    invoke-virtual {v10}, Ljava/time/format/DateTimePrintContext;->getSymbols()Ljava/time/format/DecimalStyle;

    move-result-object v10

    move-object v7, v10

    .line 2368
    .local v7, "symbols":Ljava/time/format/DecimalStyle;
    move-wide v10, v5

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    const-string v10, "9223372036854775808"

    :goto_1
    move-object v8, v10

    .line 2369
    .local v8, "str":Ljava/lang/String;
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object v11, v1

    iget v11, v11, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-le v10, v11, :cond_2

    .line 2370
    new-instance v10, Ljava/time/DateTimeException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Field "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cannot be printed as the value "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide v13, v5

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " exceeds the maximum print width of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    iget v13, v13, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2368
    .end local v8    # "str":Ljava/lang/String;
    :cond_1
    move-wide v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 2374
    .restart local v8    # "str":Ljava/lang/String;
    :cond_2
    move-object v10, v7

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 2376
    move-wide v10, v5

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_4

    .line 2377
    sget-object v10, Ljava/time/format/DateTimeFormatterBuilder$4;->$SwitchMap$java$time$format$SignStyle:[I

    move-object v11, v1

    iget-object v11, v11, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v11}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 2385
    .line 2400
    :cond_3
    :goto_2
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_3
    move v10, v9

    move-object v11, v1

    iget v11, v11, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move-object v12, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    if-ge v10, v11, :cond_5

    .line 2401
    move-object v10, v3

    move-object v11, v7

    invoke-virtual {v11}, Ljava/time/format/DecimalStyle;->getZeroDigit()C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2400
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2379
    .end local v9    # "i":I
    :pswitch_0
    move-object v10, v1

    iget v10, v10, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/16 v11, 0x13

    if-ge v10, v11, :cond_3

    move-wide v10, v5

    sget-object v12, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[I

    move-object v13, v1

    iget v13, v13, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    aget v12, v12, v13

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_3

    .line 2380
    move-object v10, v3

    move-object v11, v7

    invoke-virtual {v11}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    goto :goto_2

    .line 2384
    :pswitch_1
    move-object v10, v3

    move-object v11, v7

    invoke-virtual {v11}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    goto :goto_2

    .line 2388
    :cond_4
    sget-object v10, Ljava/time/format/DateTimeFormatterBuilder$4;->$SwitchMap$java$time$format$SignStyle:[I

    move-object v11, v1

    iget-object v11, v11, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v11}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    goto :goto_2

    .line 2392
    :pswitch_2
    move-object v10, v3

    move-object v11, v7

    invoke-virtual {v11}, Ljava/time/format/DecimalStyle;->getNegativeSign()C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2393
    goto :goto_2

    .line 2395
    :pswitch_3
    new-instance v10, Ljava/time/DateTimeException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Field "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cannot be printed as the value "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide v13, v5

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cannot be negative according to the SignStyle"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2403
    .restart local v9    # "i":I
    :cond_5
    move-object v10, v3

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2404
    const/4 v10, 0x1

    move v1, v10

    goto/16 :goto_0

    .line 2377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2388
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setValue(Ljava/time/format/DateTimeParseContext;JII)I
    .locals 12

    .prologue
    .line 2535
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-wide v2, p2

    .local v2, "value":J
    move/from16 v4, p4

    .local v4, "errorPos":I
    move/from16 v5, p5

    .local v5, "successPos":I
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-wide v8, v2

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2540
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v1, v0

    iget v1, v1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v2, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    if-ne v1, v2, :cond_0

    .line 2541
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2546
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :goto_0
    return-object v0

    .line 2543
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_0
    move-object v1, v0

    iget v1, v1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v2, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v1, v2, :cond_1

    .line 2544
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 2546
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto/16 :goto_0
.end method

.method withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 9

    .prologue
    .line 2344
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move-object v1, v0

    iget v1, v1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2345
    move-object v1, v0

    move-object v0, v1

    .line 2347
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_0
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object v4, v0

    iget v4, v4, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move-object v5, v0

    iget v5, v5, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 11

    .prologue
    .line 2357
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    move v1, p1

    .local v1, "subsequentWidth":I
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object v5, v0

    iget v5, v5, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move-object v6, v0

    iget v6, v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    move-object v8, v0

    iget v8, v8, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    move v9, v1

    add-int/2addr v8, v9

    invoke-direct/range {v3 .. v8}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    return-object v0
.end method
