.class final Ljava/time/format/DateTimeBuilder;
.super Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;
.source "DateTimeBuilder.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/lang/Cloneable;


# instance fields
.field chrono:Ljava/time/chrono/Chronology;

.field date:Ljava/time/chrono/AbstractChronoLocalDate;

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

.field time:Ljava/time/LocalTime;

.field zone:Ljava/time/ZoneId;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 103
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/time/temporal/TemporalField;J)V
    .locals 10

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "value":J
    move-object v4, v0

    invoke-direct {v4}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 103
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    .line 145
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v4

    .line 146
    return-void
.end method

.method private checkDate(Ljava/time/LocalDate;)V
    .locals 14

    .prologue
    .line 308
    move-object v1, p0

    .local v1, "this":Ljava/time/format/DateTimeBuilder;
    move-object v2, p1

    .local v2, "date":Ljava/time/LocalDate;
    move-object v8, v2

    if-eqz v8, :cond_1

    .line 309
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeBuilder;->addObject(Ljava/time/chrono/AbstractChronoLocalDate;)V

    .line 310
    move-object v8, v1

    iget-object v8, v8, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/temporal/TemporalField;

    move-object v4, v8

    .line 311
    .local v4, "field":Ljava/time/temporal/TemporalField;
    move-object v8, v4

    instance-of v8, v8, Ljava/time/temporal/ChronoField;

    if-eqz v8, :cond_0

    .line 312
    move-object v8, v4

    invoke-interface {v8}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 315
    move-object v8, v2

    move-object v9, v4

    :try_start_0
    invoke-virtual {v8, v9}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    move-wide v5, v8

    .line 318
    .line 319
    .local v5, "val1":J
    move-object v8, v1

    iget-object v8, v8, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object v9, v4

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    move-object v7, v8

    .line 320
    .local v7, "val2":Ljava/lang/Long;
    move-wide v8, v5

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 321
    new-instance v8, Ljava/time/DateTimeException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conflict found: Field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide v11, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " differs from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " derived from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 316
    .end local v5    # "val1":J
    .end local v7    # "val2":Ljava/lang/Long;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 317
    .local v7, "ex":Ljava/time/DateTimeException;
    goto/16 :goto_0

    .line 325
    .end local v7    # "ex":Ljava/time/DateTimeException;
    :cond_0
    goto/16 :goto_0

    .line 327
    .end local v4    # "field":Ljava/time/temporal/TemporalField;
    :cond_1
    return-void
.end method

.method private crossCheck()V
    .locals 4

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 567
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_1

    .line 568
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeBuilder;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v1, :cond_2

    .line 570
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeBuilder;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    goto :goto_0

    .line 571
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_0

    .line 572
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    invoke-direct {v1, v2}, Ljava/time/format/DateTimeBuilder;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    goto :goto_0
.end method

.method private crossCheck(Ljava/time/temporal/TemporalAccessor;)V
    .locals 17

    .prologue
    .line 578
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/format/DateTimeBuilder;
    move-object/from16 v2, p1

    .local v2, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v11, v1

    iget-object v11, v11, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v3, v11

    .line 579
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;>;"
    :goto_0
    move-object v11, v3

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 580
    move-object v11, v3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    move-object v4, v11

    .line 581
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/time/temporal/TemporalField;

    move-object v5, v11

    .line 582
    .local v5, "field":Ljava/time/temporal/TemporalField;
    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-wide v6, v11

    .line 583
    .local v6, "value":J
    move-object v11, v2

    move-object v12, v5

    invoke-interface {v11, v12}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 586
    move-object v11, v2

    move-object v12, v5

    :try_start_0
    invoke-interface {v11, v12}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v11

    move-wide v8, v11

    .line 589
    .line 590
    .local v8, "temporalValue":J
    move-wide v11, v8

    move-wide v13, v6

    cmp-long v11, v11, v13

    if-eqz v11, :cond_0

    .line 591
    new-instance v11, Ljava/time/DateTimeException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cross check failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide v14, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " vs "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide v14, v6

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 587
    .end local v8    # "temporalValue":J
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 588
    .local v10, "ex":Ljava/lang/RuntimeException;
    goto/16 :goto_0

    .line 594
    .end local v10    # "ex":Ljava/lang/RuntimeException;
    .restart local v8    # "temporalValue":J
    :cond_0
    move-object v11, v3

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 596
    .end local v8    # "temporalValue":J
    :cond_1
    goto/16 :goto_0

    .line 597
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v5    # "field":Ljava/time/temporal/TemporalField;
    .end local v6    # "value":J
    :cond_2
    return-void
.end method

.method private getFieldValue0(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeBuilder;
    return-object v0
.end method

.method private mergeDate(Ljava/time/format/ResolverStyle;)V
    .locals 7

    .prologue
    .line 297
    move-object v1, p0

    .local v1, "this":Ljava/time/format/DateTimeBuilder;
    move-object v2, p1

    .local v2, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v3, v1

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->chrono:Ljava/time/chrono/Chronology;

    instance-of v3, v3, Ljava/time/chrono/IsoChronology;

    if-eqz v3, :cond_1

    .line 298
    move-object v3, v1

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v5, v1

    iget-object v5, v5, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/chrono/IsoChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeBuilder;->checkDate(Ljava/time/LocalDate;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeBuilder;->checkDate(Ljava/time/LocalDate;)V

    .line 302
    goto :goto_0
.end method

.method private mergeInstantFields()V
    .locals 5

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    if-eqz v3, :cond_1

    .line 542
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeBuilder;->mergeInstantFields0(Ljava/time/ZoneId;)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object v1, v3

    .line 545
    .local v1, "offsetSecs":Ljava/lang/Long;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 546
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v3

    move-object v2, v3

    .line 547
    .local v2, "offset":Ljava/time/ZoneOffset;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeBuilder;->mergeInstantFields0(Ljava/time/ZoneId;)V

    goto :goto_0
.end method

.method private mergeInstantFields0(Ljava/time/ZoneId;)V
    .locals 8

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "selectedZone":Ljava/time/ZoneId;
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v4

    move-object v2, v4

    .line 555
    .local v2, "instant":Ljava/time/Instant;
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->chrono:Ljava/time/chrono/Chronology;

    check-cast v4, Ljava/time/chrono/AbstractChronology;

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v4

    move-object v3, v4

    .line 556
    .local v3, "zdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    if-nez v4, :cond_0

    .line 557
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeBuilder;->addObject(Ljava/time/chrono/AbstractChronoLocalDate;)V

    .line 561
    :goto_0
    move-object v4, v0

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v4

    .line 562
    return-void

    .line 559
    :cond_0
    move-object v4, v0

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-object v6, v3

    invoke-virtual {v6}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/time/format/DateTimeBuilder;->resolveMakeChanges(Ljava/time/temporal/TemporalField;Ljava/time/chrono/AbstractChronoLocalDate;)V

    goto :goto_0
.end method

.method private mergeTime(Ljava/time/format/ResolverStyle;)V
    .locals 14

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 331
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 332
    .local v2, "ch":J
    move-object v6, v1

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v6, v7, :cond_0

    .line 333
    move-object v6, v1

    sget-object v7, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v6, v7, :cond_17

    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_17

    .line 339
    :cond_0
    :goto_0
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0x18

    cmp-long v8, v8, v10

    if-nez v8, :cond_18

    const-wide/16 v8, 0x0

    :goto_1
    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 341
    .end local v2    # "ch":J
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 342
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 343
    .restart local v2    # "ch":J
    move-object v6, v1

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v6, v7, :cond_2

    .line 344
    move-object v6, v1

    sget-object v7, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v6, v7, :cond_19

    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_19

    .line 350
    :cond_2
    :goto_2
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0xc

    cmp-long v8, v8, v10

    if-nez v8, :cond_1a

    const-wide/16 v8, 0x0

    :goto_3
    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 352
    .end local v2    # "ch":J
    :cond_3
    move-object v6, v1

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v6, v7, :cond_5

    .line 353
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 354
    sget-object v6, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v8, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 356
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 357
    sget-object v6, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v8, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 360
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 361
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 362
    .local v2, "ap":J
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v4, v6

    .line 363
    .local v4, "hap":J
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0xc

    mul-long/2addr v8, v10

    move-wide v10, v4

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 375
    .end local v2    # "ap":J
    .end local v4    # "hap":J
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 376
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 377
    .local v2, "nod":J
    move-object v6, v1

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v6, v7, :cond_7

    .line 378
    sget-object v6, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 380
    :cond_7
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/32 v10, 0x3b9aca00

    div-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 381
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/32 v10, 0x3b9aca00

    rem-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 383
    .end local v2    # "nod":J
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 384
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 385
    .local v2, "cod":J
    move-object v6, v1

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v6, v7, :cond_9

    .line 386
    sget-object v6, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 388
    :cond_9
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 389
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/32 v10, 0xf4240

    rem-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 391
    .end local v2    # "cod":J
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 392
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 393
    .local v2, "lod":J
    move-object v6, v1

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v6, v7, :cond_b

    .line 394
    sget-object v6, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 396
    :cond_b
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 397
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0x3e8

    rem-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 399
    .end local v2    # "lod":J
    :cond_c
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 400
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 401
    .local v2, "sod":J
    move-object v6, v1

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v6, v7, :cond_d

    .line 402
    sget-object v6, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 404
    :cond_d
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 405
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 406
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 408
    .end local v2    # "sod":J
    :cond_e
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 409
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 410
    .local v2, "mod":J
    move-object v6, v1

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v6, v7, :cond_f

    .line 411
    sget-object v6, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 413
    :cond_f
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 414
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 422
    .end local v2    # "mod":J
    :cond_10
    move-object v6, v1

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v6, v7, :cond_12

    .line 423
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 424
    sget-object v6, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v8, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 426
    :cond_11
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 427
    sget-object v6, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object v7, v0

    iget-object v7, v7, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v8, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 430
    :cond_12
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 431
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 432
    .local v2, "los":J
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v4, v6

    .line 433
    .local v4, "cos":J
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    move-wide v10, v4

    const-wide/16 v12, 0x3e8

    rem-long/2addr v10, v12

    add-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 435
    .end local v2    # "los":J
    .end local v4    # "cos":J
    :cond_13
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 436
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 437
    .local v2, "nos":J
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 438
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 440
    .end local v2    # "nos":J
    :cond_14
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 441
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 442
    .restart local v2    # "nos":J
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 443
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 445
    .end local v2    # "nos":J
    :cond_15
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 446
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 447
    .local v2, "cos":J
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    .line 448
    .line 452
    .end local v2    # "cos":J
    :cond_16
    :goto_4
    return-void

    .line 336
    .local v2, "ch":J
    :cond_17
    sget-object v6, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    goto/16 :goto_0

    .line 339
    :cond_18
    move-wide v8, v2

    goto/16 :goto_1

    .line 347
    :cond_19
    sget-object v6, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    goto/16 :goto_2

    .line 350
    :cond_1a
    move-wide v8, v2

    goto/16 :goto_3

    .line 448
    .end local v2    # "ch":J
    :cond_1b
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 449
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, v6

    .line 450
    .local v2, "los":J
    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    const-wide/32 v10, 0xf4240

    mul-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/format/DateTimeBuilder;->addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v6

    goto :goto_4
.end method

.method private putFieldValue0(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;
    .locals 8

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "value":J
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object v5, v1

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 178
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeBuilder;
    return-object v0
.end method

.method private resolveFields(Ljava/time/format/ResolverStyle;)Z
    .locals 13

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "resolverStyle":Ljava/time/format/ResolverStyle;
    const/4 v8, 0x0

    move v2, v8

    .line 228
    .local v2, "changes":I
    :goto_0
    move v8, v2

    const/16 v9, 0x64

    if-ge v8, v9, :cond_8

    .line 229
    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_1
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v4, v8

    .line 230
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/temporal/TemporalField;

    move-object v5, v8

    .line 231
    .local v5, "targetField":Ljava/time/temporal/TemporalField;
    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object v10, v0

    move-object v11, v1

    invoke-interface {v8, v9, v10, v11}, Ljava/time/temporal/TemporalField;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v8

    move-object v6, v8

    .line 232
    .local v6, "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    move-object v8, v6

    if-eqz v8, :cond_6

    .line 233
    move-object v8, v6

    instance-of v8, v8, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v8, :cond_1

    .line 234
    move-object v8, v6

    check-cast v8, Ljava/time/chrono/ChronoZonedDateTime;

    move-object v7, v8

    .line 235
    .local v7, "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    if-nez v8, :cond_2

    .line 236
    move-object v8, v0

    move-object v9, v7

    invoke-virtual {v9}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v9

    iput-object v9, v8, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    .line 240
    :cond_0
    move-object v8, v7

    invoke-virtual {v8}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v8

    move-object v6, v8

    .line 242
    .end local v7    # "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    :cond_1
    move-object v8, v6

    instance-of v8, v8, Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v8, :cond_3

    .line 243
    move-object v8, v0

    move-object v9, v5

    move-object v10, v6

    check-cast v10, Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-direct {v8, v9, v10}, Ljava/time/format/DateTimeBuilder;->resolveMakeChanges(Ljava/time/temporal/TemporalField;Ljava/time/chrono/AbstractChronoLocalDate;)V

    .line 244
    add-int/lit8 v2, v2, 0x1

    .line 245
    goto :goto_0

    .line 237
    .restart local v7    # "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    move-object v9, v7

    invoke-virtual {v9}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 238
    new-instance v8, Ljava/time/DateTimeException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 247
    .end local v7    # "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    :cond_3
    move-object v8, v6

    instance-of v8, v8, Ljava/time/LocalTime;

    if-eqz v8, :cond_4

    .line 248
    move-object v8, v0

    move-object v9, v5

    move-object v10, v6

    check-cast v10, Ljava/time/LocalTime;

    invoke-direct {v8, v9, v10}, Ljava/time/format/DateTimeBuilder;->resolveMakeChanges(Ljava/time/temporal/TemporalField;Ljava/time/LocalTime;)V

    .line 249
    add-int/lit8 v2, v2, 0x1

    .line 250
    goto/16 :goto_0

    .line 252
    :cond_4
    move-object v8, v6

    instance-of v8, v8, Ljava/time/chrono/ChronoLocalDateTime;

    if-eqz v8, :cond_5

    .line 253
    move-object v8, v6

    check-cast v8, Ljava/time/chrono/ChronoLocalDateTime;

    move-object v7, v8

    .line 254
    .local v7, "cldt":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v8, v0

    move-object v9, v5

    move-object v10, v7

    invoke-virtual {v10}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/time/format/DateTimeBuilder;->resolveMakeChanges(Ljava/time/temporal/TemporalField;Ljava/time/chrono/AbstractChronoLocalDate;)V

    .line 255
    move-object v8, v0

    move-object v9, v5

    move-object v10, v7

    invoke-virtual {v10}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/time/format/DateTimeBuilder;->resolveMakeChanges(Ljava/time/temporal/TemporalField;Ljava/time/LocalTime;)V

    .line 256
    add-int/lit8 v2, v2, 0x1

    .line 257
    goto/16 :goto_0

    .line 259
    .end local v7    # "cldt":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    :cond_5
    new-instance v8, Ljava/time/DateTimeException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 260
    :cond_6
    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object v9, v5

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 261
    add-int/lit8 v2, v2, 0x1

    .line 262
    goto/16 :goto_0

    .line 264
    :cond_7
    goto/16 :goto_1

    .line 265
    .line 267
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v5    # "targetField":Ljava/time/temporal/TemporalField;
    .end local v6    # "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    :cond_8
    move v8, v2

    const/16 v9, 0x64

    if-ne v8, v9, :cond_9

    .line 268
    new-instance v8, Ljava/time/DateTimeException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Badly written field"

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 270
    :cond_9
    move v8, v2

    if-lez v8, :cond_a

    const/4 v8, 0x1

    :goto_2
    move v0, v8

    .end local v0    # "this":Ljava/time/format/DateTimeBuilder;
    return v0

    .restart local v0    # "this":Ljava/time/format/DateTimeBuilder;
    :cond_a
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private resolveFractional()V
    .locals 10

    .prologue
    .line 600
    move-object v1, p0

    .local v1, "this":Ljava/time/format/DateTimeBuilder;
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    if-nez v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    .line 601
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 602
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 603
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 604
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 605
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v2, v4

    .line 606
    .local v2, "nos":J
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide v6, v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 607
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide v6, v2

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 608
    .line 614
    .end local v2    # "nos":J
    :cond_1
    :goto_0
    return-void

    .line 609
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 610
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 611
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method private resolveInstant()V
    .locals 10

    .prologue
    .line 617
    move-object v1, p0

    .local v1, "this":Ljava/time/format/DateTimeBuilder;
    move-object v6, v1

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    if-eqz v6, :cond_0

    .line 618
    move-object v6, v1

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    if-eqz v6, :cond_1

    .line 619
    move-object v6, v1

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v7, v1

    iget-object v7, v7, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    invoke-virtual {v6, v7}, Ljava/time/chrono/AbstractChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    invoke-virtual {v6, v7}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v6

    sget-object v7, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6, v7}, Ljava/time/chrono/ChronoZonedDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    move-wide v2, v6

    .line 620
    .local v2, "instant":J
    move-object v6, v1

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 621
    .line 630
    .end local v2    # "instant":J
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    move-object v6, v1

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move-object v2, v6

    .line 623
    .local v2, "offsetSecs":Ljava/lang/Long;
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 624
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v6

    move-object v3, v6

    .line 625
    .local v3, "offset":Ljava/time/ZoneOffset;
    move-object v6, v1

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v7, v1

    iget-object v7, v7, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    invoke-virtual {v6, v7}, Ljava/time/chrono/AbstractChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v6

    sget-object v7, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6, v7}, Ljava/time/chrono/ChronoZonedDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    move-wide v4, v6

    .line 626
    .local v4, "instant":J
    move-object v6, v1

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    move-wide v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0
.end method

.method private resolveMakeChanges(Ljava/time/temporal/TemporalField;Ljava/time/LocalTime;)V
    .locals 12

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "targetField":Ljava/time/temporal/TemporalField;
    move-object v2, p2

    .local v2, "time":Ljava/time/LocalTime;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    move-wide v3, v6

    .line 288
    .local v3, "nanOfDay":J
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move-object v5, v6

    .line 289
    .local v5, "old":Ljava/lang/Long;
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v8, v3

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 290
    new-instance v6, Ljava/time/DateTimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conflict found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " differs from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " while resolving  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 294
    :cond_0
    return-void
.end method

.method private resolveMakeChanges(Ljava/time/temporal/TemporalField;Ljava/time/chrono/AbstractChronoLocalDate;)V
    .locals 12

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "targetField":Ljava/time/temporal/TemporalField;
    move-object v2, p2

    .local v2, "date":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->chrono:Ljava/time/chrono/Chronology;

    move-object v7, v2

    invoke-virtual {v7}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 275
    new-instance v6, Ljava/time/DateTimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ChronoLocalDate must use the effective parsed chronology: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeBuilder;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 277
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v6

    move-wide v3, v6

    .line 278
    .local v3, "epochDay":J
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    move-wide v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move-object v5, v6

    .line 279
    .local v5, "old":Ljava/lang/Long;
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v8, v3

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 280
    new-instance v6, Ljava/time/DateTimeException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conflict found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " differs from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v3

    .line 281
    invoke-static {v9, v10}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " while resolving  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 284
    :cond_1
    return-void
.end method

.method private resolveTimeInferZeroes(Ljava/time/format/ResolverStyle;)V
    .locals 20

    .prologue
    .line 455
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/format/DateTimeBuilder;
    move-object/from16 v2, p1

    .local v2, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v14, v1

    iget-object v14, v14, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v15, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    move-object v3, v14

    .line 456
    .local v3, "hod":Ljava/lang/Long;
    move-object v14, v1

    iget-object v14, v14, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v15, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    move-object v4, v14

    .line 457
    .local v4, "moh":Ljava/lang/Long;
    move-object v14, v1

    iget-object v14, v14, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v15, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    move-object v5, v14

    .line 458
    .local v5, "som":Ljava/lang/Long;
    move-object v14, v1

    iget-object v14, v14, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v15, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    move-object v6, v14

    .line 459
    .local v6, "nos":Ljava/lang/Long;
    move-object v14, v3

    if-nez v14, :cond_0

    .line 460
    .line 536
    :goto_0
    return-void

    .line 462
    :cond_0
    move-object v14, v4

    if-nez v14, :cond_2

    move-object v14, v5

    if-nez v14, :cond_1

    move-object v14, v6

    if-eqz v14, :cond_2

    .line 463
    :cond_1
    goto :goto_0

    .line 465
    :cond_2
    move-object v14, v4

    if-eqz v14, :cond_3

    move-object v14, v5

    if-nez v14, :cond_3

    move-object v14, v6

    if-eqz v14, :cond_3

    .line 466
    goto :goto_0

    .line 468
    :cond_3
    move-object v14, v2

    sget-object v15, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v14, v15, :cond_c

    .line 469
    move-object v14, v3

    if-eqz v14, :cond_8

    .line 470
    move-object v14, v2

    sget-object v15, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v14, v15, :cond_7

    move-object v14, v3

    .line 471
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x18

    cmp-long v14, v14, v16

    if-nez v14, :cond_7

    move-object v14, v4

    if-eqz v14, :cond_4

    move-object v14, v4

    .line 472
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_7

    :cond_4
    move-object v14, v5

    if-eqz v14, :cond_5

    move-object v14, v5

    .line 473
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_7

    :cond_5
    move-object v14, v6

    if-eqz v14, :cond_6

    move-object v14, v6

    .line 474
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_7

    .line 475
    :cond_6
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v3, v14

    .line 476
    move-object v14, v1

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v15

    iput-object v15, v14, Ljava/time/format/DateTimeBuilder;->excessDays:Ljava/time/Period;

    .line 478
    :cond_7
    sget-object v14, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object v15, v3

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v14

    move v7, v14

    .line 479
    .local v7, "hodVal":I
    move-object v14, v4

    if-eqz v14, :cond_b

    .line 480
    sget-object v14, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move-object v15, v4

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v14

    move v8, v14

    .line 481
    .local v8, "mohVal":I
    move-object v14, v5

    if-eqz v14, :cond_a

    .line 482
    sget-object v14, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    move-object v15, v5

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v14

    move v9, v14

    .line 483
    .local v9, "somVal":I
    move-object v14, v6

    if-eqz v14, :cond_9

    .line 484
    sget-object v14, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v14

    move v10, v14

    .line 485
    .local v10, "nosVal":I
    move-object v14, v1

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-static/range {v15 .. v18}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/time/format/DateTimeBuilder;->addObject(Ljava/time/LocalTime;)V

    .line 486
    .line 489
    .line 494
    .line 499
    .line 532
    .end local v7    # "hodVal":I
    .end local v8    # "mohVal":I
    .end local v9    # "somVal":I
    .end local v10    # "nosVal":I
    :cond_8
    :goto_1
    move-object v14, v1

    iget-object v14, v14, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v15, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 533
    move-object v14, v1

    iget-object v14, v14, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v15, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 534
    move-object v14, v1

    iget-object v14, v14, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v15, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 535
    move-object v14, v1

    iget-object v14, v14, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    sget-object v15, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 536
    goto/16 :goto_0

    .line 487
    .restart local v7    # "hodVal":I
    .restart local v8    # "mohVal":I
    .restart local v9    # "somVal":I
    :cond_9
    move-object v14, v1

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-static/range {v15 .. v17}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/time/format/DateTimeBuilder;->addObject(Ljava/time/LocalTime;)V

    goto :goto_1

    .line 490
    .end local v9    # "somVal":I
    :cond_a
    move-object v14, v6

    if-nez v14, :cond_8

    .line 491
    move-object v14, v1

    move v15, v7

    move/from16 v16, v8

    invoke-static/range {v15 .. v16}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/time/format/DateTimeBuilder;->addObject(Ljava/time/LocalTime;)V

    goto :goto_1

    .line 495
    .end local v8    # "mohVal":I
    :cond_b
    move-object v14, v5

    if-nez v14, :cond_8

    move-object v14, v6

    if-nez v14, :cond_8

    .line 496
    move-object v14, v1

    move v15, v7

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/time/format/DateTimeBuilder;->addObject(Ljava/time/LocalTime;)V

    goto :goto_1

    .line 501
    .end local v7    # "hodVal":I
    :cond_c
    move-object v14, v3

    if-eqz v14, :cond_8

    .line 502
    move-object v14, v3

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-wide v7, v14

    .line 503
    .local v7, "hodVal":J
    move-object v14, v4

    if-eqz v14, :cond_f

    .line 504
    move-object v14, v5

    if-eqz v14, :cond_e

    .line 505
    move-object v14, v6

    if-nez v14, :cond_d

    .line 506
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v6, v14

    .line 508
    :cond_d
    move-wide v14, v7

    const-wide v16, 0x34630b8a000L

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v14

    move-wide v9, v14

    .line 509
    .local v9, "totalNanos":J
    move-wide v14, v9

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide v18, 0xdf8475800L

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v14

    move-wide v9, v14

    .line 510
    move-wide v14, v9

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/32 v18, 0x3b9aca00

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v14

    move-wide v9, v14

    .line 511
    move-wide v14, v9

    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v14

    move-wide v9, v14

    .line 512
    move-wide v14, v9

    const-wide v16, 0x4e94914f0000L

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v14

    long-to-int v14, v14

    move v11, v14

    .line 513
    .local v11, "excessDays":I
    move-wide v14, v9

    const-wide v16, 0x4e94914f0000L

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v14

    move-wide v12, v14

    .line 514
    .local v12, "nod":J
    move-object v14, v1

    move-wide v15, v12

    invoke-static/range {v15 .. v16}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/time/format/DateTimeBuilder;->addObject(Ljava/time/LocalTime;)V

    .line 515
    move-object v14, v1

    move v15, v11

    invoke-static {v15}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v15

    iput-object v15, v14, Ljava/time/format/DateTimeBuilder;->excessDays:Ljava/time/Period;

    .line 516
    goto/16 :goto_1

    .line 517
    .end local v9    # "totalNanos":J
    .end local v11    # "excessDays":I
    .end local v12    # "nod":J
    :cond_e
    move-wide v14, v7

    const-wide/16 v16, 0xe10

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v14

    move-wide v9, v14

    .line 518
    .local v9, "totalSecs":J
    move-wide v14, v9

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x3c

    invoke-static/range {v16 .. v19}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JJ)J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v14

    move-wide v9, v14

    .line 519
    move-wide v14, v9

    const-wide/32 v16, 0x15180

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v14

    long-to-int v14, v14

    move v11, v14

    .line 520
    .restart local v11    # "excessDays":I
    move-wide v14, v9

    const-wide/32 v16, 0x15180

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JJ)J

    move-result-wide v14

    move-wide v12, v14

    .line 521
    .local v12, "sod":J
    move-object v14, v1

    move-wide v15, v12

    invoke-static/range {v15 .. v16}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/time/format/DateTimeBuilder;->addObject(Ljava/time/LocalTime;)V

    .line 522
    move-object v14, v1

    move v15, v11

    invoke-static {v15}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v15

    iput-object v15, v14, Ljava/time/format/DateTimeBuilder;->excessDays:Ljava/time/Period;

    .line 523
    goto/16 :goto_1

    .line 525
    .end local v9    # "totalSecs":J
    .end local v11    # "excessDays":I
    .end local v12    # "sod":J
    :cond_f
    move-wide v14, v7

    const-wide/16 v16, 0x18

    invoke-static/range {v14 .. v17}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v14

    move v9, v14

    .line 526
    .local v9, "excessDays":I
    move-wide v14, v7

    const/16 v16, 0x18

    invoke-static/range {v14 .. v16}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v14

    int-to-long v14, v14

    move-wide v7, v14

    .line 527
    move-object v14, v1

    move-wide v15, v7

    long-to-int v15, v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/time/format/DateTimeBuilder;->addObject(Ljava/time/LocalTime;)V

    .line 528
    move-object v14, v1

    move v15, v9

    invoke-static {v15}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v15

    iput-object v15, v14, Ljava/time/format/DateTimeBuilder;->excessDays:Ljava/time/Period;

    goto/16 :goto_1
.end method


# virtual methods
.method addFieldValue(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;
    .locals 12

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "value":J
    move-object v5, v1

    const-string v6, "field"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 169
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/time/format/DateTimeBuilder;->getFieldValue0(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v5

    move-object v4, v5

    .line 170
    .local v4, "old":Ljava/lang/Long;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v7, v2

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 171
    new-instance v5, Ljava/time/DateTimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Conflict found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " differs from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 173
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v5, v6, v7, v8}, Ljava/time/format/DateTimeBuilder;->putFieldValue0(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeBuilder;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljava/time/format/DateTimeBuilder;
    return-object v0
.end method

.method addObject(Ljava/time/LocalTime;)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "time":Ljava/time/LocalTime;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    .line 188
    return-void
.end method

.method addObject(Ljava/time/chrono/AbstractChronoLocalDate;)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "date":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    .line 184
    return-void
.end method

.method public build(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
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
    .line 645
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "type":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeBuilder;
    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 9

    .prologue
    .line 661
    move-object v1, p0

    .local v1, "this":Ljava/time/format/DateTimeBuilder;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v4, v2

    const-string v5, "field"

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 662
    move-object v4, v1

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/time/format/DateTimeBuilder;->getFieldValue0(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v4

    move-object v3, v4

    .line 663
    .local v3, "value":Ljava/lang/Long;
    move-object v4, v3

    if-nez v4, :cond_2

    .line 664
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/chrono/AbstractChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 665
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/chrono/AbstractChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-wide v1, v4

    .line 672
    .end local v1    # "this":Ljava/time/format/DateTimeBuilder;
    :goto_0
    return-wide v1

    .line 667
    .restart local v1    # "this":Ljava/time/format/DateTimeBuilder;
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/LocalTime;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    move-object v4, v1

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0

    .line 670
    :cond_1
    new-instance v4, Ljava/time/DateTimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Field not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 672
    :cond_2
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 652
    const/4 v2, 0x0

    move v0, v2

    .line 656
    .end local v0    # "this":Ljava/time/format/DateTimeBuilder;
    :goto_0
    return v0

    .line 654
    .restart local v0    # "this":Ljava/time/format/DateTimeBuilder;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v3, v1

    .line 655
    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    move-object v3, v1

    .line 656
    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
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
    .line 678
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 679
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    move-object v0, v2

    .line 693
    .end local v0    # "this":Ljava/time/format/DateTimeBuilder;
    :goto_0
    return-object v0

    .line 680
    .restart local v0    # "this":Ljava/time/format/DateTimeBuilder;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 681
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->chrono:Ljava/time/chrono/Chronology;

    move-object v0, v2

    goto :goto_0

    .line 682
    :cond_1
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 683
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-static {v2}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 684
    :cond_3
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 685
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    move-object v0, v2

    goto :goto_0

    .line 686
    :cond_4
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_5

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_6

    .line 687
    :cond_5
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 688
    :cond_6
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_7

    .line 689
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 693
    :cond_7
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/format/DateTimeBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;)",
            "Ljava/time/format/DateTimeBuilder;"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    move-object v1, p1

    .local v1, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v2, p2

    .local v2, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 203
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    .line 206
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/format/DateTimeBuilder;->mergeInstantFields()V

    .line 207
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeBuilder;->mergeDate(Ljava/time/format/ResolverStyle;)V

    .line 208
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeBuilder;->mergeTime(Ljava/time/format/ResolverStyle;)V

    .line 209
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeBuilder;->resolveFields(Ljava/time/format/ResolverStyle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/format/DateTimeBuilder;->mergeInstantFields()V

    .line 211
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeBuilder;->mergeDate(Ljava/time/format/ResolverStyle;)V

    .line 212
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeBuilder;->mergeTime(Ljava/time/format/ResolverStyle;)V

    .line 214
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/format/DateTimeBuilder;->resolveTimeInferZeroes(Ljava/time/format/ResolverStyle;)V

    .line 215
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/format/DateTimeBuilder;->crossCheck()V

    .line 216
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->excessDays:Ljava/time/Period;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->excessDays:Ljava/time/Period;

    invoke-virtual {v3}, Ljava/time/Period;->isZero()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    if-eqz v3, :cond_2

    .line 217
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeBuilder;->excessDays:Ljava/time/Period;

    invoke-virtual {v4, v5}, Ljava/time/chrono/AbstractChronoLocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    iput-object v4, v3, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    .line 218
    move-object v3, v0

    sget-object v4, Ljava/time/Period;->ZERO:Ljava/time/Period;

    iput-object v4, v3, Ljava/time/format/DateTimeBuilder;->excessDays:Ljava/time/Period;

    .line 220
    :cond_2
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/format/DateTimeBuilder;->resolveFractional()V

    .line 221
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/format/DateTimeBuilder;->resolveInstant()V

    .line 222
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeBuilder;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 700
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, "DateTimeBuilder["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 701
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 702
    move-object v2, v1

    const-string v3, "fields="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->fieldValues:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 704
    :cond_0
    move-object v2, v1

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 705
    move-object v2, v1

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->zone:Ljava/time/ZoneId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 706
    move-object v2, v1

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->date:Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 707
    move-object v2, v1

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeBuilder;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 708
    move-object v2, v1

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 709
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeBuilder;
    return-object v0
.end method
