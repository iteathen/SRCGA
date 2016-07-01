.class Ljava/util/Base64$DecInputStream;
.super Ljava/io/InputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecInputStream"
.end annotation


# instance fields
.field private final base64:[I

.field private bits:I

.field private closed:Z

.field private eof:Z

.field private final is:Ljava/io/InputStream;

.field private final isMIME:Z

.field private nextin:I

.field private nextout:I

.field private sbBuf:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;[IZ)V
    .locals 6

    .prologue
    .line 1306
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$DecInputStream;
    move-object v1, p1

    .local v1, "is":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "base64":[I
    move v3, p3

    .local v3, "isMIME":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/io/InputStream;-><init>()V

    .line 1298
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Ljava/util/Base64$DecInputStream;->bits:I

    .line 1299
    move-object v4, v0

    const/16 v5, 0x12

    iput v5, v4, Ljava/util/Base64$DecInputStream;->nextin:I

    .line 1301
    move-object v4, v0

    const/4 v5, -0x8

    iput v5, v4, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 1303
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljava/util/Base64$DecInputStream;->eof:Z

    .line 1304
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljava/util/Base64$DecInputStream;->closed:Z

    .line 1312
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [B

    iput-object v5, v4, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    .line 1307
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 1308
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljava/util/Base64$DecInputStream;->base64:[I

    .line 1309
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Ljava/util/Base64$DecInputStream;->isMIME:Z

    .line 1310
    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1424
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$DecInputStream;
    move-object v1, v0

    iget-boolean v1, v1, Ljava/util/Base64$DecInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 1425
    new-instance v1, Ljava/io/IOException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Stream is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1426
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/util/Base64$DecInputStream;
    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1431
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$DecInputStream;
    move-object v1, v0

    iget-boolean v1, v1, Ljava/util/Base64$DecInputStream;->closed:Z

    if-nez v1, :cond_0

    .line 1432
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljava/util/Base64$DecInputStream;->closed:Z

    .line 1433
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1435
    :cond_0
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1316
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$DecInputStream;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Base64$DecInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/util/Base64$DecInputStream;
    return v0

    .restart local v0    # "this":Ljava/util/Base64$DecInputStream;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljava/util/Base64$DecInputStream;->sbBuf:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

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
    .line 1321
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$DecInputStream;
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v6, v0

    iget-boolean v6, v6, Ljava/util/Base64$DecInputStream;->closed:Z

    if-eqz v6, :cond_0

    .line 1322
    new-instance v6, Ljava/io/IOException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Stream is closed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1323
    :cond_0
    move-object v6, v0

    iget-boolean v6, v6, Ljava/util/Base64$DecInputStream;->eof:Z

    if-eqz v6, :cond_1

    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextout:I

    if-gez v6, :cond_1

    .line 1324
    const/4 v6, -0x1

    move v0, v6

    .line 1419
    .end local v0    # "this":Ljava/util/Base64$DecInputStream;
    :goto_0
    return v0

    .line 1325
    .restart local v0    # "this":Ljava/util/Base64$DecInputStream;
    :cond_1
    move v6, v2

    if-ltz v6, :cond_2

    move v6, v3

    if-ltz v6, :cond_2

    move v6, v3

    move-object v7, v1

    array-length v7, v7

    move v8, v2

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_3

    .line 1326
    :cond_2
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 1327
    :cond_3
    move v6, v2

    move v4, v6

    .line 1328
    .local v4, "oldOff":I
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextout:I

    if-ltz v6, :cond_6

    .line 1330
    :cond_4
    move v6, v3

    if-nez v6, :cond_5

    .line 1331
    move v6, v2

    move v7, v4

    sub-int/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 1332
    :cond_5
    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    move-object v8, v0

    iget v8, v8, Ljava/util/Base64$DecInputStream;->bits:I

    move-object v9, v0

    iget v9, v9, Ljava/util/Base64$DecInputStream;->nextout:I

    shr-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1333
    add-int/lit8 v3, v3, -0x1

    .line 1334
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Ljava/util/Base64$DecInputStream;->nextout:I

    const/16 v8, 0x8

    add-int/lit8 v7, v7, -0x8

    iput v7, v6, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 1335
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextout:I

    if-gez v6, :cond_4

    .line 1336
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Ljava/util/Base64$DecInputStream;->bits:I

    .line 1338
    :cond_6
    :goto_1
    move v6, v3

    if-lez v6, :cond_10

    .line 1339
    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    move v5, v6

    .line 1340
    .local v5, "v":I
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b

    .line 1341
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljava/util/Base64$DecInputStream;->eof:Z

    .line 1342
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    const/16 v7, 0x12

    if-eq v6, v7, :cond_8

    .line 1343
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_7

    .line 1344
    new-instance v6, Ljava/io/IOException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Base64 stream has one un-decoded dangling byte."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1347
    :cond_7
    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    move-object v8, v0

    iget v8, v8, Ljava/util/Base64$DecInputStream;->bits:I

    const/16 v9, 0x10

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1348
    add-int/lit8 v3, v3, -0x1

    .line 1349
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    if-nez v6, :cond_8

    .line 1350
    move v6, v3

    if-nez v6, :cond_9

    .line 1351
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Ljava/util/Base64$DecInputStream;->bits:I

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    iput v7, v6, Ljava/util/Base64$DecInputStream;->bits:I

    .line 1352
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 1358
    :cond_8
    :goto_2
    move v6, v2

    move v7, v4

    if-ne v6, v7, :cond_a

    .line 1359
    const/4 v6, -0x1

    move v0, v6

    goto/16 :goto_0

    .line 1354
    :cond_9
    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    move-object v8, v0

    iget v8, v8, Ljava/util/Base64$DecInputStream;->bits:I

    const/16 v9, 0x8

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    goto :goto_2

    .line 1361
    :cond_a
    move v6, v2

    move v7, v4

    sub-int/2addr v6, v7

    move v0, v6

    goto/16 :goto_0

    .line 1363
    :cond_b
    move v6, v5

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_13

    .line 1368
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    const/16 v7, 0x12

    if-eq v6, v7, :cond_c

    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    const/16 v7, 0xc

    if-eq v6, v7, :cond_c

    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_11

    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 1369
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_11

    .line 1370
    :cond_c
    move-object v6, v0

    iget-boolean v6, v6, Ljava/util/Base64$DecInputStream;->isMIME:Z

    if-eqz v6, :cond_d

    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_e

    .line 1371
    :cond_d
    new-instance v6, Ljava/io/IOException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal base64 ending sequence:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Ljava/util/Base64$DecInputStream;->nextin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1372
    :cond_e
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    const/16 v7, 0x12

    if-eq v6, v7, :cond_f

    .line 1377
    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    move-object v8, v0

    iget v8, v8, Ljava/util/Base64$DecInputStream;->bits:I

    const/16 v9, 0x10

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1378
    add-int/lit8 v3, v3, -0x1

    .line 1392
    :cond_f
    :goto_3
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljava/util/Base64$DecInputStream;->eof:Z

    .line 1393
    .line 1419
    .end local v5    # "v":I
    :cond_10
    move v6, v2

    move v7, v4

    sub-int/2addr v6, v7

    move v0, v6

    goto/16 :goto_0

    .line 1381
    .restart local v5    # "v":I
    :cond_11
    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    move-object v8, v0

    iget v8, v8, Ljava/util/Base64$DecInputStream;->bits:I

    const/16 v9, 0x10

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1382
    add-int/lit8 v3, v3, -0x1

    .line 1383
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    if-nez v6, :cond_f

    .line 1384
    move v6, v3

    if-nez v6, :cond_12

    .line 1385
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Ljava/util/Base64$DecInputStream;->bits:I

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    iput v7, v6, Ljava/util/Base64$DecInputStream;->bits:I

    .line 1386
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Ljava/util/Base64$DecInputStream;->nextout:I

    goto :goto_3

    .line 1388
    :cond_12
    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    move-object v8, v0

    iget v8, v8, Ljava/util/Base64$DecInputStream;->bits:I

    const/16 v9, 0x8

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    goto :goto_3

    .line 1395
    :cond_13
    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$DecInputStream;->base64:[I

    move v7, v5

    aget v6, v6, v7

    move v11, v6

    move v6, v11

    move v7, v11

    move v5, v7

    const/4 v7, -0x1

    if-ne v6, v7, :cond_15

    .line 1396
    move-object v6, v0

    iget-boolean v6, v6, Ljava/util/Base64$DecInputStream;->isMIME:Z

    if-eqz v6, :cond_14

    .line 1397
    goto/16 :goto_1

    .line 1399
    :cond_14
    new-instance v6, Ljava/io/IOException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal base64 character "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v5

    const/16 v10, 0x10

    .line 1400
    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1402
    :cond_15
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Ljava/util/Base64$DecInputStream;->bits:I

    move v8, v5

    move-object v9, v0

    iget v9, v9, Ljava/util/Base64$DecInputStream;->nextin:I

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, v6, Ljava/util/Base64$DecInputStream;->bits:I

    .line 1403
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    if-nez v6, :cond_18

    .line 1404
    move-object v6, v0

    const/16 v7, 0x12

    iput v7, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    .line 1405
    move-object v6, v0

    const/16 v7, 0x10

    iput v7, v6, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 1406
    :cond_16
    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextout:I

    if-ltz v6, :cond_17

    .line 1407
    move-object v6, v1

    move v7, v2

    add-int/lit8 v2, v2, 0x1

    move-object v8, v0

    iget v8, v8, Ljava/util/Base64$DecInputStream;->bits:I

    move-object v9, v0

    iget v9, v9, Ljava/util/Base64$DecInputStream;->nextout:I

    shr-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1408
    add-int/lit8 v3, v3, -0x1

    .line 1409
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Ljava/util/Base64$DecInputStream;->nextout:I

    const/16 v8, 0x8

    add-int/lit8 v7, v7, -0x8

    iput v7, v6, Ljava/util/Base64$DecInputStream;->nextout:I

    .line 1410
    move v6, v3

    if-nez v6, :cond_16

    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$DecInputStream;->nextout:I

    if-ltz v6, :cond_16

    .line 1411
    move v6, v2

    move v7, v4

    sub-int/2addr v6, v7

    move v0, v6

    goto/16 :goto_0

    .line 1414
    :cond_17
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Ljava/util/Base64$DecInputStream;->bits:I

    .line 1418
    :goto_4
    goto/16 :goto_1

    .line 1416
    :cond_18
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Ljava/util/Base64$DecInputStream;->nextin:I

    const/4 v8, 0x6

    add-int/lit8 v7, v7, -0x6

    iput v7, v6, Ljava/util/Base64$DecInputStream;->nextin:I

    goto :goto_4
.end method
