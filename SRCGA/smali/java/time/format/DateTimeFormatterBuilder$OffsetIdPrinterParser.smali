.class final Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
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
    name = "OffsetIdPrinterParser"
.end annotation


# static fields
.field static final INSTANCE_ID:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final PATTERNS:[Ljava/lang/String;


# instance fields
.field private final noOffsetText:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 3066
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "+HH"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "+HHmm"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "+HH:mm"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "+HHMM"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "+HH:MM"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "+HHMMss"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "+HH:MM:ss"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "+HHMMSS"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "+HH:MM:SS"

    aput-object v3, v1, v2

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    .line 3069
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "Z"

    const-string v3, "+HH:MM:ss"

    invoke-direct {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 3080
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    move-object v1, p1

    .local v1, "noOffsetText":Ljava/lang/String;
    move-object v2, p2

    .local v2, "pattern":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 3081
    move-object v3, v1

    const-string v4, "noOffsetText"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 3082
    move-object v3, v2

    const-string v4, "pattern"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 3083
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    .line 3084
    move-object v3, v0

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->checkPattern(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    .line 3085
    return-void
.end method

.method private checkPattern(Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 3088
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    sget-object v4, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 3089
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3090
    move v3, v2

    move v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    return v0

    .line 3088
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3093
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid zone offset pattern: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private parseNumber([IILjava/lang/CharSequence;Z)Z
    .locals 12

    .prologue
    .line 3180
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    move-object v1, p1

    .local v1, "array":[I
    move v2, p2

    .local v2, "arrayIndex":I
    move-object v3, p3

    .local v3, "parseText":Ljava/lang/CharSequence;
    move/from16 v4, p4

    .local v4, "required":Z
    move-object v9, v0

    iget v9, v9, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    move v10, v2

    if-ge v9, v10, :cond_0

    .line 3181
    const/4 v9, 0x0

    move v0, v9

    .line 3204
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    :goto_0
    return v0

    .line 3183
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    :cond_0
    move-object v9, v1

    const/4 v10, 0x0

    aget v9, v9, v10

    move v5, v9

    .line 3184
    .local v5, "pos":I
    move-object v9, v0

    iget v9, v9, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v10, 0x2

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_3

    move v9, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 3185
    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v3

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-gt v9, v10, :cond_1

    move-object v9, v3

    move v10, v5

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-eq v9, v10, :cond_2

    .line 3186
    :cond_1
    move v9, v4

    move v0, v9

    goto :goto_0

    .line 3188
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 3190
    :cond_3
    move v9, v5

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move-object v10, v3

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v9, v10, :cond_4

    .line 3191
    move v9, v4

    move v0, v9

    goto :goto_0

    .line 3193
    :cond_4
    move-object v9, v3

    move v10, v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v6, v9

    .line 3194
    .local v6, "ch1":C
    move-object v9, v3

    move v10, v5

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v7, v9

    .line 3195
    .local v7, "ch2":C
    move v9, v6

    const/16 v10, 0x30

    if-lt v9, v10, :cond_5

    move v9, v6

    const/16 v10, 0x39

    if-gt v9, v10, :cond_5

    move v9, v7

    const/16 v10, 0x30

    if-lt v9, v10, :cond_5

    move v9, v7

    const/16 v10, 0x39

    if-le v9, v10, :cond_6

    .line 3196
    :cond_5
    move v9, v4

    move v0, v9

    goto :goto_0

    .line 3198
    :cond_6
    move v9, v6

    const/16 v10, 0x30

    add-int/lit8 v9, v9, -0x30

    const/16 v10, 0xa

    mul-int/lit8 v9, v9, 0xa

    move v10, v7

    const/16 v11, 0x30

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v9, v10

    move v8, v9

    .line 3199
    .local v8, "value":I
    move v9, v8

    if-ltz v9, :cond_7

    move v9, v8

    const/16 v10, 0x3b

    if-le v9, v10, :cond_8

    .line 3200
    :cond_7
    move v9, v4

    move v0, v9

    goto :goto_0

    .line 3202
    :cond_8
    move-object v9, v1

    move v10, v2

    move v11, v8

    aput v11, v9, v10

    .line 3203
    move-object v9, v1

    const/4 v10, 0x0

    move v11, v5

    aput v11, v9, v10

    .line 3204
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 22

    .prologue
    .line 3133
    move-object/from16 v3, p0

    .local v3, "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    move-object/from16 v4, p1

    .local v4, "context":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v5, p2

    .local v5, "text":Ljava/lang/CharSequence;
    move/from16 v6, p3

    .local v6, "position":I
    move-object v14, v5

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move v7, v14

    .line 3134
    .local v7, "length":I
    move-object v14, v3

    iget-object v14, v14, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    move v8, v14

    .line 3135
    .local v8, "noOffsetLen":I
    move v14, v8

    if-nez v14, :cond_0

    .line 3136
    move v14, v6

    move v15, v7

    if-ne v14, v15, :cond_2

    .line 3137
    move-object v14, v4

    sget-object v15, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v16, 0x0

    move/from16 v18, v6

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v14

    move v3, v14

    .line 3167
    .end local v3    # "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    :goto_0
    return v3

    .line 3140
    .restart local v3    # "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    :cond_0
    move v14, v6

    move v15, v7

    if-ne v14, v15, :cond_1

    .line 3141
    move v14, v6

    const/4 v15, -0x1

    xor-int/lit8 v14, v14, -0x1

    move v3, v14

    goto :goto_0

    .line 3143
    :cond_1
    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v6

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3144
    move-object v14, v4

    sget-object v15, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v16, 0x0

    move/from16 v18, v6

    move/from16 v19, v6

    move/from16 v20, v8

    add-int v19, v19, v20

    invoke-virtual/range {v14 .. v19}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v14

    move v3, v14

    goto :goto_0

    .line 3149
    :cond_2
    move-object v14, v5

    move v15, v6

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    move v9, v14

    .line 3150
    .local v9, "sign":C
    move v14, v9

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_3

    move v14, v9

    const/16 v15, 0x2d

    if-ne v14, v15, :cond_8

    .line 3152
    :cond_3
    move v14, v9

    const/16 v15, 0x2d

    if-ne v14, v15, :cond_5

    const/4 v14, -0x1

    :goto_1
    move v10, v14

    .line 3153
    .local v10, "negative":I
    const/4 v14, 0x4

    new-array v14, v14, [I

    move-object v11, v14

    .line 3154
    .local v11, "array":[I
    move-object v14, v11

    const/4 v15, 0x0

    move/from16 v16, v6

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v15

    .line 3155
    move-object v14, v3

    move-object v15, v11

    const/16 v16, 0x1

    move-object/from16 v17, v5

    const/16 v18, 0x1

    invoke-direct/range {v14 .. v18}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v14

    if-nez v14, :cond_4

    move-object v14, v3

    move-object v15, v11

    const/16 v16, 0x2

    move-object/from16 v17, v5

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    const/16 v18, 0x1

    .line 3156
    :goto_2
    invoke-direct/range {v14 .. v18}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v14

    if-nez v14, :cond_4

    move-object v14, v3

    move-object v15, v11

    const/16 v16, 0x3

    move-object/from16 v17, v5

    const/16 v18, 0x0

    .line 3157
    invoke-direct/range {v14 .. v18}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseNumber([IILjava/lang/CharSequence;Z)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_4
    const/4 v14, 0x1

    :goto_3
    if-nez v14, :cond_8

    .line 3159
    move v14, v10

    int-to-long v14, v14

    move-object/from16 v16, v11

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0xe10

    mul-long v16, v16, v18

    move-object/from16 v18, v11

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3c

    mul-long v18, v18, v20

    add-long v16, v16, v18

    move-object/from16 v18, v11

    const/16 v19, 0x3

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    mul-long v14, v14, v16

    move-wide v12, v14

    .line 3160
    .local v12, "offsetSecs":J
    move-object v14, v4

    sget-object v15, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    move-wide/from16 v16, v12

    move/from16 v18, v6

    move-object/from16 v19, v11

    const/16 v20, 0x0

    aget v19, v19, v20

    invoke-virtual/range {v14 .. v19}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v14

    move v3, v14

    goto/16 :goto_0

    .line 3152
    .end local v10    # "negative":I
    .end local v11    # "array":[I
    .end local v12    # "offsetSecs":J
    :cond_5
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 3155
    .restart local v10    # "negative":I
    .restart local v11    # "array":[I
    :cond_6
    const/16 v18, 0x0

    goto :goto_2

    .line 3157
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 3164
    .end local v10    # "negative":I
    .end local v11    # "array":[I
    :cond_8
    move v14, v8

    if-nez v14, :cond_9

    .line 3165
    move-object v14, v4

    sget-object v15, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const-wide/16 v16, 0x0

    move/from16 v18, v6

    move/from16 v19, v6

    move/from16 v20, v8

    add-int v19, v19, v20

    invoke-virtual/range {v14 .. v19}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v14

    move v3, v14

    goto/16 :goto_0

    .line 3167
    :cond_9
    move v14, v6

    const/4 v15, -0x1

    xor-int/lit8 v14, v14, -0x1

    move v3, v14

    goto/16 :goto_0
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 13

    .prologue
    .line 3098
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v10, v1

    sget-object v11, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v10

    move-object v3, v10

    .line 3099
    .local v3, "offsetSecs":Ljava/lang/Long;
    move-object v10, v3

    if-nez v10, :cond_0

    .line 3100
    const/4 v10, 0x0

    move v0, v10

    .line 3128
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    :goto_0
    return v0

    .line 3102
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    :cond_0
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v10

    move v4, v10

    .line 3103
    .local v4, "totalSecs":I
    move v10, v4

    if-nez v10, :cond_2

    .line 3104
    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3128
    :cond_1
    :goto_1
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 3106
    :cond_2
    move v10, v4

    const/16 v11, 0xe10

    div-int/lit16 v10, v10, 0xe10

    const/16 v11, 0x64

    rem-int/lit8 v10, v10, 0x64

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    move v5, v10

    .line 3107
    .local v5, "absHours":I
    move v10, v4

    const/16 v11, 0x3c

    div-int/lit8 v10, v10, 0x3c

    const/16 v11, 0x3c

    rem-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    move v6, v10

    .line 3108
    .local v6, "absMinutes":I
    move v10, v4

    const/16 v11, 0x3c

    rem-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    move v7, v10

    .line 3109
    .local v7, "absSeconds":I
    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    move v8, v10

    .line 3110
    .local v8, "bufPos":I
    move v10, v5

    move v9, v10

    .line 3111
    .local v9, "output":I
    move-object v10, v2

    move v11, v4

    if-gez v11, :cond_6

    const-string v11, "-"

    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v5

    const/16 v12, 0xa

    div-int/lit8 v11, v11, 0xa

    const/16 v12, 0x30

    add-int/lit8 v11, v11, 0x30

    int-to-char v11, v11

    .line 3112
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v5

    const/16 v12, 0xa

    rem-int/lit8 v11, v11, 0xa

    const/16 v12, 0x30

    add-int/lit8 v11, v11, 0x30

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3113
    move-object v10, v0

    iget v10, v10, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v11, 0x3

    if-ge v10, v11, :cond_3

    move-object v10, v0

    iget v10, v10, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v11, 0x1

    if-lt v10, v11, :cond_5

    move v10, v6

    if-lez v10, :cond_5

    .line 3114
    :cond_3
    move-object v10, v2

    move-object v11, v0

    iget v11, v11, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v12, 0x2

    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_7

    const-string v11, ":"

    :goto_3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v6

    const/16 v12, 0xa

    div-int/lit8 v11, v11, 0xa

    const/16 v12, 0x30

    add-int/lit8 v11, v11, 0x30

    int-to-char v11, v11

    .line 3115
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v6

    const/16 v12, 0xa

    rem-int/lit8 v11, v11, 0xa

    const/16 v12, 0x30

    add-int/lit8 v11, v11, 0x30

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3116
    move v10, v9

    move v11, v6

    add-int/2addr v10, v11

    move v9, v10

    .line 3117
    move-object v10, v0

    iget v10, v10, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v11, 0x7

    if-ge v10, v11, :cond_4

    move-object v10, v0

    iget v10, v10, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v11, 0x5

    if-lt v10, v11, :cond_5

    move v10, v7

    if-lez v10, :cond_5

    .line 3118
    :cond_4
    move-object v10, v2

    move-object v11, v0

    iget v11, v11, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/4 v12, 0x2

    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_8

    const-string v11, ":"

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v7

    const/16 v12, 0xa

    div-int/lit8 v11, v11, 0xa

    const/16 v12, 0x30

    add-int/lit8 v11, v11, 0x30

    int-to-char v11, v11

    .line 3119
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v7

    const/16 v12, 0xa

    rem-int/lit8 v11, v11, 0xa

    const/16 v12, 0x30

    add-int/lit8 v11, v11, 0x30

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3120
    move v10, v9

    move v11, v7

    add-int/2addr v10, v11

    move v9, v10

    .line 3123
    :cond_5
    move v10, v9

    if-nez v10, :cond_1

    .line 3124
    move-object v10, v2

    move v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3125
    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    goto/16 :goto_1

    .line 3111
    :cond_6
    const-string v11, "+"

    goto/16 :goto_2

    .line 3114
    :cond_7
    const-string v11, ""

    goto :goto_3

    .line 3118
    :cond_8
    const-string v11, ""

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3209
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3210
    .local v1, "converted":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offset("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
    return-object v0
.end method
