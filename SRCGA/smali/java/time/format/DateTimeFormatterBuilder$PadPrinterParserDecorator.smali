.class final Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
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
    name = "PadPrinterParserDecorator"
.end annotation


# instance fields
.field private final padChar:C

.field private final padWidth:I

.field private final printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V
    .locals 6

    .prologue
    .line 2072
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
    move-object v1, p1

    .local v1, "printerParser":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move v2, p2

    .local v2, "padWidth":I
    move v3, p3

    .local v3, "padChar":C
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 2074
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2075
    move-object v4, v0

    move v5, v2

    iput v5, v4, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    .line 2076
    move-object v4, v0

    move v5, v3

    iput-char v5, v4, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    .line 2077
    return-void
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 14

    .prologue
    .line 2099
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move/from16 v3, p3

    .local v3, "position":I
    move-object v9, v1

    invoke-virtual {v9}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v9

    move v4, v9

    .line 2100
    .local v4, "strict":Z
    move-object v9, v1

    invoke-virtual {v9}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v9

    move v5, v9

    .line 2102
    .local v5, "caseSensitive":Z
    move v9, v3

    move-object v10, v2

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v9, v10, :cond_0

    .line 2103
    new-instance v9, Ljava/lang/IndexOutOfBoundsException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v9

    .line 2105
    :cond_0
    move v9, v3

    move-object v10, v2

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 2106
    move v9, v3

    const/4 v10, -0x1

    xor-int/lit8 v9, v9, -0x1

    move v0, v9

    .line 2125
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
    :goto_0
    return v0

    .line 2108
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
    :cond_1
    move v9, v3

    move-object v10, v0

    iget v10, v10, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    add-int/2addr v9, v10

    move v6, v9

    .line 2109
    .local v6, "endPos":I
    move v9, v6

    move-object v10, v2

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-le v9, v10, :cond_3

    .line 2110
    move v9, v4

    if-eqz v9, :cond_2

    .line 2111
    move v9, v3

    const/4 v10, -0x1

    xor-int/lit8 v9, v9, -0x1

    move v0, v9

    goto :goto_0

    .line 2113
    :cond_2
    move-object v9, v2

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move v6, v9

    .line 2115
    :cond_3
    move v9, v3

    move v7, v9

    .line 2116
    .local v7, "pos":I
    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_6

    move v9, v5

    if-eqz v9, :cond_5

    move-object v9, v2

    move v10, v7

    .line 2117
    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move-object v10, v0

    iget-char v10, v10, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    if-ne v9, v10, :cond_6

    .line 2118
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2117
    :cond_5
    move-object v9, v1

    move-object v10, v2

    move v11, v7

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    move-object v11, v0

    iget-char v11, v11, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {v9, v10, v11}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2120
    :cond_6
    move-object v9, v2

    const/4 v10, 0x0

    move v11, v6

    invoke-interface {v9, v10, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v2, v9

    .line 2121
    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-object v10, v1

    move-object v11, v2

    move v12, v7

    invoke-interface {v9, v10, v11, v12}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v9

    move v8, v9

    .line 2122
    .local v8, "resultPos":I
    move v9, v8

    move v10, v6

    if-eq v9, v10, :cond_7

    move v9, v4

    if-eqz v9, :cond_7

    .line 2123
    move v9, v3

    move v10, v7

    add-int/2addr v9, v10

    const/4 v10, -0x1

    xor-int/lit8 v9, v9, -0x1

    move v0, v9

    goto :goto_0

    .line 2125
    :cond_7
    move v9, v8

    move v0, v9

    goto :goto_0
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 11

    .prologue
    .line 2081
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move v3, v6

    .line 2082
    .local v3, "preLen":I
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-object v7, v1

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2083
    const/4 v6, 0x0

    move v0, v6

    .line 2093
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
    :goto_0
    return v0

    .line 2085
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move v7, v3

    sub-int/2addr v6, v7

    move v4, v6

    .line 2086
    .local v4, "len":I
    move v6, v4

    move-object v7, v0

    iget v7, v7, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    if-le v6, v7, :cond_1

    .line 2087
    new-instance v6, Ljava/time/DateTimeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot print as output of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " characters exceeds pad width of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2090
    :cond_1
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move-object v7, v0

    iget v7, v7, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    move v8, v4

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    .line 2091
    move-object v6, v2

    move v7, v3

    move-object v8, v0

    iget-char v8, v8, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2090
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2093
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2130
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pad("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const-string v2, ")"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-char v3, v3, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
