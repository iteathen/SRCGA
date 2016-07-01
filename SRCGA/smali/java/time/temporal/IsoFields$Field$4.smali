.class final enum Ljava/time/temporal/IsoFields$Field$4;
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
    .line 425
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$4;
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
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 460
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/temporal/IsoFields$Field$4;
    move-object/from16 v2, p1

    .local v2, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    move-wide/from16 v3, p2

    .local v3, "newValue":J
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/time/temporal/IsoFields$Field$4;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 461
    new-instance v11, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, "Unsupported field: WeekBasedYear"

    invoke-direct {v12, v13}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 463
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Ljava/time/temporal/IsoFields$Field$4;->range()Ljava/time/temporal/ValueRange;

    move-result-object v11

    move-wide v12, v3

    sget-object v14, Ljava/time/temporal/IsoFields$Field$4;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v11, v12, v13, v14}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v11

    move v5, v11

    .line 464
    .local v5, "newWby":I
    move-object v11, v2

    invoke-static {v11}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v11

    move-object v6, v11

    .line 465
    .local v6, "date":Ljava/time/LocalDate;
    move-object v11, v6

    sget-object v12, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v11, v12}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v11

    move v7, v11

    .line 466
    .local v7, "dow":I
    move-object v11, v6

    invoke-static {v11}, Ljava/time/temporal/IsoFields$Field;->access$400(Ljava/time/LocalDate;)I

    move-result v11

    move v8, v11

    .line 467
    .local v8, "week":I
    move v11, v8

    const/16 v12, 0x35

    if-ne v11, v12, :cond_1

    move v11, v5

    invoke-static {v11}, Ljava/time/temporal/IsoFields$Field;->access$600(I)I

    move-result v11

    const/16 v12, 0x34

    if-ne v11, v12, :cond_1

    .line 468
    const/16 v11, 0x34

    move v8, v11

    .line 470
    :cond_1
    move v11, v5

    const/4 v12, 0x1

    const/4 v13, 0x4

    invoke-static {v11, v12, v13}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v11

    move-object v9, v11

    .line 471
    .local v9, "resolved":Ljava/time/LocalDate;
    move v11, v7

    move-object v12, v9

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v13}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    sub-int/2addr v11, v12

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x7

    mul-int/lit8 v12, v12, 0x7

    add-int/2addr v11, v12

    move v10, v11

    .line 472
    .local v10, "days":I
    move-object v11, v9

    move v12, v10

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v11

    move-object v9, v11

    .line 473
    move-object v11, v2

    move-object v12, v9

    invoke-interface {v11, v12}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v11

    move-object v1, v11

    .end local v1    # "this":Ljava/time/temporal/IsoFields$Field$4;
    return-object v1
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$4;
    sget-object v1, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$4;
    return-object v0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .locals 6

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$4;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Unsupported field: WeekBasedYear"

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 455
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    invoke-static {v2}, Ljava/time/temporal/IsoFields$Field;->access$500(Ljava/time/LocalDate;)I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$4;
    return-wide v0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$4;
    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$4;
    return-object v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 4

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$4;
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

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$4;
    return v0

    .restart local v0    # "this":Ljava/time/temporal/IsoFields$Field$4;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$4;
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$4;
    return-object v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 3

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$4;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$4;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$4;
    const-string v1, "WeekBasedYear"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$4;
    return-object v0
.end method
