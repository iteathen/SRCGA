.class final enum Ljava/time/temporal/IsoFields$Field$2;
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
    .line 298
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$2;
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
    .line 334
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$2;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    move-wide/from16 v2, p2

    .local v2, "newValue":J
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/time/temporal/IsoFields$Field$2;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v6

    move-wide v4, v6

    .line 335
    .local v4, "curValue":J
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/temporal/IsoFields$Field$2;->range()Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-wide v7, v2

    move-object v9, v0

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v6

    .line 336
    move-object v6, v1

    sget-object v7, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v8, v1

    sget-object v9, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v8, v9}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    move-wide v10, v2

    move-wide v12, v4

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$2;
    return-object v0
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$2;
    sget-object v1, Ljava/time/temporal/IsoFields;->QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$2;
    return-object v0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .locals 9

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$2;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v4, v1

    move-object v5, v0

    invoke-interface {v4, v5}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 326
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Unsupported field: QuarterOfYear"

    invoke-direct {v5, v6}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    :cond_0
    move-object v4, v1

    sget-object v5, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-wide v2, v4

    .line 329
    .local v2, "moy":J
    move-wide v4, v2

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3

    div-long/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$2;
    return-wide v0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$2;
    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$2;
    return-object v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$2;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

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

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$2;
    return v0

    .restart local v0    # "this":Ljava/time/temporal/IsoFields$Field$2;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .locals 6

    .prologue
    .line 313
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/IsoFields$Field$2;
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x4

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljava/time/temporal/IsoFields$Field$2;
    return-object v1
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 3

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$2;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/temporal/IsoFields$Field$2;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$2;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/IsoFields$Field$2;
    const-string v1, "QuarterOfYear"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/temporal/IsoFields$Field$2;
    return-object v0
.end method
