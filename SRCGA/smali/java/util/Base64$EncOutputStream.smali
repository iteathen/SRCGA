.class Ljava/util/Base64$EncOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncOutputStream"
.end annotation


# instance fields
.field private b0:I

.field private b1:I

.field private b2:I

.field private final base64:[C

.field private closed:Z

.field private final doPadding:Z

.field private leftover:I

.field private final linemax:I

.field private linepos:I

.field private final newline:[B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;[C[BIZ)V
    .locals 8

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$EncOutputStream;
    move-object v1, p1

    .local v1, "os":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "base64":[C
    move-object v3, p3

    .local v3, "newline":[B
    move v4, p4

    .local v4, "linemax":I
    move v5, p5

    .local v5, "doPadding":Z
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1183
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 1185
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljava/util/Base64$EncOutputStream;->closed:Z

    .line 1191
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->linepos:I

    .line 1196
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljava/util/Base64$EncOutputStream;->base64:[C

    .line 1197
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljava/util/Base64$EncOutputStream;->newline:[B

    .line 1198
    move-object v6, v0

    move v7, v4

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->linemax:I

    .line 1199
    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    .line 1200
    return-void
.end method

.method private checkNewline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1210
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$EncOutputStream;
    move-object v1, v0

    iget v1, v1, Ljava/util/Base64$EncOutputStream;->linepos:I

    move-object v2, v0

    iget v2, v2, Ljava/util/Base64$EncOutputStream;->linemax:I

    if-ne v1, v2, :cond_0

    .line 1211
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v2, v0

    iget-object v2, v2, Ljava/util/Base64$EncOutputStream;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1212
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljava/util/Base64$EncOutputStream;->linepos:I

    .line 1214
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1265
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$EncOutputStream;
    move-object v1, v0

    iget-boolean v1, v1, Ljava/util/Base64$EncOutputStream;->closed:Z

    if-nez v1, :cond_1

    .line 1266
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljava/util/Base64$EncOutputStream;->closed:Z

    .line 1267
    move-object v1, v0

    iget v1, v1, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1268
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 1269
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v2, v0

    iget-object v2, v2, Ljava/util/Base64$EncOutputStream;->base64:[C

    move-object v3, v0

    iget v3, v3, Ljava/util/Base64$EncOutputStream;->b0:I

    const/4 v4, 0x2

    shr-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1270
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v2, v0

    iget-object v2, v2, Ljava/util/Base64$EncOutputStream;->base64:[C

    move-object v3, v0

    iget v3, v3, Ljava/util/Base64$EncOutputStream;->b0:I

    const/4 v4, 0x4

    shl-int/lit8 v3, v3, 0x4

    const/16 v4, 0x3f

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1271
    move-object v1, v0

    iget-boolean v1, v1, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v1, :cond_0

    .line 1272
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1273
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1284
    :cond_0
    :goto_0
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 1285
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1287
    :cond_1
    return-void

    .line 1275
    :cond_2
    move-object v1, v0

    iget v1, v1, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1276
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 1277
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v2, v0

    iget-object v2, v2, Ljava/util/Base64$EncOutputStream;->base64:[C

    move-object v3, v0

    iget v3, v3, Ljava/util/Base64$EncOutputStream;->b0:I

    const/4 v4, 0x2

    shr-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1278
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v2, v0

    iget-object v2, v2, Ljava/util/Base64$EncOutputStream;->base64:[C

    move-object v3, v0

    iget v3, v3, Ljava/util/Base64$EncOutputStream;->b0:I

    const/4 v4, 0x4

    shl-int/lit8 v3, v3, 0x4

    const/16 v4, 0x3f

    and-int/lit8 v3, v3, 0x3f

    move-object v4, v0

    iget v4, v4, Ljava/util/Base64$EncOutputStream;->b1:I

    const/4 v5, 0x4

    shr-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1279
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v2, v0

    iget-object v2, v2, Ljava/util/Base64$EncOutputStream;->base64:[C

    move-object v3, v0

    iget v3, v3, Ljava/util/Base64$EncOutputStream;->b1:I

    const/4 v4, 0x2

    shl-int/lit8 v3, v3, 0x2

    const/16 v4, 0x3f

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1280
    move-object v1, v0

    iget-boolean v1, v1, Ljava/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v1, :cond_0

    .line 1281
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$EncOutputStream;
    move v1, p1

    .local v1, "b":I
    const/4 v3, 0x1

    new-array v3, v3, [B

    move-object v2, v3

    .line 1205
    .local v2, "buf":[B
    move-object v3, v2

    const/4 v4, 0x0

    move v5, v1

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1206
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Base64$EncOutputStream;->write([BII)V

    .line 1207
    return-void
.end method

.method public write([BII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1218
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$EncOutputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v6, v0

    iget-boolean v6, v6, Ljava/util/Base64$EncOutputStream;->closed:Z

    if-eqz v6, :cond_0

    .line 1219
    new-instance v6, Ljava/io/IOException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Stream is closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1220
    :cond_0
    move v6, v2

    if-ltz v6, :cond_1

    move v6, v3

    if-ltz v6, :cond_1

    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v1

    array-length v7, v7

    if-le v6, v7, :cond_2

    .line 1221
    :cond_1
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v6

    .line 1222
    :cond_2
    move v6, v3

    if-nez v6, :cond_3

    .line 1223
    .line 1261
    :goto_0
    return-void

    .line 1224
    :cond_3
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$EncOutputStream;->leftover:I

    if-eqz v6, :cond_5

    .line 1225
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1226
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->b1:I

    .line 1227
    add-int/lit8 v3, v3, -0x1

    .line 1228
    move v6, v3

    if-nez v6, :cond_4

    .line 1229
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 1230
    goto :goto_0

    .line 1233
    :cond_4
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->b2:I

    .line 1234
    add-int/lit8 v3, v3, -0x1

    .line 1235
    move-object v6, v0

    invoke-direct {v6}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 1236
    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v7, v0

    iget-object v7, v7, Ljava/util/Base64$EncOutputStream;->base64:[C

    move-object v8, v0

    iget v8, v8, Ljava/util/Base64$EncOutputStream;->b0:I

    const/4 v9, 0x2

    shr-int/lit8 v8, v8, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1237
    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v7, v0

    iget-object v7, v7, Ljava/util/Base64$EncOutputStream;->base64:[C

    move-object v8, v0

    iget v8, v8, Ljava/util/Base64$EncOutputStream;->b0:I

    const/4 v9, 0x4

    shl-int/lit8 v8, v8, 0x4

    const/16 v9, 0x3f

    and-int/lit8 v8, v8, 0x3f

    move-object v9, v0

    iget v9, v9, Ljava/util/Base64$EncOutputStream;->b1:I

    const/4 v10, 0x4

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1238
    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v7, v0

    iget-object v7, v7, Ljava/util/Base64$EncOutputStream;->base64:[C

    move-object v8, v0

    iget v8, v8, Ljava/util/Base64$EncOutputStream;->b1:I

    const/4 v9, 0x2

    shl-int/lit8 v8, v8, 0x2

    const/16 v9, 0x3f

    and-int/lit8 v8, v8, 0x3f

    move-object v9, v0

    iget v9, v9, Ljava/util/Base64$EncOutputStream;->b2:I

    const/4 v10, 0x6

    shr-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1239
    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v7, v0

    iget-object v7, v7, Ljava/util/Base64$EncOutputStream;->base64:[C

    move-object v8, v0

    iget v8, v8, Ljava/util/Base64$EncOutputStream;->b2:I

    const/16 v9, 0x3f

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1240
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Ljava/util/Base64$EncOutputStream;->linepos:I

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->linepos:I

    .line 1242
    :cond_5
    move v6, v3

    const/4 v7, 0x3

    div-int/lit8 v6, v6, 0x3

    move v4, v6

    .line 1243
    .local v4, "nBits24":I
    move-object v6, v0

    move v7, v3

    move v8, v4

    const/4 v9, 0x3

    mul-int/lit8 v8, v8, 0x3

    sub-int/2addr v7, v8

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->leftover:I

    .line 1244
    :goto_1
    move v6, v4

    add-int/lit8 v4, v4, -0x1

    if-lez v6, :cond_6

    .line 1245
    move-object v6, v0

    invoke-direct {v6}, Ljava/util/Base64$EncOutputStream;->checkNewline()V

    .line 1246
    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    move v5, v6

    .line 1249
    .local v5, "bits":I
    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v7, v0

    iget-object v7, v7, Ljava/util/Base64$EncOutputStream;->base64:[C

    move v8, v5

    const/16 v9, 0x12

    ushr-int/lit8 v8, v8, 0x12

    const/16 v9, 0x3f

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1250
    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v7, v0

    iget-object v7, v7, Ljava/util/Base64$EncOutputStream;->base64:[C

    move v8, v5

    const/16 v9, 0xc

    ushr-int/lit8 v8, v8, 0xc

    const/16 v9, 0x3f

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1251
    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v7, v0

    iget-object v7, v7, Ljava/util/Base64$EncOutputStream;->base64:[C

    move v8, v5

    const/4 v9, 0x6

    ushr-int/lit8 v8, v8, 0x6

    const/16 v9, 0x3f

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1252
    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    move-object v7, v0

    iget-object v7, v7, Ljava/util/Base64$EncOutputStream;->base64:[C

    move v8, v5

    const/16 v9, 0x3f

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1253
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Ljava/util/Base64$EncOutputStream;->linepos:I

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->linepos:I

    .line 1254
    goto/16 :goto_1

    .line 1255
    .end local v5    # "bits":I
    :cond_6
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 1256
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->b0:I

    .line 1261
    :cond_7
    :goto_2
    goto/16 :goto_0

    .line 1257
    :cond_8
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$EncOutputStream;->leftover:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 1258
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->b0:I

    .line 1259
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    iput v7, v6, Ljava/util/Base64$EncOutputStream;->b1:I

    goto :goto_2
.end method
