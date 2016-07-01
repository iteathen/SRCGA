.class final Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
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
    name = "LocalizedPrinterParser"
.end annotation


# instance fields
.field private final dateStyle:Ljava/time/format/FormatStyle;

.field private final timeStyle:Ljava/time/format/FormatStyle;


# direct methods
.method constructor <init>(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)V
    .locals 5

    .prologue
    .line 3747
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
    move-object v1, p1

    .local v1, "dateStyle":Ljava/time/format/FormatStyle;
    move-object v2, p2

    .local v2, "timeStyle":Ljava/time/format/FormatStyle;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 3749
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljava/time/format/FormatStyle;

    .line 3750
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljava/time/format/FormatStyle;

    .line 3751
    return-void
.end method

.method private formatter(Ljava/util/Locale;Ljava/time/chrono/AbstractChronology;)Ljava/time/format/DateTimeFormatter;
    .locals 8

    .prologue
    .line 3773
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, p2

    .local v2, "chrono":Ljava/time/chrono/AbstractChronology;
    invoke-static {}, Ljava/time/format/DateTimeFormatStyleProvider;->getInstance()Ljava/time/format/DateTimeFormatStyleProvider;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljava/time/format/FormatStyle;

    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljava/time/format/FormatStyle;

    move-object v6, v2

    move-object v7, v1

    .line 3774
    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/time/format/DateTimeFormatStyleProvider;->getFormatter(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/AbstractChronology;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
    return-object v0
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 9

    .prologue
    .line 3761
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move v3, p3

    .local v3, "position":I
    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v5

    check-cast v5, Ljava/time/chrono/AbstractChronology;

    check-cast v5, Ljava/time/chrono/AbstractChronology;

    move-object v4, v5

    .line 3762
    .local v4, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v6

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->formatter(Ljava/util/Locale;Ljava/time/chrono/AbstractChronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
    return v0
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 7

    .prologue
    .line 3755
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v4

    invoke-static {v4}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    move-object v3, v4

    .line 3756
    .local v3, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v5

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->formatter(Ljava/util/Locale;Ljava/time/chrono/AbstractChronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3779
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Localized("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljava/time/format/FormatStyle;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljava/time/format/FormatStyle;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljava/time/format/FormatStyle;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljava/time/format/FormatStyle;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method
