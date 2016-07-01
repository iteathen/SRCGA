.class final Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
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
    name = "StringLiteralPrinterParser"
.end annotation


# instance fields
.field private final literal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2245
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
    move-object v1, p1

    .local v1, "literal":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2246
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    .line 2247
    return-void
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 12

    .prologue
    .line 2257
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move v3, p3

    .local v3, "position":I
    move-object v5, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v4, v5

    .line 2258
    .local v4, "length":I
    move v5, v3

    move v6, v4

    if-gt v5, v6, :cond_0

    move v5, v3

    if-gez v5, :cond_1

    .line 2259
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2261
    :cond_1
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual/range {v5 .. v10}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2262
    move v5, v3

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v0, v5

    .line 2264
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
    :cond_2
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    move v0, v5

    goto :goto_0
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 5

    .prologue
    .line 2251
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2252
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2269
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2270
    .local v1, "converted":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
    return-object v0
.end method
