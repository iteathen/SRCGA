.class public Ljavafx/util/converter/TimeStringConverter;
.super Ljavafx/util/converter/DateTimeStringConverter;
.source "TimeStringConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/TimeStringConverter;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/util/converter/TimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/TimeStringConverter;
    move v1, p1

    .local v1, "timeStyle":I
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Ljavafx/util/converter/TimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/TimeStringConverter;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Ljavafx/util/converter/TimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/text/DateFormat;)V
    .locals 7

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/TimeStringConverter;
    move-object v1, p1

    .local v1, "dateFormat":Ljava/text/DateFormat;
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Ljavafx/util/converter/TimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/TimeStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Ljavafx/util/converter/TimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 8

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/TimeStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move v2, p2

    .local v2, "timeStyle":I
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/util/converter/TimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/TimeStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, p2

    .local v2, "pattern":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/util/converter/TimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;I)V

    .line 110
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;I)V
    .locals 11

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/TimeStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, p2

    .local v2, "pattern":Ljava/lang/String;
    move-object v3, p3

    .local v3, "dateFormat":Ljava/text/DateFormat;
    move v4, p4

    .local v4, "timeStyle":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Ljavafx/util/converter/DateTimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;II)V

    .line 125
    return-void
.end method


# virtual methods
.method protected getDateFormat()Ljava/text/DateFormat;
    .locals 7

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/TimeStringConverter;
    const/4 v2, 0x0

    move-object v1, v2

    .line 134
    .local v1, "df":Ljava/text/DateFormat;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/TimeStringConverter;->dateFormat:Ljava/text/DateFormat;

    if-eqz v2, :cond_0

    .line 135
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/TimeStringConverter;->dateFormat:Ljava/text/DateFormat;

    move-object v0, v2

    .line 144
    .end local v0    # "this":Ljavafx/util/converter/TimeStringConverter;
    :goto_0
    return-object v0

    .line 136
    .restart local v0    # "this":Ljavafx/util/converter/TimeStringConverter;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/TimeStringConverter;->pattern:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 137
    new-instance v2, Ljava/text/SimpleDateFormat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/util/converter/TimeStringConverter;->pattern:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/util/converter/TimeStringConverter;->locale:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v1, v2

    .line 142
    :goto_1
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 144
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 139
    :cond_1
    move-object v2, v0

    iget v2, v2, Ljavafx/util/converter/TimeStringConverter;->timeStyle:I

    move-object v3, v0

    iget-object v3, v3, Ljavafx/util/converter/TimeStringConverter;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    move-object v1, v2

    goto :goto_1
.end method
