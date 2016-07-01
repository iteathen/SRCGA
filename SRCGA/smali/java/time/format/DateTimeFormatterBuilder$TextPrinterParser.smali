.class final Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
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
    name = "TextPrinterParser"
.end annotation


# instance fields
.field private final field:Ljava/time/temporal/TemporalField;

.field private volatile numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

.field private final provider:Ljava/time/format/DateTimeTextProvider;

.field private final textStyle:Ljava/time/format/TextStyle;


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V
    .locals 6

    .prologue
    .line 2853
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, p2

    .local v2, "textStyle":Ljava/time/format/TextStyle;
    move-object v3, p3

    .local v3, "provider":Ljava/time/format/DateTimeTextProvider;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 2855
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2856
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 2857
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    .line 2858
    return-void
.end method

.method private numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 9

    .prologue
    .line 2902
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    if-nez v1, :cond_0

    .line 2903
    move-object v1, v0

    new-instance v2, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    iget-object v4, v4, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    const/4 v5, 0x1

    const/16 v6, 0x13

    sget-object v7, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    iput-object v2, v1, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 2905
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser:Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    return-object v0
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 18

    .prologue
    .line 2876
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    move-object/from16 v2, p1

    .local v2, "context":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v3, p2

    .local v3, "parseText":Ljava/lang/CharSequence;
    move/from16 v4, p3

    .local v4, "position":I
    move-object v10, v3

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move v5, v10

    .line 2877
    .local v5, "length":I
    move v10, v4

    if-ltz v10, :cond_0

    move v10, v4

    move v11, v5

    if-le v10, v11, :cond_1

    .line 2878
    :cond_0
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v10

    .line 2880
    :cond_1
    move-object v10, v2

    invoke-virtual {v10}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v1

    iget-object v10, v10, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    :goto_0
    move-object v6, v10

    .line 2881
    .local v6, "style":Ljava/time/format/TextStyle;
    move-object v10, v1

    iget-object v10, v10, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    move-object v11, v1

    iget-object v11, v11, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object v12, v6

    move-object v13, v2

    invoke-virtual {v13}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v10

    move-object v7, v10

    .line 2882
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object v10, v7

    if-eqz v10, :cond_5

    .line 2883
    :goto_1
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2884
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    move-object v8, v10

    .line 2885
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v9, v10

    .line 2886
    .local v9, "itText":Ljava/lang/String;
    move-object v10, v2

    move-object v11, v9

    const/4 v12, 0x0

    move-object v13, v3

    move v14, v4

    move-object v15, v9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual/range {v10 .. v15}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2887
    move-object v10, v2

    move-object v11, v1

    iget-object v11, v11, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move v14, v4

    move v15, v4

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {v10 .. v15}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v10

    move v1, v10

    .line 2894
    .end local v1    # "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "itText":Ljava/lang/String;
    :goto_2
    return v1

    .line 2880
    .end local v6    # "style":Ljava/time/format/TextStyle;
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v1    # "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 2889
    .restart local v6    # "style":Ljava/time/format/TextStyle;
    .restart local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v9    # "itText":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 2890
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v9    # "itText":Ljava/lang/String;
    :cond_4
    move-object v10, v2

    invoke-virtual {v10}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2891
    move v10, v4

    const/4 v11, -0x1

    xor-int/lit8 v10, v10, -0x1

    move v1, v10

    goto :goto_2

    .line 2894
    :cond_5
    move-object v10, v1

    invoke-direct {v10}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v10

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    invoke-virtual {v10, v11, v12, v13}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v10

    move v1, v10

    goto :goto_2
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 12

    .prologue
    .line 2862
    move-object v1, p0

    .local v1, "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    move-object v2, p1

    .local v2, "context":Ljava/time/format/DateTimePrintContext;
    move-object v3, p2

    .local v3, "buf":Ljava/lang/StringBuilder;
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v6, v7}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v6

    move-object v4, v6

    .line 2863
    .local v4, "value":Ljava/lang/Long;
    move-object v6, v4

    if-nez v6, :cond_0

    .line 2864
    const/4 v6, 0x0

    move v1, v6

    .line 2871
    .end local v1    # "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    :goto_0
    return v1

    .line 2866
    .restart local v1    # "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->provider:Ljava/time/format/DateTimeTextProvider;

    move-object v7, v1

    iget-object v7, v7, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v10, v1

    iget-object v10, v10, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    move-object v11, v2

    invoke-virtual {v11}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 2867
    .local v5, "text":Ljava/lang/String;
    move-object v6, v5

    if-nez v6, :cond_1

    .line 2868
    move-object v6, v1

    invoke-direct {v6}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->numberPrinterParser()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v6

    move v1, v6

    goto :goto_0

    .line 2870
    :cond_1
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2871
    const/4 v6, 0x1

    move v1, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2910
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    sget-object v2, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-ne v1, v2, :cond_0

    .line 2911
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2913
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
