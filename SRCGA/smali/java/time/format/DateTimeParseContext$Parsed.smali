.class final Ljava/time/format/DateTimeParseContext$Parsed;
.super Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;
.source "DateTimeParseContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeParseContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Parsed"
.end annotation


# instance fields
.field callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field chrono:Ljava/time/chrono/AbstractChronology;

.field excessDays:Ljava/time/Period;

.field final fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field leapSecond:Z

.field final synthetic this$0:Ljava/time/format/DateTimeParseContext;

.field zone:Ljava/time/ZoneId;


# direct methods
.method private constructor <init>(Ljava/time/format/DateTimeParseContext;)V
    .locals 6

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext$Parsed;
    move-object v1, p1

    .local v1, "this$0":Ljava/time/format/DateTimeParseContext;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext$Parsed;->this$0:Ljava/time/format/DateTimeParseContext;

    move-object v2, v0

    invoke-direct {v2}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 427
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext$Parsed;->chrono:Ljava/time/chrono/AbstractChronology;

    .line 428
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext$Parsed;->zone:Ljava/time/ZoneId;

    .line 429
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    .line 431
    move-object v2, v0

    sget-object v3, Ljava/time/Period;->ZERO:Ljava/time/Period;

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext$Parsed;->excessDays:Ljava/time/Period;

    .line 435
    return-void
.end method

.method synthetic constructor <init>(Ljava/time/format/DateTimeParseContext;Ljava/time/format/DateTimeParseContext$1;)V
    .locals 5

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext$Parsed;
    move-object v1, p1

    .local v1, "x0":Ljava/time/format/DateTimeParseContext;
    move-object v2, p2

    .local v2, "x1":Ljava/time/format/DateTimeParseContext$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeParseContext$Parsed;-><init>(Ljava/time/format/DateTimeParseContext;)V

    return-void
.end method


# virtual methods
.method protected copy()Ljava/time/format/DateTimeParseContext$Parsed;
    .locals 6

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext$Parsed;
    new-instance v2, Ljava/time/format/DateTimeParseContext$Parsed;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeParseContext$Parsed;->this$0:Ljava/time/format/DateTimeParseContext;

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeParseContext$Parsed;-><init>(Ljava/time/format/DateTimeParseContext;)V

    move-object v1, v2

    .line 438
    .local v1, "cloned":Ljava/time/format/DateTimeParseContext$Parsed;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext$Parsed;->chrono:Ljava/time/chrono/AbstractChronology;

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext$Parsed;->chrono:Ljava/time/chrono/AbstractChronology;

    .line 439
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext$Parsed;->zone:Ljava/time/ZoneId;

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext$Parsed;->zone:Ljava/time/ZoneId;

    .line 440
    move-object v2, v1

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 441
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Ljava/time/format/DateTimeParseContext$Parsed;->leapSecond:Z

    iput-boolean v3, v2, Ljava/time/format/DateTimeParseContext$Parsed;->leapSecond:Z

    .line 442
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext$Parsed;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 9

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext$Parsed;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 455
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 457
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v2, v4

    .line 458
    .local v2, "value":J
    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext$Parsed;
    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext$Parsed;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 463
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext$Parsed;
    return-wide v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext$Parsed;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext$Parsed;
    return v0
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 4
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
    .line 470
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext$Parsed;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 471
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->chrono:Ljava/time/chrono/AbstractChronology;

    move-object v0, v2

    .line 476
    .end local v0    # "this":Ljava/time/format/DateTimeParseContext$Parsed;
    :goto_0
    return-object v0

    .line 473
    .restart local v0    # "this":Ljava/time/format/DateTimeParseContext$Parsed;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 474
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->zone:Ljava/time/ZoneId;

    move-object v0, v2

    goto :goto_0

    .line 476
    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method toBuilder()Ljava/time/format/DateTimeBuilder;
    .locals 5

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext$Parsed;
    new-instance v2, Ljava/time/format/DateTimeBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/time/format/DateTimeBuilder;-><init>()V

    move-object v1, v2

    .line 493
    .local v1, "builder":Ljava/time/format/DateTimeBuilder;
    move-object v2, v1

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 494
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext$Parsed;->this$0:Ljava/time/format/DateTimeParseContext;

    invoke-virtual {v3}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    iput-object v3, v2, Ljava/time/format/DateTimeBuilder;->chrono:Ljava/time/chrono/Chronology;

    .line 495
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v2, :cond_0

    .line 496
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext$Parsed;->zone:Ljava/time/ZoneId;

    iput-object v3, v2, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    .line 500
    :goto_0
    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Ljava/time/format/DateTimeParseContext$Parsed;->leapSecond:Z

    iput-boolean v3, v2, Ljava/time/format/DateTimeBuilder;->leapSecond:Z

    .line 501
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext$Parsed;->excessDays:Ljava/time/Period;

    iput-object v3, v2, Ljava/time/format/DateTimeBuilder;->excessDays:Ljava/time/Period;

    .line 502
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext$Parsed;
    return-object v0

    .line 498
    .restart local v0    # "this":Ljava/time/format/DateTimeParseContext$Parsed;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext$Parsed;->this$0:Ljava/time/format/DateTimeParseContext;

    invoke-static {v3}, Ljava/time/format/DateTimeParseContext;->access$100(Ljava/time/format/DateTimeParseContext;)Ljava/time/ZoneId;

    move-result-object v3

    iput-object v3, v2, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext$Parsed;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->chrono:Ljava/time/chrono/AbstractChronology;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext$Parsed;
    return-object v0
.end method
