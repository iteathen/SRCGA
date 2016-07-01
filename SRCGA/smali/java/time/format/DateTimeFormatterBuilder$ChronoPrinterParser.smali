.class final Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
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
    name = "ChronoPrinterParser"
.end annotation


# instance fields
.field private final textStyle:Ljava/time/format/TextStyle;


# direct methods
.method constructor <init>(Ljava/time/format/TextStyle;)V
    .locals 4

    .prologue
    .line 3682
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
    move-object v1, p1

    .local v1, "textStyle":Ljava/time/format/TextStyle;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3684
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 3685
    return-void
.end method


# virtual methods
.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 18

    .prologue
    .line 3711
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
    move-object/from16 v1, p1

    .local v1, "context":Ljava/time/format/DateTimeParseContext;
    move-object/from16 v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move/from16 v3, p3

    .local v3, "position":I
    move v11, v3

    if-ltz v11, :cond_0

    move v11, v3

    move-object v12, v2

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-le v11, v12, :cond_1

    .line 3712
    :cond_0
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v11

    .line 3714
    :cond_1
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v11

    move-object v4, v11

    .line 3715
    .local v4, "chronos":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/chrono/AbstractChronology;>;"
    const/4 v11, 0x0

    move-object v5, v11

    .line 3716
    .local v5, "bestMatch":Ljava/time/chrono/AbstractChronology;
    const/4 v11, -0x1

    move v6, v11

    .line 3717
    .local v6, "matchLen":I
    move-object v11, v4

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v7, v11

    :goto_0
    move-object v11, v7

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/time/chrono/AbstractChronology;

    move-object v8, v11

    .line 3718
    .local v8, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v11, v8

    invoke-virtual {v11}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 3719
    .local v9, "id":Ljava/lang/String;
    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v10, v11

    .line 3720
    .local v10, "idLen":I
    move v11, v10

    move v12, v6

    if-le v11, v12, :cond_2

    move-object v11, v1

    move-object v12, v2

    move v13, v3

    move-object v14, v9

    const/4 v15, 0x0

    move/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3721
    move-object v11, v8

    move-object v5, v11

    .line 3722
    move v11, v10

    move v6, v11

    .line 3724
    :cond_2
    goto :goto_0

    .line 3725
    .end local v8    # "chrono":Ljava/time/chrono/AbstractChronology;
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "idLen":I
    :cond_3
    move-object v11, v5

    if-nez v11, :cond_4

    .line 3726
    move v11, v3

    const/4 v12, -0x1

    xor-int/lit8 v11, v11, -0x1

    move v0, v11

    .line 3729
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
    :goto_1
    return v0

    .line 3728
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
    :cond_4
    move-object v11, v1

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/chrono/AbstractChronology;)V

    .line 3729
    move v11, v3

    move v12, v6

    add-int/2addr v11, v12

    move v0, v11

    goto :goto_1
.end method

.method public print(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 9

    .prologue
    .line 3689
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
    move-object v1, p1

    .local v1, "context":Ljava/time/format/DateTimePrintContext;
    move-object v2, p2

    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v6, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/time/chrono/AbstractChronology;

    move-object v3, v6

    .line 3690
    .local v3, "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 3691
    const/4 v6, 0x0

    move v0, v6

    .line 3705
    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
    :goto_0
    return v0

    .line 3693
    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    if-nez v6, :cond_1

    .line 3694
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3705
    :goto_1
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    .line 3696
    :cond_1
    const-string v6, "org.threeten.bp.format.ChronologyText"

    move-object v7, v1

    .line 3697
    invoke-virtual {v7}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-class v8, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 3696
    invoke-static {v6, v7, v8}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v6

    move-object v4, v6

    .line 3699
    .local v4, "bundle":Ljava/util/ResourceBundle;
    move-object v6, v4

    move-object v7, v3

    :try_start_0
    invoke-virtual {v7}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 3700
    .local v5, "text":Ljava/lang/String;
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3703
    goto :goto_1

    .line 3701
    .end local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 3702
    .local v5, "ex":Ljava/util/MissingResourceException;
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1
.end method
