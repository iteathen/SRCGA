.class final Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;
.super Ljava/lang/Object;
.source "BMPImageLoaderFactory.java"


# static fields
.field static final BIH4_SIZE:I = 0x6c

.field static final BIH5_SIZE:I = 0x7c

.field static final BIH_SIZE:I = 0x28

.field static final BI_BITFIELDS:I = 0x3

.field static final BI_JPEG:I = 0x4

.field static final BI_PNG:I = 0x5

.field static final BI_RGB:I = 0x0

.field static final BI_RLE4:I = 0x2

.field static final BI_RLE8:I = 0x1


# instance fields
.field final biBitCount:S

.field final biClrImportant:I

.field final biClrUsed:I

.field final biCompression:I

.field final biHeight:I

.field final biPlanes:S

.field final biSize:I

.field final biSizeImage:I

.field final biWidth:I

.field final biXPelsPerMeter:I

.field final biYPelsPerMeter:I


# direct methods
.method constructor <init>(Lcom/sun/javafx/iio/bmp/LEInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;
    move-object v1, p1

    .local v1, "data":Lcom/sun/javafx/iio/bmp/LEInputStream;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 104
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biSize:I

    .line 105
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biWidth:I

    .line 106
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biHeight:I

    .line 107
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readShort()S

    move-result v3

    iput-short v3, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biPlanes:S

    .line 108
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readShort()S

    move-result v3

    iput-short v3, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    .line 109
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biCompression:I

    .line 110
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biSizeImage:I

    .line 111
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biXPelsPerMeter:I

    .line 112
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biYPelsPerMeter:I

    .line 113
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biClrUsed:I

    .line 114
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->readInt()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biClrImportant:I

    .line 116
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biSize:I

    const/16 v3, 0x28

    if-le v2, v3, :cond_1

    .line 117
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biSize:I

    const/16 v3, 0x6c

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biSize:I

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_2

    .line 118
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biSize:I

    const/16 v4, 0x28

    add-int/lit8 v3, v3, -0x28

    invoke-virtual {v2, v3}, Lcom/sun/javafx/iio/bmp/LEInputStream;->skipBytes(I)V

    .line 123
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->validate()V

    .line 124
    return-void

    .line 120
    :cond_2
    new-instance v2, Ljava/io/IOException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "BitmapInfoHeader is corrupt"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method validate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;
    move-object v1, v0

    iget-short v1, v1, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biCompression:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biCompression:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 130
    :cond_0
    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Unsupported BMP image: Embedded JPEG or PNG images are not supported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biCompression:I

    packed-switch v1, :pswitch_data_0

    .line 156
    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Unknown BMP compression type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :pswitch_0
    move-object v1, v0

    iget-short v1, v1, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 137
    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid BMP image: Only 4 bpp images can be RLE4 compressed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :pswitch_1
    move-object v1, v0

    iget-short v1, v1, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 143
    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid BMP image: Only 8 bpp images can be RLE8 compressed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :pswitch_2
    move-object v1, v0

    iget-short v1, v1, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    move-object v1, v0

    iget-short v1, v1, Lcom/sun/javafx/iio/bmp/BitmapInfoHeader;->biBitCount:S

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 149
    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Invalid BMP image: Only 16 or 32 bpp images can use BITFIELDS compression"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    .line 158
    :cond_2
    :pswitch_3
    return-void

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
