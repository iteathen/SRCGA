.class final Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
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
    name = "CompositePrinterParser"
.end annotation


# instance fields
.field private final optional:Z

.field private final printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1975
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    move-object v1, p1

    .local v1, "printerParsers":Ljava/util/List;, "Ljava/util/List<Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;>;"
    move v2, p2

    .local v2, "optional":Z
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    .line 1976
    return-void
.end method

.method constructor <init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V
    .locals 5

    .prologue
    .line 1978
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    move-object v1, p1

    .local v1, "printerParsers":[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move v2, p2

    .local v2, "optional":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1979
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 1980
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    .line 1981
    return-void
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 13

    .prologue
    .line 2019
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move/from16 v3, p3

    .local v3, "position":I
    move-object v9, v0

    iget-boolean v9, v9, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v9, :cond_2

    .line 2020
    move-object v9, v1

    invoke-virtual {v9}, Ljava/time/format/DateTimeParseContext;->startOptional()V

    .line 2021
    move v9, v3

    move v4, v9

    .line 2022
    .local v4, "pos":I
    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_1

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 2023
    .local v8, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move-object v9, v8

    move-object v10, v1

    move-object v11, v2

    move v12, v4

    invoke-interface {v9, v10, v11, v12}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v9

    move v4, v9

    .line 2024
    move v9, v4

    if-gez v9, :cond_0

    .line 2025
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/time/format/DateTimeParseContext;->endOptional(Z)V

    .line 2026
    move v9, v3

    move v0, v9

    .line 2038
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .end local v4    # "pos":I
    .end local v8    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :goto_1
    return v0

    .line 2022
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .restart local v4    # "pos":I
    .restart local v8    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2029
    .end local v8    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_1
    move-object v9, v1

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/time/format/DateTimeParseContext;->endOptional(Z)V

    .line 2030
    move v9, v4

    move v0, v9

    goto :goto_1

    .line 2032
    .end local v4    # "pos":I
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-object v4, v9

    move-object v9, v4

    array-length v9, v9

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_3

    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 2033
    .local v7, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move-object v9, v7

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    invoke-interface {v9, v10, v11, v12}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v9

    move v3, v9

    .line 2034
    move v9, v3

    if-gez v9, :cond_4

    .line 2035
    .line 2038
    .end local v7    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_3
    move v9, v3

    move v0, v9

    goto :goto_1

    .line 2032
    .restart local v7    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 13

    .prologue
    .line 1998
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    move v3, v10

    .line 1999
    .local v3, "length":I
    move-object v10, v0

    iget-boolean v10, v10, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v10, :cond_0

    .line 2000
    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/format/DateTimePrintContext;->startOptional()V

    .line 2003
    :cond_0
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-object v4, v10

    move-object v10, v4

    array-length v10, v10

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_3

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 2004
    .local v7, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    invoke-interface {v10, v11, v12}, Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2005
    move-object v10, v2

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2006
    const/4 v10, 0x1

    move v8, v10

    .line 2010
    move-object v10, v0

    iget-boolean v10, v10, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v10, :cond_1

    .line 2011
    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    :cond_1
    move v10, v8

    move v0, v10

    .line 2014
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .end local v7    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :goto_1
    return v0

    .line 2003
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .restart local v7    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2010
    .end local v7    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_3
    move-object v10, v0

    iget-boolean v10, v10, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v10, :cond_4

    .line 2011
    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    .line 2014
    :cond_4
    const/4 v10, 0x1

    move v0, v10

    goto :goto_1

    .line 2010
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v0

    iget-boolean v10, v10, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v10, :cond_5

    .line 2011
    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/format/DateTimePrintContext;->endOptional()V

    :cond_5
    move-object v10, v9

    throw v10
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 2044
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 2045
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    if-eqz v6, :cond_2

    .line 2046
    move-object v6, v1

    move-object v7, v0

    iget-boolean v7, v7, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v7, :cond_0

    const-string v7, "["

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2047
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 2048
    .local v5, "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2047
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2046
    .end local v5    # "pp":Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;
    :cond_0
    const-string v7, "("

    goto :goto_0

    .line 2050
    :cond_1
    move-object v6, v1

    move-object v7, v0

    iget-boolean v7, v7, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v7, :cond_3

    const-string v7, "]"

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2052
    :cond_2
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    return-object v0

    .line 2050
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    :cond_3
    const-string v7, ")"

    goto :goto_2
.end method

.method public withOptional(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .locals 7

    .prologue
    .line 1990
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    move v1, p1

    .local v1, "optional":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-ne v2, v3, :cond_0

    .line 1991
    move-object v2, v0

    move-object v0, v2

    .line 1993
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    :cond_0
    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    move-object v0, v2

    goto :goto_0
.end method
