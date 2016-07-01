.class public Ljavafx/util/converter/NumberStringConverter;
.super Ljavafx/util/StringConverter;
.source "NumberStringConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/util/StringConverter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final locale:Ljava/util/Locale;

.field final numberFormat:Ljava/text/NumberFormat;

.field final pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/NumberStringConverter;
    move-object v1, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/util/converter/NumberStringConverter;-><init>(Ljava/util/Locale;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/NumberStringConverter;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object v2, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljavafx/util/converter/NumberStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/NumberStringConverter;
    move-object v1, p1

    .local v1, "numberFormat":Ljava/text/NumberFormat;
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Ljavafx/util/converter/NumberStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/NumberStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/util/converter/NumberStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/NumberStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, p2

    .local v2, "pattern":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/util/converter/NumberStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/NumberFormat;)V
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/NumberStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, p2

    .local v2, "pattern":Ljava/lang/String;
    move-object v3, p3

    .local v3, "numberFormat":Ljava/text/NumberFormat;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/util/StringConverter;-><init>()V

    .line 69
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/util/converter/NumberStringConverter;->locale:Ljava/util/Locale;

    .line 70
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/util/converter/NumberStringConverter;->pattern:Ljava/lang/String;

    .line 71
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/util/converter/NumberStringConverter;->numberFormat:Ljava/text/NumberFormat;

    .line 72
    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Number;
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/NumberStringConverter;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 81
    const/4 v3, 0x0

    move-object v0, v3

    .line 94
    .end local v0    # "this":Ljavafx/util/converter/NumberStringConverter;
    :goto_0
    return-object v0

    .line 84
    .restart local v0    # "this":Ljavafx/util/converter/NumberStringConverter;
    :cond_0
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 86
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 87
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 91
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/util/converter/NumberStringConverter;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v3

    move-object v2, v3

    .line 94
    .local v2, "parser":Ljava/text/NumberFormat;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 95
    .end local v2    # "parser":Ljava/text/NumberFormat;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 96
    .local v2, "ex":Ljava/text/ParseException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/NumberStringConverter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/converter/NumberStringConverter;->fromString(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/converter/NumberStringConverter;
    return-object v0
.end method

.method protected getNumberFormat()Ljava/text/NumberFormat;
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/NumberStringConverter;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/NumberStringConverter;->locale:Ljava/util/Locale;

    if-nez v3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    :goto_0
    move-object v1, v3

    .line 121
    .local v1, "_locale":Ljava/util/Locale;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/NumberStringConverter;->numberFormat:Ljava/text/NumberFormat;

    if-eqz v3, :cond_1

    .line 122
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/NumberStringConverter;->numberFormat:Ljava/text/NumberFormat;

    move-object v0, v3

    .line 127
    .end local v0    # "this":Ljavafx/util/converter/NumberStringConverter;
    :goto_1
    return-object v0

    .line 119
    .end local v1    # "_locale":Ljava/util/Locale;
    .restart local v0    # "this":Ljavafx/util/converter/NumberStringConverter;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/NumberStringConverter;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 123
    .restart local v1    # "_locale":Ljava/util/Locale;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/NumberStringConverter;->pattern:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 124
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    move-object v2, v3

    .line 125
    .local v2, "symbols":Ljava/text/DecimalFormatSymbols;
    new-instance v3, Ljava/text/DecimalFormat;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Ljavafx/util/converter/NumberStringConverter;->pattern:Ljava/lang/String;

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    move-object v0, v3

    goto :goto_1

    .line 127
    .end local v2    # "symbols":Ljava/text/DecimalFormatSymbols;
    :cond_2
    move-object v3, v1

    invoke-static {v3}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method public toString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/NumberStringConverter;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Number;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 104
    const-string v3, ""

    move-object v0, v3

    .line 111
    .end local v0    # "this":Ljavafx/util/converter/NumberStringConverter;
    :goto_0
    return-object v0

    .line 108
    .restart local v0    # "this":Ljavafx/util/converter/NumberStringConverter;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/util/converter/NumberStringConverter;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v3

    move-object v2, v3

    .line 111
    .local v2, "formatter":Ljava/text/NumberFormat;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/NumberStringConverter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljavafx/util/converter/NumberStringConverter;->toString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/converter/NumberStringConverter;
    return-object v0
.end method
