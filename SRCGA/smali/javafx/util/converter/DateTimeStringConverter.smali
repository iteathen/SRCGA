.class public Ljavafx/util/converter/DateTimeStringConverter;
.super Ljavafx/util/StringConverter;
.source "DateTimeStringConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/util/StringConverter",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field protected final dateFormat:Ljava/text/DateFormat;

.field protected final dateStyle:I

.field protected final locale:Ljava/util/Locale;

.field protected final pattern:Ljava/lang/String;

.field protected final timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Ljavafx/util/converter/DateTimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(II)V
    .locals 9

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move v1, p1

    .local v1, "dateStyle":I
    move v2, p2

    .local v2, "timeStyle":I
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    invoke-direct/range {v3 .. v8}, Ljavafx/util/converter/DateTimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move-object v1, p1

    .local v1, "pattern":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-direct/range {v2 .. v7}, Ljavafx/util/converter/DateTimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;II)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/text/DateFormat;)V
    .locals 8

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move-object v1, p1

    .local v1, "dateFormat":Ljava/text/DateFormat;
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-direct/range {v2 .. v7}, Ljavafx/util/converter/DateTimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;II)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-direct/range {v2 .. v7}, Ljavafx/util/converter/DateTimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;II)V
    .locals 10

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move v2, p2

    .local v2, "dateStyle":I
    move v3, p3

    .local v3, "timeStyle":I
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v2

    move v9, v3

    invoke-direct/range {v4 .. v9}, Ljavafx/util/converter/DateTimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;II)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, p2

    .local v2, "pattern":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x2

    invoke-direct/range {v3 .. v8}, Ljavafx/util/converter/DateTimeStringConverter;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;II)V

    .line 131
    return-void
.end method

.method constructor <init>(Ljava/util/Locale;Ljava/lang/String;Ljava/text/DateFormat;II)V
    .locals 8

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, p2

    .local v2, "pattern":Ljava/lang/String;
    move-object v3, p3

    .local v3, "dateFormat":Ljava/text/DateFormat;
    move v4, p4

    .local v4, "dateStyle":I
    move v5, p5

    .local v5, "timeStyle":I
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/util/StringConverter;-><init>()V

    .line 146
    move-object v6, v0

    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v1

    :goto_0
    iput-object v7, v6, Ljavafx/util/converter/DateTimeStringConverter;->locale:Ljava/util/Locale;

    .line 147
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafx/util/converter/DateTimeStringConverter;->pattern:Ljava/lang/String;

    .line 148
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/util/converter/DateTimeStringConverter;->dateFormat:Ljava/text/DateFormat;

    .line 149
    move-object v6, v0

    move v7, v4

    iput v7, v6, Ljavafx/util/converter/DateTimeStringConverter;->dateStyle:I

    .line 150
    move-object v6, v0

    move v7, v5

    iput v7, v6, Ljavafx/util/converter/DateTimeStringConverter;->timeStyle:I

    .line 151
    return-void

    .line 146
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/util/converter/DateTimeStringConverter;->fromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/converter/DateTimeStringConverter;
    return-object v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/util/Date;
    .locals 7

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 161
    const/4 v3, 0x0

    move-object v0, v3

    .line 174
    .end local v0    # "this":Ljavafx/util/converter/DateTimeStringConverter;
    :goto_0
    return-object v0

    .line 164
    .restart local v0    # "this":Ljavafx/util/converter/DateTimeStringConverter;
    :cond_0
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 166
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 167
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 171
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/util/converter/DateTimeStringConverter;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v3

    move-object v2, v3

    .line 174
    .local v2, "parser":Ljava/text/DateFormat;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 175
    .end local v2    # "parser":Ljava/text/DateFormat;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 176
    .local v2, "ex":Ljava/text/ParseException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected getDateFormat()Ljava/text/DateFormat;
    .locals 7

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    const/4 v2, 0x0

    move-object v1, v2

    .line 203
    .local v1, "df":Ljava/text/DateFormat;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/DateTimeStringConverter;->dateFormat:Ljava/text/DateFormat;

    if-eqz v2, :cond_0

    .line 204
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/DateTimeStringConverter;->dateFormat:Ljava/text/DateFormat;

    move-object v0, v2

    .line 213
    .end local v0    # "this":Ljavafx/util/converter/DateTimeStringConverter;
    :goto_0
    return-object v0

    .line 205
    .restart local v0    # "this":Ljavafx/util/converter/DateTimeStringConverter;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/util/converter/DateTimeStringConverter;->pattern:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 206
    new-instance v2, Ljava/text/SimpleDateFormat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/util/converter/DateTimeStringConverter;->pattern:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/util/converter/DateTimeStringConverter;->locale:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v1, v2

    .line 211
    :goto_1
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 213
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 208
    :cond_1
    move-object v2, v0

    iget v2, v2, Ljavafx/util/converter/DateTimeStringConverter;->dateStyle:I

    move-object v3, v0

    iget v3, v3, Ljavafx/util/converter/DateTimeStringConverter;->timeStyle:I

    move-object v4, v0

    iget-object v4, v4, Ljavafx/util/converter/DateTimeStringConverter;->locale:Ljava/util/Locale;

    invoke-static {v2, v3, v4}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    move-object v1, v2

    goto :goto_1
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljavafx/util/converter/DateTimeStringConverter;->toString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/util/converter/DateTimeStringConverter;
    return-object v0
.end method

.method public toString(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/DateTimeStringConverter;
    move-object v1, p1

    .local v1, "value":Ljava/util/Date;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 184
    const-string v3, ""

    move-object v0, v3

    .line 191
    .end local v0    # "this":Ljavafx/util/converter/DateTimeStringConverter;
    :goto_0
    return-object v0

    .line 188
    .restart local v0    # "this":Ljavafx/util/converter/DateTimeStringConverter;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/util/converter/DateTimeStringConverter;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v3

    move-object v2, v3

    .line 191
    .local v2, "formatter":Ljava/text/DateFormat;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
