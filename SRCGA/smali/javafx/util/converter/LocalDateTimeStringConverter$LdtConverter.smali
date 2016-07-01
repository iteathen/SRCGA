.class Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;
.super Ljavafx/util/StringConverter;
.source "LocalDateTimeStringConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/util/converter/LocalDateTimeStringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LdtConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/time/temporal/Temporal;",
        ">",
        "Ljavafx/util/StringConverter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field chronology:Ljava/time/chrono/Chronology;

.field dateStyle:Ljava/time/format/FormatStyle;

.field formatter:Ljava/time/format/DateTimeFormatter;

.field locale:Ljava/util/Locale;

.field parser:Ljava/time/format/DateTimeFormatter;

.field timeStyle:Ljava/time/format/FormatStyle;

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/time/format/DateTimeFormatter;Ljava/time/format/DateTimeFormatter;Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/util/Locale;Ljava/time/chrono/Chronology;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/time/format/DateTimeFormatter;",
            "Ljava/time/format/DateTimeFormatter;",
            "Ljava/time/format/FormatStyle;",
            "Ljava/time/format/FormatStyle;",
            "Ljava/util/Locale;",
            "Ljava/time/chrono/Chronology;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v2, p2

    .local v2, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v3, p3

    .local v3, "parser":Ljava/time/format/DateTimeFormatter;
    move-object v4, p4

    .local v4, "dateStyle":Ljava/time/format/FormatStyle;
    move-object v5, p5

    .local v5, "timeStyle":Ljava/time/format/FormatStyle;
    move-object/from16 v6, p6

    .local v6, "locale":Ljava/util/Locale;
    move-object/from16 v7, p7

    .local v7, "chronology":Ljava/time/chrono/Chronology;
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/util/StringConverter;-><init>()V

    .line 180
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->type:Ljava/lang/Class;

    .line 181
    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 182
    move-object v8, v0

    move-object v9, v3

    if-eqz v9, :cond_4

    move-object v9, v3

    :goto_0
    iput-object v9, v8, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->parser:Ljava/time/format/DateTimeFormatter;

    .line 183
    move-object v8, v0

    move-object v9, v6

    if-eqz v9, :cond_5

    move-object v9, v6

    :goto_1
    iput-object v9, v8, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->locale:Ljava/util/Locale;

    .line 184
    move-object v8, v0

    move-object v9, v7

    if-eqz v9, :cond_6

    move-object v9, v7

    :goto_2
    iput-object v9, v8, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    .line 186
    move-object v8, v1

    const-class v9, Ljava/time/LocalDate;

    if-eq v8, v9, :cond_0

    move-object v8, v1

    const-class v9, Ljava/time/LocalDateTime;

    if-ne v8, v9, :cond_1

    .line 187
    :cond_0
    move-object v8, v0

    move-object v9, v4

    if-eqz v9, :cond_7

    move-object v9, v4

    :goto_3
    iput-object v9, v8, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->dateStyle:Ljava/time/format/FormatStyle;

    .line 190
    :cond_1
    move-object v8, v1

    const-class v9, Ljava/time/LocalTime;

    if-eq v8, v9, :cond_2

    move-object v8, v1

    const-class v9, Ljava/time/LocalDateTime;

    if-ne v8, v9, :cond_3

    .line 191
    :cond_2
    move-object v8, v0

    move-object v9, v5

    if-eqz v9, :cond_8

    move-object v9, v5

    :goto_4
    iput-object v9, v8, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->timeStyle:Ljava/time/format/FormatStyle;

    .line 193
    :cond_3
    return-void

    .line 182
    :cond_4
    move-object v9, v2

    goto :goto_0

    .line 183
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    goto :goto_1

    .line 184
    :cond_6
    sget-object v9, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    goto :goto_2

    .line 187
    :cond_7
    sget-object v9, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    goto :goto_3

    .line 191
    :cond_8
    sget-object v9, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    goto :goto_4
.end method

.method private fixFourDigitYear(Ljava/time/format/DateTimeFormatter;Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .locals 12

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, p2

    .local v2, "dateStyle":Ljava/time/format/FormatStyle;
    move-object v3, p3

    .local v3, "timeStyle":Ljava/time/format/FormatStyle;
    move-object/from16 v4, p4

    .local v4, "chronology":Ljava/time/chrono/Chronology;
    move-object/from16 v5, p5

    .local v5, "locale":Ljava/util/Locale;
    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    .line 299
    invoke-static {v8, v9, v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->getLocalizedDateTimePattern(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 301
    .local v6, "pattern":Ljava/lang/String;
    move-object v8, v6

    const-string v9, "yy"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v6

    const-string v9, "yyy"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 303
    move-object v8, v6

    const-string v9, "yy"

    const-string v10, "yyyy"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 304
    .local v7, "newPattern":Ljava/lang/String;
    move-object v8, v7

    invoke-static {v8}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v8

    move-object v9, v5

    .line 305
    invoke-static {v9}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/time/format/DateTimeFormatter;->withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v8

    move-object v1, v8

    .line 308
    .end local v7    # "newPattern":Ljava/lang/String;
    :cond_0
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    return-object v0
.end method

.method private getDefaultFormatter()Ljava/time/format/DateTimeFormatter;
    .locals 8

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->dateStyle:Ljava/time/format/FormatStyle;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->timeStyle:Ljava/time/format/FormatStyle;

    if-eqz v2, :cond_1

    .line 276
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->dateStyle:Ljava/time/format/FormatStyle;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->timeStyle:Ljava/time/format/FormatStyle;

    invoke-static {v2, v3}, Ljava/time/format/DateTimeFormatter;->ofLocalizedDateTime(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v1, v2

    .line 283
    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    :goto_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    .line 284
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->locale:Ljava/util/Locale;

    .line 285
    invoke-static {v3}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v1, v2

    .line 287
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->dateStyle:Ljava/time/format/FormatStyle;

    if-eqz v2, :cond_0

    .line 288
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->dateStyle:Ljava/time/format/FormatStyle;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->timeStyle:Ljava/time/format/FormatStyle;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->locale:Ljava/util/Locale;

    invoke-direct/range {v2 .. v7}, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->fixFourDigitYear(Ljava/time/format/DateTimeFormatter;Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v1, v2

    .line 292
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    return-object v0

    .line 277
    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    .restart local v0    # "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->dateStyle:Ljava/time/format/FormatStyle;

    if-eqz v2, :cond_2

    .line 278
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->dateStyle:Ljava/time/format/FormatStyle;

    invoke-static {v2}, Ljava/time/format/DateTimeFormatter;->ofLocalizedDate(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_0

    .line 280
    .end local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->timeStyle:Ljava/time/format/FormatStyle;

    invoke-static {v2}, Ljava/time/format/DateTimeFormatter;->ofLocalizedTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "formatter":Ljava/time/format/DateTimeFormatter;
    goto :goto_0
.end method

.method private getDefaultParser()Ljava/time/format/DateTimeFormatter;
    .locals 7

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->dateStyle:Ljava/time/format/FormatStyle;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->timeStyle:Ljava/time/format/FormatStyle;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->locale:Ljava/util/Locale;

    .line 259
    invoke-static {v2, v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->getLocalizedDateTimePattern(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 261
    .local v1, "pattern":Ljava/lang/String;
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseLenient()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    move-object v3, v1

    .line 262
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v2

    .line 263
    invoke-virtual {v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    .line 264
    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->locale:Ljava/util/Locale;

    .line 265
    invoke-static {v3}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    return-object v0
.end method


# virtual methods
.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->fromString(Ljava/lang/String;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    return-object v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/time/temporal/Temporal;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 215
    .end local v0    # "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    :goto_0
    return-object v0

    .line 202
    .restart local v0    # "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 204
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->parser:Ljava/time/format/DateTimeFormatter;

    if-nez v3, :cond_2

    .line 205
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->getDefaultParser()Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    iput-object v4, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->parser:Ljava/time/format/DateTimeFormatter;

    .line 208
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->parser:Ljava/time/format/DateTimeFormatter;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v3

    move-object v2, v3

    .line 210
    .local v2, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->type:Ljava/lang/Class;

    const-class v4, Ljava/time/LocalDate;

    if-ne v3, v4, :cond_3

    .line 211
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v3

    invoke-static {v3}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 212
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->type:Ljava/lang/Class;

    const-class v4, Ljava/time/LocalTime;

    if-ne v3, v4, :cond_4

    .line 213
    move-object v3, v2

    invoke-static {v3}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 215
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/time/chrono/Chronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v3

    invoke-static {v3}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/Temporal;

    invoke-virtual {v2, v3}, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->toString(Ljava/time/temporal/Temporal;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    return-object v0
.end method

.method public toString(Ljava/time/temporal/Temporal;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/time/temporal/Temporal;, "TT;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 224
    const-string v4, ""

    move-object v0, v4

    .line 252
    .end local v0    # "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    :goto_0
    return-object v0

    .line 227
    .restart local v0    # "this":Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;, "Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter<TT;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->formatter:Ljava/time/format/DateTimeFormatter;

    if-nez v4, :cond_1

    .line 228
    move-object v4, v0

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->getDefaultFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v5

    iput-object v5, v4, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 231
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Ljava/time/LocalDate;

    if-eqz v4, :cond_2

    .line 234
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 239
    .line 240
    .local v2, "cDate":Ljava/time/chrono/ChronoLocalDate;
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->formatter:Ljava/time/format/DateTimeFormatter;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 235
    .end local v2    # "cDate":Ljava/time/chrono/ChronoLocalDate;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 236
    .local v3, "ex":Ljava/time/DateTimeException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Converting LocalDate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed, falling back to IsoChronology."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    move-object v4, v0

    sget-object v5, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    iput-object v5, v4, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    .line 238
    move-object v4, v1

    check-cast v4, Ljava/time/LocalDate;

    move-object v2, v4

    .restart local v2    # "cDate":Ljava/time/chrono/ChronoLocalDate;
    goto :goto_1

    .line 241
    .end local v2    # "cDate":Ljava/time/chrono/ChronoLocalDate;
    .end local v3    # "ex":Ljava/time/DateTimeException;
    :cond_2
    move-object v4, v1

    instance-of v4, v4, Ljava/time/LocalDateTime;

    if-eqz v4, :cond_3

    .line 244
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/time/chrono/Chronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v2, v4

    .line 249
    .line 250
    .local v2, "cDateTime":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<+Ljava/time/chrono/ChronoLocalDate;>;"
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->formatter:Ljava/time/format/DateTimeFormatter;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 245
    .end local v2    # "cDateTime":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<+Ljava/time/chrono/ChronoLocalDate;>;"
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 246
    .restart local v3    # "ex":Ljava/time/DateTimeException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Converting LocalDateTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed, falling back to IsoChronology."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    move-object v4, v0

    sget-object v5, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    iput-object v5, v4, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->chronology:Ljava/time/chrono/Chronology;

    .line 248
    move-object v4, v1

    check-cast v4, Ljava/time/LocalDateTime;

    move-object v2, v4

    .restart local v2    # "cDateTime":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<+Ljava/time/chrono/ChronoLocalDate;>;"
    goto :goto_2

    .line 252
    .end local v2    # "cDateTime":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<+Ljava/time/chrono/ChronoLocalDate;>;"
    .end local v3    # "ex":Ljava/time/DateTimeException;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/util/converter/LocalDateTimeStringConverter$LdtConverter;->formatter:Ljava/time/format/DateTimeFormatter;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0
.end method
