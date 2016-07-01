.class public Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
.super Ljava/io/InputStream;
.source "PNGIDATChunkInputStream.java"


# static fields
.field static final IDAT_TYPE:I = 0x49444154


# instance fields
.field private foundAllIDATChunks:Z

.field private nextChunkLength:I

.field private nextChunkType:I

.field private numBytesAvailable:I

.field private source:Ljava/io/DataInputStream;


# direct methods
.method constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    move-object v1, p1

    .local v1, "input":Ljava/io/DataInputStream;
    move v2, p2

    .local v2, "firstIDATChunkLength":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/io/InputStream;-><init>()V

    .line 52
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    .line 53
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->foundAllIDATChunks:Z

    .line 54
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->nextChunkLength:I

    .line 55
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->nextChunkType:I

    .line 66
    move v3, v2

    if-gez v3, :cond_0

    .line 67
    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid chunk length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->source:Ljava/io/DataInputStream;

    .line 70
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    .line 71
    return-void
.end method

.method private nextChunk()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->foundAllIDATChunks:Z

    if-nez v3, :cond_1

    .line 75
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->source:Ljava/io/DataInputStream;

    const-wide/16 v4, 0x4

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/iio/common/ImageTools;->skipFully(Ljava/io/InputStream;J)V

    .line 76
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->source:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v1, v3

    .line 77
    .local v1, "chunkLength":I
    move v3, v1

    if-gez v3, :cond_0

    .line 78
    new-instance v3, Ljava/io/IOException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid chunk length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->source:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v2, v3

    .line 81
    .local v2, "chunkType":I
    move v3, v2

    const v4, 0x49444154    # 803861.25f

    if-ne v3, v4, :cond_2

    .line 82
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    .line 89
    .end local v1    # "chunkLength":I
    .end local v2    # "chunkType":I
    :cond_1
    :goto_0
    return-void

    .line 84
    .restart local v1    # "chunkLength":I
    .restart local v2    # "chunkType":I
    :cond_2
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->foundAllIDATChunks:Z

    .line 85
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->nextChunkLength:I

    .line 86
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->nextChunkType:I

    goto :goto_0
.end method


# virtual methods
.method getNextChunkLength()I
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->nextChunkLength:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    return v0
.end method

.method getNextChunkType()I
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->nextChunkType:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    return v0
.end method

.method isFoundAllIDATChunks()Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->foundAllIDATChunks:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    if-nez v1, :cond_0

    .line 106
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->nextChunk()V

    .line 109
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    if-nez v1, :cond_1

    .line 110
    const/4 v1, -0x1

    move v0, v1

    .line 113
    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    :goto_0
    return v0

    .line 112
    .restart local v0    # "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    :cond_1
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    .line 113
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->source:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    if-nez v7, :cond_0

    .line 120
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->nextChunk()V

    .line 121
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    if-nez v7, :cond_0

    .line 122
    const/4 v7, -0x1

    move v0, v7

    .line 144
    .end local v0    # "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    :goto_0
    return v0

    .line 126
    .restart local v0    # "this":Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;
    :cond_0
    const/4 v7, 0x0

    move v4, v7

    .line 127
    .local v4, "totalRead":I
    :goto_1
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    if-lez v7, :cond_4

    move v7, v3

    if-lez v7, :cond_4

    .line 128
    move v7, v3

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    if-ge v7, v8, :cond_1

    move v7, v3

    :goto_2
    move v5, v7

    .line 130
    .local v5, "numToRead":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->source:Ljava/io/DataInputStream;

    move-object v8, v1

    move v9, v2

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    move v6, v7

    .line 131
    .local v6, "numRead":I
    move v7, v6

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 132
    new-instance v7, Ljava/io/EOFException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/io/EOFException;-><init>()V

    throw v7

    .line 128
    .end local v5    # "numToRead":I
    .end local v6    # "numRead":I
    :cond_1
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    goto :goto_2

    .line 135
    .restart local v5    # "numToRead":I
    .restart local v6    # "numRead":I
    :cond_2
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    move v9, v6

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    .line 136
    move v7, v2

    move v8, v6

    add-int/2addr v7, v8

    move v2, v7

    .line 137
    move v7, v3

    move v8, v6

    sub-int/2addr v7, v8

    move v3, v7

    .line 138
    move v7, v4

    move v8, v6

    add-int/2addr v7, v8

    move v4, v7

    .line 139
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->numBytesAvailable:I

    if-nez v7, :cond_3

    move v7, v3

    if-lez v7, :cond_3

    .line 140
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/iio/png/PNGIDATChunkInputStream;->nextChunk()V

    .line 142
    :cond_3
    goto :goto_1

    .line 144
    .end local v5    # "numToRead":I
    .end local v6    # "numRead":I
    :cond_4
    move v7, v4

    move v0, v7

    goto :goto_0
.end method
