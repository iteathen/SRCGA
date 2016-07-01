.class public final Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
.super Ljava/io/InputStream;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RewindableInputStream"
.end annotation


# instance fields
.field private fData:[B

.field private fEndOffset:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLength:I

.field private fMark:I

.field private fOffset:I

.field private fStartOffset:I

.field final synthetic this$0:Lcom/sun/xml/stream/XMLEntityManager;


# direct methods
.method public constructor <init>(Lcom/sun/xml/stream/XMLEntityManager;Ljava/io/InputStream;)V
    .locals 5

    .prologue
    .line 1859
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v2, p2

    .local v2, "is":Ljava/io/InputStream;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->this$0:Lcom/sun/xml/stream/XMLEntityManager;

    move-object v3, v0

    invoke-direct {v3}, Ljava/io/InputStream;-><init>()V

    .line 1860
    move-object v3, v0

    const/16 v4, 0x40

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    .line 1861
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    .line 1862
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    .line 1863
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    .line 1864
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 1865
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    .line 1866
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fMark:I

    .line 1867
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1973
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v2, v3

    move v1, v2

    .line 1974
    .local v1, "bytesLeft":I
    move v2, v1

    if-nez v2, :cond_2

    .line 1975
    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v2, v3, :cond_0

    .line 1976
    const/4 v2, -0x1

    move v0, v2

    .line 1981
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    :goto_0
    return v0

    .line 1978
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->this$0:Lcom/sun/xml/stream/XMLEntityManager;

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-boolean v2, v2, Lcom/sun/xml/stream/Entity$ScannedEntity;->mayReadChunks:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1981
    :cond_2
    move v2, v1

    move v0, v2

    goto :goto_0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1998
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 1999
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 2000
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    .line 2002
    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 4

    .prologue
    .line 1985
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    move v1, p1

    .local v1, "howMuch":I
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v3, v2, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fMark:I

    .line 1986
    return-void
.end method

.method public markSupported()Z
    .locals 2

    .prologue
    .line 1994
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    return v0
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1878
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    const/4 v3, 0x0

    move v1, v3

    .line 1879
    .local v1, "b":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    if-ge v3, v4, :cond_0

    .line 1880
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v0, v3

    .line 1897
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    :goto_0
    return v0

    .line 1882
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v3, v4, :cond_1

    .line 1883
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 1885
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 1886
    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    new-array v3, v3, [B

    move-object v2, v3

    .line 1887
    .local v2, "newData":[B
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1888
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    .line 1890
    .end local v2    # "newData":[B
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    move v1, v3

    .line 1891
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1892
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v4, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    .line 1893
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 1895
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    move v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1896
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 1897
    move v3, v1

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move v0, v3

    goto :goto_0
.end method

.method public read([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1901
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 1902
    .local v4, "bytesLeft":I
    move v5, v4

    if-nez v5, :cond_1

    .line 1903
    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v5, v6, :cond_0

    .line 1904
    const/4 v5, -0x1

    move v0, v5

    .line 1936
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    :goto_0
    return v0

    .line 1906
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 1924
    :cond_1
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_2

    .line 1925
    move v5, v3

    if-gtz v5, :cond_3

    .line 1926
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1930
    :cond_2
    move v5, v4

    move v3, v5

    .line 1932
    :cond_3
    move-object v5, v1

    if-eqz v5, :cond_4

    .line 1933
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fData:[B

    move-object v6, v0

    iget v6, v6, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1935
    :cond_4
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move v7, v3

    add-int/2addr v6, v7

    iput v6, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 1936
    move v5, v3

    move v0, v5

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 1989
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fMark:I

    iput v2, v1, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 1991
    return-void
.end method

.method public rewind()V
    .locals 3

    .prologue
    .line 1874
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    iput v2, v1, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 1875
    return-void
.end method

.method public setStartOffset(I)V
    .locals 4

    .prologue
    .line 1870
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    move v1, p1

    .local v1, "offset":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    .line 1871
    return-void
.end method

.method public skip(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1942
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    move-wide v1, p1

    .local v1, "n":J
    move-wide v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 1943
    const-wide/16 v4, 0x0

    move-wide v0, v4

    .line 1969
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    :goto_0
    return-wide v0

    .line 1945
    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fLength:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int/2addr v4, v5

    move v3, v4

    .line 1946
    .local v3, "bytesLeft":I
    move v4, v3

    if-nez v4, :cond_2

    .line 1947
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v4, v5, :cond_1

    .line 1948
    const-wide/16 v4, 0x0

    move-wide v0, v4

    goto :goto_0

    .line 1950
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    move-wide v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 1952
    :cond_2
    move-wide v4, v1

    move v6, v3

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 1953
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    int-to-long v5, v5

    move-wide v7, v1

    add-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 1954
    move-wide v4, v1

    move-wide v0, v4

    goto :goto_0

    .line 1956
    :cond_3
    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    .line 1957
    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v4, v5, :cond_4

    .line 1958
    move v4, v3

    int-to-long v4, v4

    move-wide v0, v4

    goto :goto_0

    .line 1960
    :cond_4
    move-wide v4, v1

    move v6, v3

    int-to-long v6, v6

    sub-long/2addr v4, v6

    move-wide v1, v4

    .line 1969
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    move-wide v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    move v6, v3

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-wide v0, v4

    goto :goto_0
.end method
