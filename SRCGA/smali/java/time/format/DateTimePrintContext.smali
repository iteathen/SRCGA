.class final Ljava/time/format/DateTimePrintContext;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"


# instance fields
.field private locale:Ljava/util/Locale;

.field private optional:I

.field private symbols:Ljava/time/format/DecimalStyle;

.field private temporal:Ljava/time/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)V
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, p2

    .local v2, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 94
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Ljava/time/format/DateTimePrintContext;->adjust(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v4

    iput-object v4, v3, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    .line 95
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v3, Ljava/time/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    .line 96
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/format/DateTimeFormatter;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v4

    iput-object v4, v3, Ljava/time/format/DateTimePrintContext;->symbols:Ljava/time/format/DecimalStyle;

    .line 97
    return-void
.end method

.method constructor <init>(Ljava/time/temporal/TemporalAccessor;Ljava/util/Locale;Ljava/time/format/DecimalStyle;)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, p2

    .local v2, "locale":Ljava/util/Locale;
    move-object v3, p3

    .local v3, "symbols":Ljava/time/format/DecimalStyle;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 101
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    .line 102
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljava/time/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    .line 103
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljava/time/format/DateTimePrintContext;->symbols:Ljava/time/format/DecimalStyle;

    .line 104
    return-void
.end method

.method private static adjust(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/time/temporal/TemporalAccessor;
    .locals 20

    .prologue
    .line 108
    move-object/from16 v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object/from16 v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v13, v1

    invoke-virtual {v13}, Ljava/time/format/DateTimeFormatter;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v13

    move-object v2, v13

    .line 109
    .local v2, "overrideChrono":Ljava/time/chrono/Chronology;
    move-object v13, v1

    invoke-virtual {v13}, Ljava/time/format/DateTimeFormatter;->getZone()Ljava/time/ZoneId;

    move-result-object v13

    move-object v3, v13

    .line 110
    .local v3, "overrideZone":Ljava/time/ZoneId;
    move-object v13, v2

    if-nez v13, :cond_0

    move-object v13, v3

    if-nez v13, :cond_0

    .line 111
    move-object v13, v0

    move-object v0, v13

    .line 163
    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :goto_0
    return-object v0

    .line 115
    .restart local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    move-object v13, v0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/time/chrono/Chronology;

    move-object v4, v13

    .line 116
    .local v4, "temporalChrono":Ljava/time/chrono/Chronology;
    move-object v13, v0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/time/ZoneId;

    move-object v5, v13

    .line 117
    .local v5, "temporalZone":Ljava/time/ZoneId;
    move-object v13, v4

    move-object v14, v2

    invoke-static {v13, v14}, Ljava/time/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 118
    const/4 v13, 0x0

    move-object v2, v13

    .line 120
    :cond_1
    move-object v13, v5

    move-object v14, v3

    invoke-static {v13, v14}, Ljava/time/jdk8/Jdk8Methods;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 121
    const/4 v13, 0x0

    move-object v3, v13

    .line 123
    :cond_2
    move-object v13, v2

    if-nez v13, :cond_3

    move-object v13, v3

    if-nez v13, :cond_3

    .line 124
    move-object v13, v0

    move-object v0, v13

    goto :goto_0

    .line 126
    :cond_3
    move-object v13, v2

    if-eqz v13, :cond_4

    move-object v13, v2

    :goto_1
    move-object v6, v13

    .line 127
    .local v6, "effectiveChrono":Ljava/time/chrono/Chronology;
    move-object v13, v3

    if-eqz v13, :cond_5

    move-object v13, v3

    :goto_2
    move-object v7, v13

    .line 130
    .local v7, "effectiveZone":Ljava/time/ZoneId;
    move-object v13, v3

    if-eqz v13, :cond_8

    .line 132
    move-object v13, v0

    sget-object v14, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 133
    move-object v13, v6

    if-eqz v13, :cond_6

    move-object v13, v6

    :goto_3
    check-cast v13, Ljava/time/chrono/AbstractChronology;

    check-cast v13, Ljava/time/chrono/AbstractChronology;

    move-object v8, v13

    .line 134
    .local v8, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v13, v8

    move-object v14, v0

    invoke-static {v14}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v13, v14, v15}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v13

    move-object v0, v13

    goto :goto_0

    .line 126
    .end local v6    # "effectiveChrono":Ljava/time/chrono/Chronology;
    .end local v7    # "effectiveZone":Ljava/time/ZoneId;
    .end local v8    # "chrono":Ljava/time/chrono/AbstractChronology;
    :cond_4
    move-object v13, v4

    goto :goto_1

    .line 127
    .restart local v6    # "effectiveChrono":Ljava/time/chrono/Chronology;
    :cond_5
    move-object v13, v5

    goto :goto_2

    .line 133
    .restart local v7    # "effectiveZone":Ljava/time/ZoneId;
    :cond_6
    sget-object v13, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    goto :goto_3

    .line 137
    :cond_7
    move-object v13, v3

    invoke-virtual {v13}, Ljava/time/ZoneId;->normalized()Ljava/time/ZoneId;

    move-result-object v13

    move-object v8, v13

    .line 138
    .local v8, "normalizedOffset":Ljava/time/ZoneId;
    move-object v13, v0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/time/ZoneOffset;

    move-object v9, v13

    .line 139
    .local v9, "temporalOffset":Ljava/time/ZoneOffset;
    move-object v13, v8

    instance-of v13, v13, Ljava/time/ZoneOffset;

    if-eqz v13, :cond_8

    move-object v13, v9

    if-eqz v13, :cond_8

    move-object v13, v8

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 140
    new-instance v13, Ljava/time/DateTimeException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid override zone for temporal: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 144
    .end local v8    # "normalizedOffset":Ljava/time/ZoneId;
    .end local v9    # "temporalOffset":Ljava/time/ZoneOffset;
    :cond_8
    move-object v13, v2

    if-eqz v13, :cond_d

    .line 145
    move-object v13, v0

    sget-object v14, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 146
    move-object v13, v6

    move-object v14, v0

    invoke-interface {v13, v14}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v13

    move-object v8, v13

    .line 163
    .local v8, "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    :goto_4
    new-instance v13, Ljava/time/format/DateTimePrintContext$1;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v8

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v18}, Ljava/time/format/DateTimePrintContext$1;-><init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/temporal/TemporalAccessor;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    move-object v0, v13

    goto/16 :goto_0

    .line 149
    .end local v8    # "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    :cond_9
    move-object v13, v2

    sget-object v14, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v13, v14, :cond_a

    move-object v13, v4

    if-eqz v13, :cond_c

    .line 150
    :cond_a
    invoke-static {}, Ljava/time/temporal/ChronoField;->values()[Ljava/time/temporal/ChronoField;

    move-result-object v13

    move-object v9, v13

    move-object v13, v9

    array-length v13, v13

    move v10, v13

    const/4 v13, 0x0

    move v11, v13

    :goto_5
    move v13, v11

    move v14, v10

    if-ge v13, v14, :cond_c

    move-object v13, v9

    move v14, v11

    aget-object v13, v13, v14

    move-object v12, v13

    .line 151
    .local v12, "f":Ljava/time/temporal/ChronoField;
    move-object v13, v12

    invoke-virtual {v13}, Ljava/time/temporal/ChronoField;->isDateBased()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object v13, v0

    move-object v14, v12

    invoke-interface {v13, v14}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 152
    new-instance v13, Ljava/time/DateTimeException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid override chronology for temporal: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 150
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 156
    .end local v12    # "f":Ljava/time/temporal/ChronoField;
    :cond_c
    const/4 v13, 0x0

    move-object v8, v13

    .restart local v8    # "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    goto :goto_4

    .line 159
    .end local v8    # "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    :cond_d
    const/4 v13, 0x0

    move-object v8, v13

    .restart local v8    # "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    goto :goto_4
.end method


# virtual methods
.method endOptional()V
    .locals 5

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljava/time/format/DateTimePrintContext;->optional:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Ljava/time/format/DateTimePrintContext;->optional:I

    .line 248
    return-void
.end method

.method getLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimePrintContext;
    return-object v0
.end method

.method getSymbols()Ljava/time/format/DecimalStyle;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimePrintContext;->symbols:Ljava/time/format/DecimalStyle;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimePrintContext;
    return-object v0
.end method

.method getTemporal()Ljava/time/temporal/TemporalAccessor;
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimePrintContext;
    return-object v0
.end method

.method getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;
    .locals 6

    .prologue
    .line 276
    move-object v1, p0

    .local v1, "this":Ljava/time/format/DateTimePrintContext;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v4, v1

    :try_start_0
    iget-object v4, v4, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v1, v4

    .line 279
    .end local v1    # "this":Ljava/time/format/DateTimePrintContext;
    :goto_0
    return-object v1

    .line 277
    .restart local v1    # "this":Ljava/time/format/DateTimePrintContext;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 278
    .local v3, "ex":Ljava/time/DateTimeException;
    move-object v4, v1

    iget v4, v4, Ljava/time/format/DateTimePrintContext;->optional:I

    if-lez v4, :cond_0

    .line 279
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_0

    .line 281
    :cond_0
    move-object v4, v3

    throw v4
.end method

.method getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 259
    .local v2, "result":Ljava/lang/Object;, "TR;"
    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    iget v3, v3, Ljava/time/format/DateTimePrintContext;->optional:I

    if-nez v3, :cond_0

    .line 260
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to extract value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimePrintContext;
    return-object v0
.end method

.method setDateTime(Ljava/time/temporal/TemporalAccessor;)V
    .locals 4

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    const-string v3, "temporal"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 305
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    .line 306
    return-void
.end method

.method setLocale(Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v1

    const-string v3, "locale"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 318
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/format/DateTimePrintContext;->locale:Ljava/util/Locale;

    .line 319
    return-void
.end method

.method startOptional()V
    .locals 5

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljava/time/format/DateTimePrintContext;->optional:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/time/format/DateTimePrintContext;->optional:I

    .line 241
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimePrintContext;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimePrintContext;
    return-object v0
.end method
