.class public Ljavafx/util/converter/PercentageStringConverter;
.super Ljavafx/util/converter/NumberStringConverter;
.source "PercentageStringConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/PercentageStringConverter;
    move-object v1, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/util/converter/PercentageStringConverter;-><init>(Ljava/util/Locale;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/text/NumberFormat;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/PercentageStringConverter;
    move-object v1, p1

    .local v1, "numberFormat":Ljava/text/NumberFormat;
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Ljavafx/util/converter/NumberStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/PercentageStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljavafx/util/converter/NumberStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/NumberFormat;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/PercentageStringConverter;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/PercentageStringConverter;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 63
    .local v1, "_locale":Ljava/util/Locale;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/PercentageStringConverter;->numberFormat:Ljava/text/NumberFormat;

    if-eqz v2, :cond_1

    .line 64
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/PercentageStringConverter;->numberFormat:Ljava/text/NumberFormat;

    move-object v0, v2

    .line 66
    .end local v0    # "this":Ljavafx/util/converter/PercentageStringConverter;
    :goto_1
    return-object v0

    .line 61
    .end local v1    # "_locale":Ljava/util/Locale;
    .restart local v0    # "this":Ljavafx/util/converter/PercentageStringConverter;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/PercentageStringConverter;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 66
    .restart local v1    # "_locale":Ljava/util/Locale;
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    move-object v0, v2

    goto :goto_1
.end method
