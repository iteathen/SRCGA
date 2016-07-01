.class public final Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;
.super Ljava/io/Writer;
.source "UTF8OutputStreamWriter.java"


# instance fields
.field lastUTF16CodePoint:I

.field out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;
    move-object v1, p1

    .local v1, "out":Ljava/io/OutputStream;
    move-object v2, v0

    invoke-direct {v2}, Ljava/io/Writer;-><init>()V

    .line 78
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    .line 81
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    .line 82
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Attempting to close a UTF8OutputStreamWriter while awaiting for a UTF-16 code unit"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 165
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 157
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;
    const-string v1, "UTF-8"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;
    return-object v0
.end method

.method public write(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;
    move v1, p1

    .local v1, "c":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    if-eqz v3, :cond_2

    .line 91
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    const/16 v4, 0x3ff

    and-int/lit16 v3, v3, 0x3ff

    const/16 v4, 0xa

    shl-int/lit8 v3, v3, 0xa

    move v4, v1

    const/16 v5, 0x3ff

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    const/high16 v4, 0x10000

    add-int/2addr v3, v4

    move v2, v3

    .line 94
    .local v2, "uc":I
    move v3, v2

    if-ltz v3, :cond_0

    move v3, v2

    const/high16 v4, 0x200000

    if-lt v3, v4, :cond_1

    .line 95
    :cond_0
    new-instance v3, Ljava/io/IOException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Atttempting to write invalid Unicode code point \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    const/16 v4, 0xf0

    move v5, v2

    const/16 v6, 0x12

    shr-int/lit8 v5, v5, 0x12

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 99
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    const/16 v4, 0x80

    move v5, v2

    const/16 v6, 0xc

    shr-int/lit8 v5, v5, 0xc

    const/16 v6, 0x3f

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 100
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    const/16 v4, 0x80

    move v5, v2

    const/4 v6, 0x6

    shr-int/lit8 v5, v5, 0x6

    const/16 v6, 0x3f

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 101
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    const/16 v4, 0x80

    move v5, v2

    const/16 v6, 0x3f

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 103
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    .line 104
    .line 128
    .end local v2    # "uc":I
    :goto_0
    return-void

    .line 108
    :cond_2
    move v3, v1

    const/16 v4, 0x80

    if-ge v3, v4, :cond_4

    .line 110
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 128
    :cond_3
    :goto_1
    goto :goto_0

    .line 112
    :cond_4
    move v3, v1

    const/16 v4, 0x800

    if-ge v3, v4, :cond_5

    .line 114
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    const/16 v4, 0xc0

    move v5, v1

    const/4 v6, 0x6

    shr-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 115
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    const/16 v4, 0x80

    move v5, v1

    const/16 v6, 0x3f

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 117
    :cond_5
    move v3, v1

    const v4, 0xffff

    if-gt v3, v4, :cond_3

    .line 118
    move v3, v1

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 120
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    const/16 v4, 0xe0

    move v5, v1

    const/16 v6, 0xc

    shr-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 121
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    const/16 v4, 0x80

    move v5, v1

    const/4 v6, 0x6

    shr-int/lit8 v5, v5, 0x6

    const/16 v6, 0x3f

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 122
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->out:Ljava/io/OutputStream;

    const/16 v4, 0x80

    move v5, v1

    const/16 v6, 0x3f

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 125
    :cond_6
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->lastUTF16CodePoint:I

    goto :goto_1
.end method

.method public write(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    .line 144
    .local v2, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 145
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->write(I)V

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 151
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v4

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->write(I)V

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public write([C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;
    move-object v1, p1

    .local v1, "cbuf":[C
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 132
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->write(I)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;
    move-object v1, p1

    .local v1, "cbuf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 138
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v4

    add-int/2addr v7, v8

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/writers/UTF8OutputStreamWriter;->write(I)V

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method
