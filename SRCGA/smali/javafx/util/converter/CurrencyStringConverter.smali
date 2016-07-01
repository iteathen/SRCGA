.class public Ljavafx/util/converter/CurrencyStringConverter;
.super Ljavafx/util/converter/NumberStringConverter;
.source "CurrencyStringConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/CurrencyStringConverter;
    move-object v1, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/util/converter/CurrencyStringConverter;-><init>(Ljava/util/Locale;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/CurrencyStringConverter;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object v2, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljavafx/util/converter/CurrencyStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/CurrencyStringConverter;
    move-object v1, p1

    .local v1, "numberFormat":Ljava/text/NumberFormat;
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Ljavafx/util/converter/NumberStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/CurrencyStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/util/converter/CurrencyStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/CurrencyStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, p2

    .local v2, "pattern":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/util/converter/NumberStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected getNumberFormat()Ljava/text/NumberFormat;
    .locals 8

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/CurrencyStringConverter;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/CurrencyStringConverter;->locale:Ljava/util/Locale;

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    :goto_0
    move-object v1, v3

    .line 73
    .local v1, "_locale":Ljava/util/Locale;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/CurrencyStringConverter;->numberFormat:Ljava/text/NumberFormat;

    if-eqz v3, :cond_1

    .line 74
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/CurrencyStringConverter;->numberFormat:Ljava/text/NumberFormat;

    move-object v0, v3

    .line 79
    .end local v0    # "this":Ljavafx/util/converter/CurrencyStringConverter;
    :goto_1
    return-object v0

    .line 71
    .end local v1    # "_locale":Ljava/util/Locale;
    .restart local v0    # "this":Ljavafx/util/converter/CurrencyStringConverter;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/CurrencyStringConverter;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 75
    .restart local v1    # "_locale":Ljava/util/Locale;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/CurrencyStringConverter;->pattern:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 76
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    move-object v2, v3

    .line 77
    .local v2, "symbols":Ljava/text/DecimalFormatSymbols;
    new-instance v3, Ljava/text/DecimalFormat;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Ljavafx/util/converter/CurrencyStringConverter;->pattern:Ljava/lang/String;

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    move-object v0, v3

    goto :goto_1

    .line 79
    .end local v2    # "symbols":Ljava/text/DecimalFormatSymbols;
    :cond_2
    move-object v3, v1

    invoke-static {v3}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method
