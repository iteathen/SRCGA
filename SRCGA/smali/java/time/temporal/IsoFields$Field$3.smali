.class final enum Ljava/time/temporal/IsoFields$Field$3;
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
    .line 339
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$3;
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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 383
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/IsoFields$Field$3;
    move-object v2, p1

    .local v2, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    move-wide v3, p2

    .local v3, "newValue":J
    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/temporal/IsoFields$Field$3;->range()Ljava/time/temporal/ValueRange;

    move-result-object v5

    move-wide v6, v3

    move-object v8, v1

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v5

    .line 384
    move-object v5, v2

    move-wide v6, v3

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/time/temporal/IsoFields$Field$3;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v6

    sget-object v8, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/temporal/IsoFields$Field$3;
    return-object v1
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$3;
    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$3;
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$3;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v1

    const-string v3, "locale"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 355
    const-string v2, "Week"

    move-object v0, v2

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$3;
    return-object v0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .locals 6

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$3;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 378
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    invoke-static {v2}, Ljava/time/temporal/IsoFields$Field;->access$400(Ljava/time/LocalDate;)I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$3;
    return-wide v0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$3;
    sget-object v1, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$3;
    return-object v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 4

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$3;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

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

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$3;
    return v0

    .restart local v0    # "this":Ljava/time/temporal/IsoFields$Field$3;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .locals 8

    .prologue
    .line 360
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/IsoFields$Field$3;
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x34

    const-wide/16 v6, 0x35

    invoke-static/range {v2 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljava/time/temporal/IsoFields$Field$3;
    return-object v1
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 6

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$3;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 371
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    invoke-static {v2}, Ljava/time/temporal/IsoFields$Field;->access$300(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$3;
    return-object v0
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .locals 21
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
    .line 389
    move-object/from16 v2, p0

    .local v2, "this":Ljava/time/temporal/IsoFields$Field$3;
    move-object/from16 v3, p1

    .local v3, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v4, p2

    .local v4, "partialTemporal":Ljava/time/temporal/TemporalAccessor;
    move-object/from16 v5, p3

    .local v5, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    move-object/from16 v6, v16

    .line 390
    .local v6, "wbyLong":Ljava/lang/Long;
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    move-object/from16 v7, v16

    .line 391
    .local v7, "dowLong":Ljava/lang/Long;
    move-object/from16 v16, v6

    if-eqz v16, :cond_0

    move-object/from16 v16, v7

    if-nez v16, :cond_1

    .line 392
    :cond_0
    const/16 v16, 0x0

    move-object/from16 v2, v16

    .line 422
    .end local v2    # "this":Ljava/time/temporal/IsoFields$Field$3;
    :goto_0
    return-object v2

    .line 394
    .restart local v2    # "this":Ljava/time/temporal/IsoFields$Field$3;
    :cond_1
    sget-object v16, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual/range {v16 .. v16}, Ljava/time/temporal/IsoFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v16

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sget-object v19, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual/range {v16 .. v19}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v16

    move/from16 v8, v16

    .line 395
    .local v8, "wby":I
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/IsoFields$Field$3;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v9, v16

    .line 397
    .local v9, "wowby":J
    move-object/from16 v16, v5

    sget-object v17, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 398
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 399
    .local v12, "dow":J
    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    .line 400
    .local v14, "weeks":J
    move-wide/from16 v16, v12

    const-wide/16 v18, 0x7

    cmp-long v16, v16, v18

    if-lez v16, :cond_3

    .line 401
    move-wide/from16 v16, v12

    const-wide/16 v18, 0x1

    sub-long v16, v16, v18

    const-wide/16 v18, 0x7

    div-long v16, v16, v18

    move-wide/from16 v14, v16

    .line 402
    move-wide/from16 v16, v12

    const-wide/16 v18, 0x1

    sub-long v16, v16, v18

    const-wide/16 v18, 0x7

    rem-long v16, v16, v18

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v12, v16

    .line 407
    :cond_2
    :goto_1
    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v16

    move-wide/from16 v17, v9

    const-wide/16 v19, 0x1

    sub-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v16

    move-wide/from16 v17, v14

    invoke-virtual/range {v16 .. v18}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v16

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-wide/from16 v18, v12

    invoke-virtual/range {v16 .. v19}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v16

    move-object/from16 v11, v16

    .line 419
    .end local v12    # "dow":J
    .end local v14    # "weeks":J
    .local v11, "date":Ljava/time/LocalDate;
    :goto_2
    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 420
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 421
    move-object/from16 v16, v3

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 422
    move-object/from16 v16, v11

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 403
    .end local v11    # "date":Ljava/time/LocalDate;
    .restart local v12    # "dow":J
    .restart local v14    # "weeks":J
    :cond_3
    move-wide/from16 v16, v12

    const-wide/16 v18, 0x1

    cmp-long v16, v16, v18

    if-gez v16, :cond_2

    .line 404
    move-wide/from16 v16, v12

    const-wide/16 v18, 0x7

    div-long v16, v16, v18

    const-wide/16 v18, 0x1

    sub-long v16, v16, v18

    move-wide/from16 v14, v16

    .line 405
    move-wide/from16 v16, v12

    const-wide/16 v18, 0x7

    rem-long v16, v16, v18

    const-wide/16 v18, 0x7

    add-long v16, v16, v18

    move-wide/from16 v12, v16

    goto :goto_1

    .line 409
    .end local v12    # "dow":J
    .end local v14    # "weeks":J
    :cond_4
    sget-object v16, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v16

    move/from16 v12, v16

    .line 410
    .local v12, "dow":I
    move-object/from16 v16, v5

    sget-object v17, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 411
    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v16

    move-object/from16 v13, v16

    .line 412
    .local v13, "temp":Ljava/time/LocalDate;
    move-object/from16 v16, v13

    invoke-static/range {v16 .. v16}, Ljava/time/temporal/IsoFields$Field;->access$300(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v16

    move-object/from16 v14, v16

    .line 413
    .local v14, "range":Ljava/time/temporal/ValueRange;
    move-object/from16 v16, v14

    move-wide/from16 v17, v9

    move-object/from16 v19, v2

    invoke-virtual/range {v16 .. v19}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v16

    .line 414
    .line 417
    .end local v13    # "temp":Ljava/time/LocalDate;
    .end local v14    # "range":Ljava/time/temporal/ValueRange;
    :goto_3
    move/from16 v16, v8

    const/16 v17, 0x1

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v16

    move-wide/from16 v17, v9

    const-wide/16 v19, 0x1

    sub-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v16

    sget-object v17, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move/from16 v18, v12

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v16 .. v19}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v16

    move-object/from16 v11, v16

    .restart local v11    # "date":Ljava/time/LocalDate;
    goto/16 :goto_2

    .line 415
    .end local v11    # "date":Ljava/time/LocalDate;
    :cond_5
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljava/time/temporal/IsoFields$Field$3;->range()Ljava/time/temporal/ValueRange;

    move-result-object v16

    move-wide/from16 v17, v9

    move-object/from16 v19, v2

    invoke-virtual/range {v16 .. v19}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v16

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$3;
    const-string v1, "WeekOfWeekBasedYear"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$3;
    return-object v0
.end method
