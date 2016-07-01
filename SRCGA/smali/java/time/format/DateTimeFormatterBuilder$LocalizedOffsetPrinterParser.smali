.class final Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;
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
    name = "LocalizedOffsetPrinterParser"
.end annotation


# instance fields
.field private final style:Ljava/time/format/TextStyle;


# direct methods
.method public constructor <init>(Ljava/time/format/TextStyle;)V
    .locals 4

    .prologue
    .line 3221
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;
    move-object v1, p1

    .local v1, "style":Ljava/time/format/TextStyle;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3222
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;->style:Ljava/time/format/TextStyle;

    .line 3223
    return-void
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 19

    .prologue
    .line 3255
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;
    move-object/from16 v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move/from16 v3, p3

    .local v3, "position":I
    move-object v12, v1

    move-object v13, v2

    move v14, v3

    const-string v15, "GMT"

    const/16 v16, 0x0

    const/16 v17, 0x3

    invoke-virtual/range {v12 .. v17}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v12

    if-nez v12, :cond_0

    .line 3256
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    .line 3341
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;
    :goto_0
    return v0

    .line 3258
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;
    :cond_0
    add-int/lit8 v3, v3, 0x3

    .line 3259
    move-object v12, v0

    iget-object v12, v12, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;->style:Ljava/time/format/TextStyle;

    sget-object v13, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v12, v13, :cond_1

    .line 3260
    new-instance v12, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const-string v14, ""

    const-string v15, "+HH:MM:ss"

    invoke-direct {v13, v14, v15}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v1

    move-object v14, v2

    move v15, v3

    invoke-virtual {v12, v13, v14, v15}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v12

    move v0, v12

    goto :goto_0

    .line 3262
    :cond_1
    move-object v12, v2

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    move v4, v12

    .line 3263
    .local v4, "end":I
    move v12, v3

    move v13, v4

    if-ne v12, v13, :cond_2

    .line 3264
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v14, 0x0

    move/from16 v16, v3

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v12

    move v0, v12

    goto :goto_0

    .line 3266
    :cond_2
    move-object v12, v2

    move v13, v3

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v5, v12

    .line 3267
    .local v5, "sign":C
    move v12, v5

    const/16 v13, 0x2b

    if-eq v12, v13, :cond_3

    move v12, v5

    const/16 v13, 0x2d

    if-eq v12, v13, :cond_3

    .line 3268
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v14, 0x0

    move/from16 v16, v3

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v12

    move v0, v12

    goto :goto_0

    .line 3270
    :cond_3
    move v12, v5

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_4

    const/4 v12, -0x1

    :goto_1
    move v6, v12

    .line 3271
    .local v6, "negative":I
    move v12, v3

    move v13, v4

    if-ne v12, v13, :cond_5

    .line 3272
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto :goto_0

    .line 3270
    .end local v6    # "negative":I
    :cond_4
    const/4 v12, 0x1

    goto :goto_1

    .line 3274
    .restart local v6    # "negative":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 3276
    move-object v12, v2

    move v13, v3

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v7, v12

    .line 3277
    .local v7, "ch":C
    move v12, v7

    const/16 v13, 0x30

    if-lt v12, v13, :cond_6

    move v12, v7

    const/16 v13, 0x39

    if-le v12, v13, :cond_7

    .line 3278
    :cond_6
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 3280
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 3281
    move v12, v7

    const/16 v13, 0x30

    add-int/lit8 v12, v12, -0x30

    move v8, v12

    .line 3282
    .local v8, "hour":I
    move v12, v3

    move v13, v4

    if-eq v12, v13, :cond_9

    .line 3283
    move-object v12, v2

    move v13, v3

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v7, v12

    .line 3284
    move v12, v7

    const/16 v13, 0x30

    if-lt v12, v13, :cond_9

    move v12, v7

    const/16 v13, 0x39

    if-gt v12, v13, :cond_9

    .line 3285
    move v12, v8

    const/16 v13, 0xa

    mul-int/lit8 v12, v12, 0xa

    move v13, v7

    const/16 v14, 0x30

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v12, v13

    move v8, v12

    .line 3286
    move v12, v8

    const/16 v13, 0x17

    if-le v12, v13, :cond_8

    .line 3287
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 3289
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 3292
    :cond_9
    move v12, v3

    move v13, v4

    if-eq v12, v13, :cond_a

    move-object v12, v2

    move v13, v3

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0x3a

    if-eq v12, v13, :cond_b

    .line 3293
    :cond_a
    move v12, v6

    const/16 v13, 0xe10

    mul-int/lit16 v12, v12, 0xe10

    move v13, v8

    mul-int/2addr v12, v13

    move v9, v12

    .line 3294
    .local v9, "offset":I
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move v14, v9

    int-to-long v14, v14

    move/from16 v16, v3

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v12

    move v0, v12

    goto/16 :goto_0

    .line 3296
    .end local v9    # "offset":I
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 3298
    move v12, v3

    move v13, v4

    const/4 v14, 0x2

    add-int/lit8 v13, v13, -0x2

    if-le v12, v13, :cond_c

    .line 3299
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 3301
    :cond_c
    move-object v12, v2

    move v13, v3

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v7, v12

    .line 3302
    move v12, v7

    const/16 v13, 0x30

    if-lt v12, v13, :cond_d

    move v12, v7

    const/16 v13, 0x39

    if-le v12, v13, :cond_e

    .line 3303
    :cond_d
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 3305
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 3306
    move v12, v7

    const/16 v13, 0x30

    add-int/lit8 v12, v12, -0x30

    move v9, v12

    .line 3307
    .local v9, "min":I
    move-object v12, v2

    move v13, v3

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v7, v12

    .line 3308
    move v12, v7

    const/16 v13, 0x30

    if-lt v12, v13, :cond_f

    move v12, v7

    const/16 v13, 0x39

    if-le v12, v13, :cond_10

    .line 3309
    :cond_f
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 3311
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 3312
    move v12, v9

    const/16 v13, 0xa

    mul-int/lit8 v12, v12, 0xa

    move v13, v7

    const/16 v14, 0x30

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v12, v13

    move v9, v12

    .line 3313
    move v12, v9

    const/16 v13, 0x3b

    if-le v12, v13, :cond_11

    .line 3314
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 3316
    :cond_11
    move v12, v3

    move v13, v4

    if-eq v12, v13, :cond_12

    move-object v12, v2

    move v13, v3

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0x3a

    if-eq v12, v13, :cond_13

    .line 3317
    :cond_12
    move v12, v6

    const/16 v13, 0xe10

    move v14, v8

    mul-int/2addr v13, v14

    const/16 v14, 0x3c

    move v15, v9

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    move v10, v12

    .line 3318
    .local v10, "offset":I
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move v14, v10

    int-to-long v14, v14

    move/from16 v16, v3

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v12

    move v0, v12

    goto/16 :goto_0

    .line 3320
    .end local v10    # "offset":I
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 3322
    move v12, v3

    move v13, v4

    const/4 v14, 0x2

    add-int/lit8 v13, v13, -0x2

    if-le v12, v13, :cond_14

    .line 3323
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 3325
    :cond_14
    move-object v12, v2

    move v13, v3

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v7, v12

    .line 3326
    move v12, v7

    const/16 v13, 0x30

    if-lt v12, v13, :cond_15

    move v12, v7

    const/16 v13, 0x39

    if-le v12, v13, :cond_16

    .line 3327
    :cond_15
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 3329
    :cond_16
    add-int/lit8 v3, v3, 0x1

    .line 3330
    move v12, v7

    const/16 v13, 0x30

    add-int/lit8 v12, v12, -0x30

    move v10, v12

    .line 3331
    .local v10, "sec":I
    move-object v12, v2

    move v13, v3

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v7, v12

    .line 3332
    move v12, v7

    const/16 v13, 0x30

    if-lt v12, v13, :cond_17

    move v12, v7

    const/16 v13, 0x39

    if-le v12, v13, :cond_18

    .line 3333
    :cond_17
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 3335
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 3336
    move v12, v10

    const/16 v13, 0xa

    mul-int/lit8 v12, v12, 0xa

    move v13, v7

    const/16 v14, 0x30

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v12, v13

    move v10, v12

    .line 3337
    move v12, v10

    const/16 v13, 0x3b

    if-le v12, v13, :cond_19

    .line 3338
    move v12, v3

    const/4 v13, -0x1

    xor-int/lit8 v12, v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 3340
    :cond_19
    move v12, v6

    const/16 v13, 0xe10

    move v14, v8

    mul-int/2addr v13, v14

    const/16 v14, 0x3c

    move v15, v9

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    move v14, v10

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    move v11, v12

    .line 3341
    .local v11, "offset":I
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move v14, v11

    int-to-long v14, v14

    move/from16 v16, v3

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v12

    move v0, v12

    goto/16 :goto_0
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 13

    .prologue
    .line 3227
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v8, v1

    sget-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v8

    move-object v3, v8

    .line 3228
    .local v3, "offsetSecs":Ljava/lang/Long;
    move-object v8, v3

    if-nez v8, :cond_0

    .line 3229
    const/4 v8, 0x0

    move v0, v8

    .line 3250
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;
    :goto_0
    return v0

    .line 3231
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;
    :cond_0
    move-object v8, v2

    const-string v9, "GMT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3232
    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetPrinterParser;->style:Ljava/time/format/TextStyle;

    sget-object v9, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v8, v9, :cond_1

    .line 3233
    new-instance v8, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, ""

    const-string v11, "+HH:MM:ss"

    invoke-direct {v9, v10, v11}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v8

    move v0, v8

    goto :goto_0

    .line 3235
    :cond_1
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v8

    move v4, v8

    .line 3236
    .local v4, "totalSecs":I
    move v8, v4

    if-eqz v8, :cond_3

    .line 3237
    move v8, v4

    const/16 v9, 0xe10

    div-int/lit16 v8, v8, 0xe10

    const/16 v9, 0x64

    rem-int/lit8 v8, v8, 0x64

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v5, v8

    .line 3238
    .local v5, "absHours":I
    move v8, v4

    const/16 v9, 0x3c

    div-int/lit8 v8, v8, 0x3c

    const/16 v9, 0x3c

    rem-int/lit8 v8, v8, 0x3c

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v6, v8

    .line 3239
    .local v6, "absMinutes":I
    move v8, v4

    const/16 v9, 0x3c

    rem-int/lit8 v8, v8, 0x3c

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move v7, v8

    .line 3240
    .local v7, "absSeconds":I
    move-object v8, v2

    move v9, v4

    if-gez v9, :cond_4

    const-string v9, "-"

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3241
    move v8, v6

    if-gtz v8, :cond_2

    move v8, v7

    if-lez v8, :cond_3

    .line 3242
    :cond_2
    move-object v8, v2

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    const/16 v10, 0xa

    div-int/lit8 v9, v9, 0xa

    const/16 v10, 0x30

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    .line 3243
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    const/16 v10, 0xa

    rem-int/lit8 v9, v9, 0xa

    const/16 v10, 0x30

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3244
    move v8, v7

    if-lez v8, :cond_3

    .line 3245
    move-object v8, v2

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v7

    const/16 v10, 0xa

    div-int/lit8 v9, v9, 0xa

    const/16 v10, 0x30

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    .line 3246
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v7

    const/16 v10, 0xa

    rem-int/lit8 v9, v9, 0xa

    const/16 v10, 0x30

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3250
    .end local v5    # "absHours":I
    .end local v6    # "absMinutes":I
    .end local v7    # "absSeconds":I
    :cond_3
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_0

    .line 3240
    .restart local v5    # "absHours":I
    .restart local v6    # "absMinutes":I
    .restart local v7    # "absSeconds":I
    :cond_4
    const-string v9, "+"

    goto :goto_1
.end method
