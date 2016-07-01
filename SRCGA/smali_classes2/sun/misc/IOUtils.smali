.class public Lsun/misc/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lsun/misc/IOUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFully(Ljava/io/InputStream;IZ)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "is":Ljava/io/InputStream;
    move v1, p1

    .local v1, "length":I
    move v2, p2

    .local v2, "readAll":Z
    const/4 v7, 0x0

    new-array v7, v7, [B

    move-object v3, v7

    .line 53
    .local v3, "output":[B
    move v7, v1

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    const v7, 0x7fffffff

    move v1, v7

    .line 54
    :cond_0
    const/4 v7, 0x0

    move v4, v7

    .line 55
    .local v4, "pos":I
    :goto_0
    move v7, v4

    move v8, v1

    if-ge v7, v8, :cond_4

    .line 57
    move v7, v4

    move-object v8, v3

    array-length v8, v8

    if-lt v7, v8, :cond_2

    .line 58
    move v7, v1

    move v8, v4

    sub-int/2addr v7, v8

    move-object v8, v3

    array-length v8, v8

    const/16 v9, 0x400

    add-int/lit16 v8, v8, 0x400

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v5, v7

    .line 59
    .local v5, "bytesToRead":I
    move-object v7, v3

    array-length v7, v7

    move v8, v4

    move v9, v5

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_1

    .line 60
    move-object v7, v3

    move v8, v4

    move v9, v5

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    move-object v3, v7

    .line 65
    :cond_1
    :goto_1
    move-object v7, v0

    move-object v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    move v6, v7

    .line 66
    .local v6, "cc":I
    move v7, v6

    if-gez v7, :cond_5

    .line 67
    move v7, v2

    if-eqz v7, :cond_3

    move v7, v1

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_3

    .line 68
    new-instance v7, Ljava/io/EOFException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Detect premature EOF"

    invoke-direct {v8, v9}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 63
    .end local v5    # "bytesToRead":I
    .end local v6    # "cc":I
    :cond_2
    move-object v7, v3

    array-length v7, v7

    move v8, v4

    sub-int/2addr v7, v8

    move v5, v7

    .restart local v5    # "bytesToRead":I
    goto :goto_1

    .line 70
    .restart local v6    # "cc":I
    :cond_3
    move-object v7, v3

    array-length v7, v7

    move v8, v4

    if-eq v7, v8, :cond_4

    .line 71
    move-object v7, v3

    move v8, v4

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    move-object v3, v7

    .line 78
    .end local v5    # "bytesToRead":I
    .end local v6    # "cc":I
    :cond_4
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "is":Ljava/io/InputStream;
    return-object v0

    .line 76
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v5    # "bytesToRead":I
    .restart local v6    # "cc":I
    :cond_5
    move v7, v4

    move v8, v6

    add-int/2addr v7, v8

    move v4, v7

    .line 77
    goto :goto_0
.end method
