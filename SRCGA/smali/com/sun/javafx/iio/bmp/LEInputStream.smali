.class final Lcom/sun/javafx/iio/bmp/LEInputStream;
.super Ljava/lang/Object;
.source "BMPImageLoaderFactory.java"


# instance fields
.field public final in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/LEInputStream;
    move-object v1, p1

    .local v1, "is":Ljava/io/InputStream;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    .line 52
    return-void
.end method


# virtual methods
.method public final readInt()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/LEInputStream;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    move v1, v5

    .line 65
    .local v1, "ch1":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    move v2, v5

    .line 66
    .local v2, "ch2":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    move v3, v5

    .line 67
    .local v3, "ch3":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    move v4, v5

    .line 68
    .local v4, "ch4":I
    move v5, v1

    move v6, v2

    or-int/2addr v5, v6

    move v6, v3

    or-int/2addr v5, v6

    move v6, v4

    or-int/2addr v5, v6

    if-gez v5, :cond_0

    .line 69
    new-instance v5, Ljava/io/EOFException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 71
    :cond_0
    move v5, v4

    const/16 v6, 0x18

    shl-int/lit8 v5, v5, 0x18

    move v6, v3

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    move v6, v2

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    move v6, v1

    add-int/2addr v5, v6

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/iio/bmp/LEInputStream;
    return v0
.end method

.method public final readShort()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/LEInputStream;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    move v1, v3

    .line 56
    .local v1, "ch1":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    move v2, v3

    .line 57
    .local v2, "ch2":I
    move v3, v1

    move v4, v2

    or-int/2addr v3, v4

    if-gez v3, :cond_0

    .line 58
    new-instance v3, Ljava/io/EOFException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 60
    :cond_0
    move v3, v2

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    move v4, v1

    add-int/2addr v3, v4

    int-to-short v3, v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/iio/bmp/LEInputStream;
    return v0
.end method

.method public final skipBytes(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/iio/bmp/LEInputStream;
    move v2, p1

    .local v2, "n":I
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/iio/bmp/LEInputStream;->in:Ljava/io/InputStream;

    move v4, v2

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/iio/common/ImageTools;->skipFully(Ljava/io/InputStream;J)V

    .line 76
    return-void
.end method
