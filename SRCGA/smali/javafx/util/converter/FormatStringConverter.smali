.class public Ljavafx/util/converter/FormatStringConverter;
.super Ljavafx/util/StringConverter;
.source "FormatStringConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/util/StringConverter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final format:Ljava/text/Format;


# direct methods
.method public constructor <init>(Ljava/text/Format;)V
    .locals 4
    .param p1    # Ljava/text/Format;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "format"
        .end annotation
    .end param

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/FormatStringConverter;, "Ljavafx/util/converter/FormatStringConverter<TT;>;"
    move-object v1, p1

    .local v1, "format":Ljava/text/Format;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/util/StringConverter;-><init>()V

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/util/converter/FormatStringConverter;->format:Ljava/text/Format;

    .line 48
    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/FormatStringConverter;, "Ljavafx/util/converter/FormatStringConverter<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 56
    const/4 v5, 0x0

    move-object v0, v5

    .line 75
    .end local v0    # "this":Ljavafx/util/converter/FormatStringConverter;, "Ljavafx/util/converter/FormatStringConverter<TT;>;"
    :goto_0
    return-object v0

    .line 59
    .restart local v0    # "this":Ljavafx/util/converter/FormatStringConverter;, "Ljavafx/util/converter/FormatStringConverter<TT;>;"
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 61
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 62
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 66
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/util/converter/FormatStringConverter;->getFormat()Ljava/text/Format;

    move-result-object v5

    move-object v2, v5

    .line 70
    .local v2, "_format":Ljava/text/Format;
    new-instance v5, Ljava/text/ParsePosition;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v3, v5

    .line 71
    .local v3, "pos":Ljava/text/ParsePosition;
    move-object v5, v2

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 72
    .local v4, "result":Ljava/lang/Object;, "TT;"
    move-object v5, v3

    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 73
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Parsed string not according to the format"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 75
    :cond_2
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method protected getFormat()Ljava/text/Format;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/FormatStringConverter;, "Ljavafx/util/converter/FormatStringConverter<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/util/converter/FormatStringConverter;->format:Ljava/text/Format;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/util/converter/FormatStringConverter;, "Ljavafx/util/converter/FormatStringConverter<TT;>;"
    return-object v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/util/converter/FormatStringConverter;, "Ljavafx/util/converter/FormatStringConverter<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v3, v1

    if-nez v3, :cond_0

    .line 82
    const-string v3, ""

    move-object v0, v3

    .line 89
    .end local v0    # "this":Ljavafx/util/converter/FormatStringConverter;, "Ljavafx/util/converter/FormatStringConverter<TT;>;"
    :goto_0
    return-object v0

    .line 86
    .restart local v0    # "this":Ljavafx/util/converter/FormatStringConverter;, "Ljavafx/util/converter/FormatStringConverter<TT;>;"
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/util/converter/FormatStringConverter;->getFormat()Ljava/text/Format;

    move-result-object v3

    move-object v2, v3

    .line 89
    .local v2, "_format":Ljava/text/Format;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method
