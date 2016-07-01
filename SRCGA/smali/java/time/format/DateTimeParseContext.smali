.class final Ljava/time/format/DateTimeParseContext;
.super Ljava/lang/Object;
.source "DateTimeParseContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeParseContext$Parsed;
    }
.end annotation


# instance fields
.field private caseSensitive:Z

.field private locale:Ljava/util/Locale;

.field private overrideChronology:Ljava/time/chrono/Chronology;

.field private overrideZone:Ljava/time/ZoneId;

.field private final parsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/time/format/DateTimeParseContext$Parsed;",
            ">;"
        }
    .end annotation
.end field

.field private strict:Z

.field private symbols:Ljava/time/format/DecimalStyle;


# direct methods
.method constructor <init>(Ljava/time/format/DateTimeFormatter;)V
    .locals 8

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 89
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    .line 93
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljava/time/format/DateTimeParseContext;->strict:Z

    .line 97
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 106
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 107
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatter;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v3

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext;->symbols:Ljava/time/format/DecimalStyle;

    .line 108
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatter;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext;->overrideChronology:Ljava/time/chrono/Chronology;

    .line 109
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/format/DateTimeFormatter;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext;->overrideZone:Ljava/time/ZoneId;

    .line 110
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    new-instance v3, Ljava/time/format/DateTimeParseContext$Parsed;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/time/format/DateTimeParseContext$Parsed;-><init>(Ljava/time/format/DateTimeParseContext;Ljava/time/format/DateTimeParseContext$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 111
    return-void
.end method

.method constructor <init>(Ljava/time/format/DateTimeParseContext;)V
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, p1

    .local v1, "other":Ljava/time/format/DateTimeParseContext;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 89
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    .line 93
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljava/time/format/DateTimeParseContext;->strict:Z

    .line 97
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 125
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 126
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext;->symbols:Ljava/time/format/DecimalStyle;

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext;->symbols:Ljava/time/format/DecimalStyle;

    .line 127
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext;->overrideChronology:Ljava/time/chrono/Chronology;

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext;->overrideChronology:Ljava/time/chrono/Chronology;

    .line 128
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext;->overrideZone:Ljava/time/ZoneId;

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext;->overrideZone:Ljava/time/ZoneId;

    .line 129
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    iput-boolean v3, v2, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    .line 130
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Ljava/time/format/DateTimeParseContext;->strict:Z

    iput-boolean v3, v2, Ljava/time/format/DateTimeParseContext;->strict:Z

    .line 131
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    new-instance v3, Ljava/time/format/DateTimeParseContext$Parsed;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/time/format/DateTimeParseContext$Parsed;-><init>(Ljava/time/format/DateTimeParseContext;Ljava/time/format/DateTimeParseContext$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 132
    return-void
.end method

.method constructor <init>(Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/chrono/AbstractChronology;)V
    .locals 10

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, p2

    .local v2, "symbols":Ljava/time/format/DecimalStyle;
    move-object v3, p3

    .local v3, "chronology":Ljava/time/chrono/AbstractChronology;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 89
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    .line 93
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Ljava/time/format/DateTimeParseContext;->strict:Z

    .line 97
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    .line 116
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/time/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 117
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljava/time/format/DateTimeParseContext;->symbols:Ljava/time/format/DecimalStyle;

    .line 118
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljava/time/format/DateTimeParseContext;->overrideChronology:Ljava/time/chrono/Chronology;

    .line 119
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljava/time/format/DateTimeParseContext;->overrideZone:Ljava/time/ZoneId;

    .line 120
    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    new-instance v5, Ljava/time/format/DateTimeParseContext$Parsed;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/time/format/DateTimeParseContext$Parsed;-><init>(Ljava/time/format/DateTimeParseContext;Ljava/time/format/DateTimeParseContext$1;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 121
    return-void
.end method

.method static synthetic access$100(Ljava/time/format/DateTimeParseContext;)Ljava/time/ZoneId;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Ljava/time/format/DateTimeParseContext;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeParseContext;->overrideZone:Ljava/time/ZoneId;

    move-object v0, v1

    .end local v0    # "x0":Ljava/time/format/DateTimeParseContext;
    return-object v0
.end method

.method static charEqualsIgnoreCase(CC)Z
    .locals 4

    .prologue
    .line 259
    move v0, p0

    .local v0, "c1":C
    move v1, p1

    .local v1, "c2":C
    move v2, v0

    move v3, v1

    if-eq v2, v3, :cond_0

    move v2, v0

    .line 260
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    if-eq v2, v3, :cond_0

    move v2, v0

    .line 261
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "c1":C
    return v0

    .restart local v0    # "c1":C
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private currentParsed()Ljava/time/format/DateTimeParseContext$Parsed;
    .locals 4

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/format/DateTimeParseContext$Parsed;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    return-object v0
.end method


# virtual methods
.method addChronologyChangedParser(Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;JII)V
    .locals 14

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, p1

    .local v1, "reducedPrinterParser":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move-wide/from16 v2, p2

    .local v2, "value":J
    move/from16 v4, p4

    .local v4, "errorPos":I
    move/from16 v5, p5

    .local v5, "successPos":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v7

    move-object v6, v7

    .line 374
    .local v6, "currentParsed":Ljava/time/format/DateTimeParseContext$Parsed;
    move-object v7, v6

    iget-object v7, v7, Ljava/time/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    if-nez v7, :cond_0

    .line 375
    move-object v7, v6

    new-instance v8, Ljava/util/ArrayList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v7, Ljava/time/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    .line 377
    :cond_0
    move-object v7, v6

    iget-object v7, v7, Ljava/time/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-wide v11, v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    move v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x3

    move v11, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 378
    return-void
.end method

.method charEquals(CC)Z
    .locals 5

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move v1, p1

    .local v1, "ch1":C
    move v2, p2

    .local v2, "ch2":C
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    move v3, v1

    move v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 248
    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    :goto_1
    return v0

    .line 246
    .restart local v0    # "this":Ljava/time/format/DateTimeParseContext;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 248
    :cond_1
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Ljava/time/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    move-result v3

    move v0, v3

    goto :goto_1
.end method

.method copy()Ljava/time/format/DateTimeParseContext;
    .locals 5

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    new-instance v1, Ljava/time/format/DateTimeParseContext;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/time/format/DateTimeParseContext;-><init>(Ljava/time/format/DateTimeParseContext;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    return-object v0
.end method

.method endOptional(Z)V
    .locals 5

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move v1, p1

    .local v1, "successful":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 300
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method getEffectiveChronology()Ljava/time/chrono/Chronology;
    .locals 3

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v2

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->chrono:Ljava/time/chrono/AbstractChronology;

    move-object v1, v2

    .line 172
    .local v1, "chrono":Ljava/time/chrono/Chronology;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 173
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext;->overrideChronology:Ljava/time/chrono/Chronology;

    move-object v1, v2

    .line 174
    move-object v2, v1

    if-nez v2, :cond_0

    .line 175
    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v1, v2

    .line 178
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    return-object v0
.end method

.method getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v2

    iget-object v2, v2, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    return-object v0
.end method

.method getSymbols()Ljava/time/format/DecimalStyle;
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeParseContext;->symbols:Ljava/time/format/DecimalStyle;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    return-object v0
.end method

.method isCaseSensitive()Z
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, v0

    iget-boolean v1, v1, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    move v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    return v0
.end method

.method isStrict()Z
    .locals 2

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, v0

    iget-boolean v1, v1, Ljava/time/format/DateTimeParseContext;->strict:Z

    move v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    return v0
.end method

.method setCaseSensitive(Z)V
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move v1, p1

    .local v1, "caseSensitive":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljava/time/format/DateTimeParseContext;->caseSensitive:Z

    .line 198
    return-void
.end method

.method setLocale(Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v1

    const-string v3, "locale"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 518
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext;->locale:Ljava/util/Locale;

    .line 519
    return-void
.end method

.method setParsed(Ljava/time/ZoneId;)V
    .locals 4

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v1

    const-string v3, "zone"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 390
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v2

    move-object v3, v1

    iput-object v3, v2, Ljava/time/format/DateTimeParseContext$Parsed;->zone:Ljava/time/ZoneId;

    .line 391
    return-void
.end method

.method setParsed(Ljava/time/chrono/AbstractChronology;)V
    .locals 16

    .prologue
    .line 359
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v2, p1

    .local v2, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v8, v2

    const-string v9, "chrono"

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 360
    move-object v8, v1

    invoke-direct {v8}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v8

    move-object v3, v8

    .line 361
    .local v3, "currentParsed":Ljava/time/format/DateTimeParseContext$Parsed;
    move-object v8, v3

    move-object v9, v2

    iput-object v9, v8, Ljava/time/format/DateTimeParseContext$Parsed;->chrono:Ljava/time/chrono/AbstractChronology;

    .line 362
    move-object v8, v3

    iget-object v8, v8, Ljava/time/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    if-eqz v8, :cond_0

    .line 363
    new-instance v8, Ljava/util/ArrayList;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v3

    iget-object v10, v10, Ljava/time/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v8

    .line 364
    .local v4, "callbacks":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    move-object v8, v3

    iget-object v8, v8, Ljava/time/format/DateTimeParseContext$Parsed;->callbacks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 365
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v6, v8

    .line 366
    .local v6, "objects":[Ljava/lang/Object;
    move-object v8, v6

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-object v7, v8

    .line 367
    .local v7, "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    move-object v8, v7

    move-object v9, v1

    move-object v10, v6

    const/4 v11, 0x1

    aget-object v10, v10, v11

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object v12, v6

    const/4 v13, 0x2

    aget-object v12, v12, v13

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object v13, v6

    const/4 v14, 0x3

    aget-object v13, v13, v14

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual/range {v8 .. v13}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    move-result v8

    .line 368
    goto :goto_0

    .line 370
    .end local v4    # "callbacks":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Object;>;"
    .end local v6    # "objects":[Ljava/lang/Object;
    .end local v7    # "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    :cond_0
    return-void
.end method

.method setParsedField(Ljava/time/temporal/TemporalField;JII)I
    .locals 12

    .prologue
    .line 345
    move-object v1, p0

    .local v1, "this":Ljava/time/format/DateTimeParseContext;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-wide v3, p2

    .local v3, "value":J
    move/from16 v5, p4

    .local v5, "errorPos":I
    move/from16 v6, p5

    .local v6, "successPos":I
    move-object v8, v2

    const-string v9, "field"

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 346
    move-object v8, v1

    invoke-direct {v8}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v8

    iget-object v8, v8, Ljava/time/format/DateTimeParseContext$Parsed;->fieldValues:Ljava/util/Map;

    move-object v9, v2

    move-wide v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    move-object v7, v8

    .line 347
    .local v7, "old":Ljava/lang/Long;
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-wide v10, v3

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    move v8, v5

    const/4 v9, -0x1

    xor-int/lit8 v8, v8, -0x1

    :goto_0
    move v1, v8

    .end local v1    # "this":Ljava/time/format/DateTimeParseContext;
    return v1

    .restart local v1    # "this":Ljava/time/format/DateTimeParseContext;
    :cond_0
    move v8, v6

    goto :goto_0
.end method

.method setParsedLeapSecond()V
    .locals 3

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljava/time/format/DateTimeParseContext$Parsed;->leapSecond:Z

    .line 398
    return-void
.end method

.method setStrict(Z)V
    .locals 4

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move v1, p1

    .local v1, "strict":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljava/time/format/DateTimeParseContext;->strict:Z

    .line 283
    return-void
.end method

.method startOptional()V
    .locals 3

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-direct {v2}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DateTimeParseContext$Parsed;->copy()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 291
    return-void
.end method

.method subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 12

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, p1

    .local v1, "cs1":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "offset1":I
    move-object v3, p3

    .local v3, "cs2":Ljava/lang/CharSequence;
    move/from16 v4, p4

    .local v4, "offset2":I
    move/from16 v5, p5

    .local v5, "length":I
    move v9, v2

    move v10, v5

    add-int/2addr v9, v10

    move-object v10, v1

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-gt v9, v10, :cond_0

    move v9, v4

    move v10, v5

    add-int/2addr v9, v10

    move-object v10, v3

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v9, v10, :cond_1

    .line 213
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 233
    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    :goto_0
    return v0

    .line 215
    .restart local v0    # "this":Ljava/time/format/DateTimeParseContext;
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 216
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_1
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_3

    .line 217
    move-object v9, v1

    move v10, v2

    move v11, v6

    add-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v7, v9

    .line 218
    .local v7, "ch1":C
    move-object v9, v3

    move v10, v4

    move v11, v6

    add-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v8, v9

    .line 219
    .local v8, "ch2":C
    move v9, v7

    move v10, v8

    if-eq v9, v10, :cond_2

    .line 220
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 216
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 233
    .end local v7    # "ch1":C
    .end local v8    # "ch2":C
    :cond_3
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 224
    .end local v6    # "i":I
    :cond_4
    const/4 v9, 0x0

    move v6, v9

    .restart local v6    # "i":I
    :goto_2
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_3

    .line 225
    move-object v9, v1

    move v10, v2

    move v11, v6

    add-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v7, v9

    .line 226
    .restart local v7    # "ch1":C
    move-object v9, v3

    move v10, v4

    move v11, v6

    add-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v8, v9

    .line 227
    .restart local v8    # "ch2":C
    move v9, v7

    move v10, v8

    if-eq v9, v10, :cond_5

    move v9, v7

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    move v10, v8

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    if-eq v9, v10, :cond_5

    move v9, v7

    .line 228
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    move v10, v8

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    if-eq v9, v10, :cond_5

    .line 229
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 224
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method toParsed()Ljava/time/format/DateTimeParseContext$Parsed;
    .locals 2

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeParseContext;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/format/DateTimeParseContext;->currentParsed()Ljava/time/format/DateTimeParseContext$Parsed;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/format/DateTimeParseContext$Parsed;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeParseContext;
    return-object v0
.end method
