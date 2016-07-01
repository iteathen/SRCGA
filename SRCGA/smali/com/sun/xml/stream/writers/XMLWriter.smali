.class public Lcom/sun/xml/stream/writers/XMLWriter;
.super Ljava/io/Writer;
.source "XMLWriter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final THRESHHOLD_LENGTH:I = 0x1000


# instance fields
.field private buffer:Lorg/apache/xerces/util/XMLStringBuffer;

.field private size:I

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 5

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Lcom/sun/xml/stream/writers/XMLWriter;-><init>(Ljava/io/Writer;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 8

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move v2, p2

    .local v2, "size":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/io/Writer;-><init>()V

    .line 74
    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x3000

    invoke-direct {v5, v6}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLWriter;->buffer:Lorg/apache/xerces/util/XMLStringBuffer;

    .line 92
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 93
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/xml/stream/writers/XMLWriter;->size:I

    .line 94
    return-void
.end method

.method private conditionalWrite()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLWriter;->buffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v1, v1, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/writers/XMLWriter;->size:I

    if-le v1, v2, :cond_0

    .line 263
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/writers/XMLWriter;->writeBufferedData()V

    .line 265
    :cond_0
    return-void
.end method

.method private ensureOpen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_0
    return-void
.end method

.method private writeBufferedData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLWriter;->buffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v2, v2, Lorg/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLWriter;->buffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v3, v3, Lorg/apache/xerces/util/XMLStringBuffer;->offset:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLWriter;->buffer:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v4, v4, Lorg/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 272
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLWriter;->buffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 273
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/writers/XMLWriter;->flush()V

    .line 196
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 197
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 198
    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/writers/XMLWriter;->ensureOpen()V

    .line 213
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/writers/XMLWriter;->writeBufferedData()V

    .line 214
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 215
    return-void
.end method

.method protected getWriter()Ljava/io/Writer;
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLWriter;
    return-object v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 223
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLWriter;->buffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 224
    move-object v1, v0

    const/16 v2, 0x1000

    iput v2, v1, Lcom/sun/xml/stream/writers/XMLWriter;->size:I

    .line 225
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 234
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLWriter;->buffer:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    .line 235
    move-object v2, v0

    const/16 v3, 0x1000

    iput v3, v2, Lcom/sun/xml/stream/writers/XMLWriter;->size:I

    .line 236
    return-void
.end method

.method public setWriter(Ljava/io/Writer;I)V
    .locals 5

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move v2, p2

    .local v2, "size":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    .line 245
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/xml/stream/writers/XMLWriter;->size:I

    .line 246
    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move v1, p1

    .local v1, "c":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/writers/XMLWriter;->ensureOpen()V

    .line 110
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLWriter;->buffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    .line 111
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/writers/XMLWriter;->conditionalWrite()V

    .line 112
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/writers/XMLWriter;->size:I

    if-le v2, v3, :cond_0

    .line 176
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/writers/XMLWriter;->writeBufferedData()V

    .line 178
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLWriter;->buffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    .line 181
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/writers/XMLWriter;->conditionalWrite()V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/xml/stream/writers/XMLWriter;->write([CII)V

    .line 162
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
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, p1

    .local v1, "cbuf":[C
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/xml/stream/writers/XMLWriter;->write([CII)V

    .line 124
    return-void
.end method

.method public write([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLWriter;
    move-object v1, p1

    .local v1, "cbuf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/writers/XMLWriter;->ensureOpen()V

    .line 140
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/writers/XMLWriter;->size:I

    if-le v4, v5, :cond_0

    .line 142
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/writers/XMLWriter;->writeBufferedData()V

    .line 144
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLWriter;->writer:Ljava/io/Writer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/Writer;->write([CII)V

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLWriter;->buffer:Lorg/apache/xerces/util/XMLStringBuffer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 147
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/writers/XMLWriter;->conditionalWrite()V

    goto :goto_0
.end method
