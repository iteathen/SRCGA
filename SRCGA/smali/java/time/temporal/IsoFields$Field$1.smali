.class final enum Ljava/time/temporal/IsoFields$Field$1;
.super Ljava/time/temporal/IsoFields$Field;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$1;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILjava/time/temporal/IsoFields$1;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$1;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    move-wide/from16 v2, p2

    .local v2, "newValue":J
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/time/temporal/IsoFields$Field$1;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v6

    move-wide v4, v6

    .line 258
    .local v4, "curValue":J
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-wide v7, v2

    move-object v9, v0

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v6

    .line 259
    move-object v6, v1

    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v8, v1

    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v9}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    move-wide v10, v2

    move-wide v12, v4

    sub-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$1;
    return-object v0
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$1;
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$1;
    return-object v0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .locals 13

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$1;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v6, v1

    move-object v7, v0

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 247
    new-instance v6, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "Unsupported field: DayOfQuarter"

    invoke-direct {v7, v8}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 249
    :cond_0
    move-object v6, v1

    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v6

    move v2, v6

    .line 250
    .local v2, "doy":I
    move-object v6, v1

    sget-object v7, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v6

    move v3, v6

    .line 251
    .local v3, "moy":I
    move-object v6, v1

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    move-wide v4, v6

    .line 252
    .local v4, "year":J
    move v6, v2

    # getter for: Ljava/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I
    invoke-static {}, Ljava/time/temporal/IsoFields$Field;->access$200()[I

    move-result-object v7

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x3

    div-int/lit8 v8, v8, 0x3

    sget-object v9, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    :goto_0
    add-int/2addr v8, v9

    aget v7, v7, v8

    sub-int/2addr v6, v7

    int-to-long v6, v6

    move-wide v0, v6

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$1;
    return-wide v0

    .restart local v0    # "this":Ljava/time/temporal/IsoFields$Field$1;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$1;
    sget-object v1, Ljava/time/temporal/IsoFields;->QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$1;
    return-object v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 4

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$1;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 226
    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-static {v2}, Ljava/time/temporal/IsoFields$Field;->access$100(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$1;
    return v0

    .restart local v0    # "this":Ljava/time/temporal/IsoFields$Field$1;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .locals 8

    .prologue
    .line 221
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/IsoFields$Field$1;
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x5a

    const-wide/16 v6, 0x5c

    invoke-static/range {v2 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljava/time/temporal/IsoFields$Field$1;
    return-object v1
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 11

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$1;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v6, v1

    move-object v7, v0

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 231
    new-instance v6, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Unsupported field: DayOfQuarter"

    invoke-direct {v7, v8}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 233
    :cond_0
    move-object v6, v1

    sget-object v7, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    move-wide v2, v6

    .line 234
    .local v2, "qoy":J
    move-wide v6, v2

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 235
    move-object v6, v1

    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    move-wide v4, v6

    .line 236
    .local v4, "year":J
    sget-object v6, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x5b

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    :goto_0
    move-object v0, v6

    .line 242
    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$1;
    .end local v4    # "year":J
    :goto_1
    return-object v0

    .line 236
    .restart local v0    # "this":Ljava/time/temporal/IsoFields$Field$1;
    .restart local v4    # "year":J
    :cond_1
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x5a

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    goto :goto_0

    .line 237
    .end local v4    # "year":J
    :cond_2
    move-wide v6, v2

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 238
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x5b

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    .line 239
    :cond_3
    move-wide v6, v2

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    move-wide v6, v2

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 240
    :cond_4
    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x5c

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    .line 242
    :cond_5
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-object v0, v6

    goto :goto_1
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .prologue
    .line 264
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/temporal/IsoFields$Field$1;
    move-object/from16 v2, p1

    .local v2, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v3, p2

    .local v3, "partialTemporal":Ljava/time/temporal/TemporalAccessor;
    move-object/from16 v4, p3

    .local v4, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v13, v2

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    move-object v5, v13

    .line 265
    .local v5, "yearLong":Ljava/lang/Long;
    move-object v13, v2

    sget-object v14, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    move-object v6, v13

    .line 266
    .local v6, "qoyLong":Ljava/lang/Long;
    move-object v13, v5

    if-eqz v13, :cond_0

    move-object v13, v6

    if-nez v13, :cond_1

    .line 267
    :cond_0
    const/4 v13, 0x0

    move-object v1, v13

    .line 295
    .end local v1    # "this":Ljava/time/temporal/IsoFields$Field$1;
    :goto_0
    return-object v1

    .line 269
    .restart local v1    # "this":Ljava/time/temporal/IsoFields$Field$1;
    :cond_1
    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v14, v5

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v13

    move v7, v13

    .line 270
    .local v7, "y":I
    move-object v13, v2

    sget-object v14, Ljava/time/temporal/IsoFields$Field$1;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-wide v8, v13

    .line 272
    .local v8, "doq":J
    move-object v13, v4

    sget-object v14, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v13, v14, :cond_2

    .line 273
    move-object v13, v6

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-wide v11, v13

    .line 274
    .local v11, "qoy":J
    move v13, v7

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v13

    move-object v10, v13

    .line 275
    .local v10, "date":Ljava/time/LocalDate;
    move-object v13, v10

    move-wide v14, v11

    const-wide/16 v16, 0x1

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v14

    const/16 v16, 0x3

    invoke-static/range {v14 .. v16}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v13

    move-object v10, v13

    .line 276
    move-object v13, v10

    move-wide v14, v8

    const-wide/16 v16, 0x1

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v13

    move-object v10, v13

    .line 292
    .end local v11    # "qoy":J
    :goto_1
    move-object v13, v2

    move-object v14, v1

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 293
    move-object v13, v2

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 294
    move-object v13, v2

    sget-object v14, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 295
    move-object v13, v10

    move-object v1, v13

    goto :goto_0

    .line 278
    .end local v10    # "date":Ljava/time/LocalDate;
    :cond_2
    sget-object v13, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v13}, Ljava/time/temporal/IsoFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v13

    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v16, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual/range {v13 .. v16}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v13

    move v11, v13

    .line 279
    .local v11, "qoy":I
    move-object v13, v4

    sget-object v14, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne v13, v14, :cond_6

    .line 280
    const/16 v13, 0x5c

    move v12, v13

    .line 281
    .local v12, "max":I
    move v13, v11

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 282
    sget-object v13, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move v14, v7

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v13

    if-eqz v13, :cond_4

    const/16 v13, 0x5b

    :goto_2
    move v12, v13

    .line 286
    :cond_3
    :goto_3
    const-wide/16 v13, 0x1

    move v15, v12

    int-to-long v15, v15

    invoke-static/range {v13 .. v16}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v13

    move-wide v14, v8

    move-object/from16 v16, v1

    invoke-virtual/range {v13 .. v16}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v13

    .line 287
    .line 290
    .end local v12    # "max":I
    :goto_4
    move v13, v7

    move v14, v11

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x3

    mul-int/lit8 v14, v14, 0x3

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v13

    move-wide v14, v8

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v13

    move-object v10, v13

    .restart local v10    # "date":Ljava/time/LocalDate;
    goto :goto_1

    .line 282
    .end local v10    # "date":Ljava/time/LocalDate;
    .restart local v12    # "max":I
    :cond_4
    const/16 v13, 0x5a

    goto :goto_2

    .line 283
    :cond_5
    move v13, v11

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 284
    const/16 v13, 0x5b

    move v12, v13

    goto :goto_3

    .line 288
    .end local v12    # "max":I
    :cond_6
    move-object v13, v1

    invoke-virtual {v13}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v13

    move-wide v14, v8

    move-object/from16 v16, v1

    invoke-virtual/range {v13 .. v16}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v13

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$1;
    const-string v1, "DayOfQuarter"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$1;
    return-object v0
.end method
