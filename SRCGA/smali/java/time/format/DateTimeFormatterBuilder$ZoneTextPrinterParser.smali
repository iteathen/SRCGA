.class final Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
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
    name = "ZoneTextPrinterParser"
.end annotation


# static fields
.field private static final LENGTH_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final textStyle:Ljava/time/format/TextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3351
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser$1;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->LENGTH_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljava/time/format/TextStyle;)V
    .locals 5

    .prologue
    .line 3364
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
    move-object v1, p1

    .local v1, "textStyle":Ljava/time/format/TextStyle;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3365
    move-object v2, v0

    move-object v3, v1

    const-string v4, "textStyle"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/format/TextStyle;

    iput-object v3, v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 3366
    return-void
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 16

    .prologue
    .line 3398
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
    move-object/from16 v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move/from16 v3, p3

    .local v3, "position":I
    new-instance v9, Ljava/util/TreeMap;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    sget-object v11, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->LENGTH_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v10, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v4, v9

    .line 3399
    .local v4, "ids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/time/ZoneId;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_0
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v6, v9

    .line 3400
    .local v6, "id":Ljava/lang/String;
    move-object v9, v4

    move-object v10, v6

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3401
    move-object v9, v6

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    move-object v7, v9

    .line 3402
    .local v7, "tz":Ljava/util/TimeZone;
    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v9}, Ljava/time/format/TextStyle;->asNormal()Ljava/time/format/TextStyle;

    move-result-object v9

    sget-object v10, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_1
    move v8, v9

    .line 3403
    .local v8, "tzstyle":I
    move-object v9, v4

    move-object v10, v7

    const/4 v11, 0x0

    move v12, v8

    move-object v13, v1

    invoke-virtual {v13}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3404
    move-object v9, v4

    move-object v10, v7

    const/4 v11, 0x1

    move v12, v8

    move-object v13, v1

    invoke-virtual {v13}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3405
    goto :goto_0

    .line 3402
    .end local v8    # "tzstyle":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 3406
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "tz":Ljava/util/TimeZone;
    :cond_1
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_2
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v6, v9

    .line 3407
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v7, v9

    .line 3408
    .local v7, "name":Ljava/lang/String;
    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move-object v12, v7

    const/4 v13, 0x0

    move-object v14, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {v9 .. v14}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3409
    move-object v9, v1

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3410
    move v9, v3

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    move v0, v9

    .line 3413
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "name":Ljava/lang/String;
    :goto_3
    return v0

    .line 3412
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "name":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 3413
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    move v9, v3

    const/4 v10, -0x1

    xor-int/lit8 v9, v9, -0x1

    move v0, v9

    goto :goto_3
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 14

    .prologue
    .line 3371
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object/from16 v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v10, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/time/ZoneId;

    move-object v3, v10

    .line 3372
    .local v3, "zone":Ljava/time/ZoneId;
    move-object v10, v3

    if-nez v10, :cond_0

    .line 3373
    const/4 v10, 0x0

    move v0, v10

    .line 3391
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
    :goto_0
    return v0

    .line 3375
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
    :cond_0
    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/ZoneId;->normalized()Ljava/time/ZoneId;

    move-result-object v10

    instance-of v10, v10, Ljava/time/ZoneOffset;

    if-eqz v10, :cond_1

    .line 3376
    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v11}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3377
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 3379
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v10

    sget-object v11, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v10, v11}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object v4, v10

    .line 3381
    .local v4, "epochSec":Ljava/lang/Long;
    move-object v10, v4

    if-eqz v10, :cond_2

    .line 3382
    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v10

    move-object v5, v10

    .line 3386
    .local v5, "instant":Ljava/time/Instant;
    :goto_1
    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    move-object v6, v10

    .line 3387
    .local v6, "tz":Ljava/util/TimeZone;
    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/time/bp/zone/ZoneRules;->isDaylightSavings(Ljava/time/Instant;)Z

    move-result v10

    move v7, v10

    .line 3388
    .local v7, "daylight":Z
    move-object v10, v0

    iget-object v10, v10, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v10}, Ljava/time/format/TextStyle;->asNormal()Ljava/time/format/TextStyle;

    move-result-object v10

    sget-object v11, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_2
    move v8, v10

    .line 3389
    .local v8, "tzstyle":I
    move-object v10, v6

    move v11, v7

    move v12, v8

    move-object v13, v1

    invoke-virtual {v13}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 3390
    .local v9, "text":Ljava/lang/String;
    move-object v10, v2

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3391
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 3384
    .end local v5    # "instant":Ljava/time/Instant;
    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v7    # "daylight":Z
    .end local v8    # "tzstyle":I
    .end local v9    # "text":Ljava/lang/String;
    :cond_2
    const-wide v10, -0x177f03c00L

    invoke-static {v10, v11}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v10

    move-object v5, v10

    .restart local v5    # "instant":Ljava/time/Instant;
    goto :goto_1

    .line 3388
    .restart local v6    # "tz":Ljava/util/TimeZone;
    .restart local v7    # "daylight":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3418
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoneText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;
    return-object v0
.end method
