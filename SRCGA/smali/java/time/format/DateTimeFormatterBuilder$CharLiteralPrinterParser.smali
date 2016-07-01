.class final Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
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
    name = "CharLiteralPrinterParser"
.end annotation


# instance fields
.field private final literal:C


# direct methods
.method constructor <init>(C)V
    .locals 4

    .prologue
    .line 2206
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
    move v1, p1

    .local v1, "literal":C
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2207
    move-object v2, v0

    move v3, v1

    iput-char v3, v2, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    .line 2208
    return-void
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 9

    .prologue
    .line 2218
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move v3, p3

    .local v3, "position":I
    move-object v6, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v4, v6

    .line 2219
    .local v4, "length":I
    move v6, v3

    move v7, v4

    if-ne v6, v7, :cond_0

    .line 2220
    move v6, v3

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    move v0, v6

    .line 2226
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
    :goto_0
    return v0

    .line 2222
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
    :cond_0
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v5, v6

    .line 2223
    .local v5, "ch":C
    move-object v6, v1

    move-object v7, v0

    iget-char v7, v7, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    move v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2224
    move v6, v3

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    move v0, v6

    goto :goto_0

    .line 2226
    :cond_1
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 5

    .prologue
    .line 2212
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v3, v2

    move-object v4, v0

    iget-char v4, v4, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2213
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2231
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
    move-object v1, v0

    iget-char v1, v1, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    .line 2232
    const-string v1, "\'\'"

    move-object v0, v1

    .line 2234
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-char v2, v2, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
