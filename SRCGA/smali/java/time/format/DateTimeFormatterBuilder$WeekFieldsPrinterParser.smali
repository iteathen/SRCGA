.class final Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
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
    name = "WeekFieldsPrinterParser"
.end annotation


# instance fields
.field private final count:I

.field private final letter:C


# direct methods
.method public constructor <init>(CI)V
    .locals 5

    .prologue
    .line 3792
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
    move v1, p1

    .local v1, "letter":C
    move v2, p2

    .local v2, "count":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 3793
    move-object v3, v0

    move v4, v1

    iput-char v4, v3, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    .line 3794
    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    .line 3795
    return-void
.end method

.method private evaluate(Ljava/time/temporal/WeekFields;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    .locals 12

    .prologue
    .line 3812
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
    move-object v1, p1

    .local v1, "weekFields":Ljava/time/temporal/WeekFields;
    const/4 v3, 0x0

    move-object v2, v3

    .line 3813
    .local v2, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move-object v3, v0

    iget-char v3, v3, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    sparse-switch v3, :sswitch_data_0

    .line 3835
    :goto_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
    return-object v0

    .line 3815
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
    :sswitch_0
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/temporal/WeekFields;->dayOfWeek()Ljava/time/temporal/TemporalField;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v7, 0x2

    sget-object v8, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    move-object v2, v3

    .line 3816
    goto :goto_0

    .line 3818
    :sswitch_1
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/temporal/WeekFields;->dayOfWeek()Ljava/time/temporal/TemporalField;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v7, 0x2

    sget-object v8, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    move-object v2, v3

    .line 3819
    goto :goto_0

    .line 3821
    :sswitch_2
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v7, 0x2

    sget-object v8, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    move-object v2, v3

    .line 3822
    goto :goto_0

    .line 3824
    :sswitch_3
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/temporal/WeekFields;->weekOfMonth()Ljava/time/temporal/TemporalField;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    sget-object v8, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    move-object v2, v3

    .line 3825
    goto :goto_0

    .line 3827
    :sswitch_4
    move-object v3, v0

    iget v3, v3, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3828
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/temporal/WeekFields;->weekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x0

    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    invoke-direct/range {v4 .. v9}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/AbstractChronoLocalDate;)V

    move-object v2, v3

    goto :goto_0

    .line 3830
    :cond_0
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/temporal/WeekFields;->weekBasedYear()Ljava/time/temporal/TemporalField;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/16 v7, 0x13

    move-object v8, v0

    iget v8, v8, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_1

    sget-object v8, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    :goto_1
    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;ILjava/time/format/DateTimeFormatterBuilder$1;)V

    move-object v2, v3

    goto/16 :goto_0

    :cond_1
    sget-object v8, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    goto :goto_1

    .line 3813
    nop

    :sswitch_data_0
    .sparse-switch
        0x57 -> :sswitch_3
        0x59 -> :sswitch_4
        0x63 -> :sswitch_1
        0x65 -> :sswitch_0
        0x77 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 10

    .prologue
    .line 3806
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move v3, p3

    .local v3, "position":I
    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;

    move-result-object v6

    move-object v4, v6

    .line 3807
    .local v4, "weekFields":Ljava/time/temporal/WeekFields;
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->evaluate(Ljava/time/temporal/WeekFields;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v6

    move-object v5, v6

    .line 3808
    .local v5, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-interface {v6, v7, v8, v9}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v6

    move v0, v6

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
    return v0
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 8

    .prologue
    .line 3799
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/time/temporal/WeekFields;->of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;

    move-result-object v5

    move-object v3, v5

    .line 3800
    .local v3, "weekFields":Ljava/time/temporal/WeekFields;
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->evaluate(Ljava/time/temporal/WeekFields;)Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-result-object v5

    move-object v4, v5

    .line 3801
    .local v4, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3840
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 3841
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string v3, "Localized("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3842
    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    const/16 v3, 0x59

    if-ne v2, v3, :cond_3

    .line 3843
    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3844
    move-object v2, v1

    const-string v3, "WeekBasedYear"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3863
    :goto_0
    move-object v2, v1

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3864
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
    return-object v0

    .line 3845
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3846
    move-object v2, v1

    const-string v3, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    .line 3848
    :cond_1
    move-object v2, v1

    const-string v3, "WeekBasedYear,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x13

    .line 3849
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    sget-object v3, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    .line 3850
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    .line 3849
    :cond_2
    sget-object v3, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    goto :goto_1

    .line 3853
    :cond_3
    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    const/16 v3, 0x63

    if-eq v2, v3, :cond_4

    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    const/16 v3, 0x65

    if-ne v2, v3, :cond_6

    .line 3854
    :cond_4
    move-object v2, v1

    const-string v3, "DayOfWeek"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3860
    :cond_5
    :goto_2
    move-object v2, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3861
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    .line 3855
    :cond_6
    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    const/16 v3, 0x77

    if-ne v2, v3, :cond_7

    .line 3856
    move-object v2, v1

    const-string v3, "WeekOfWeekBasedYear"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_2

    .line 3857
    :cond_7
    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DateTimeFormatterBuilder$WeekFieldsPrinterParser;->letter:C

    const/16 v3, 0x57

    if-ne v2, v3, :cond_5

    .line 3858
    move-object v2, v1

    const-string v3, "WeekOfMonth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_2
.end method
