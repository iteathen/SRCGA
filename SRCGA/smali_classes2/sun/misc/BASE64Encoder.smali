.class public Lsun/misc/BASE64Encoder;
.super Lsun/misc/CharacterEncoder;
.source "BASE64Encoder.java"


# static fields
.field private static final pem_array:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lsun/misc/BASE64Encoder;->pem_array:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lsun/misc/BASE64Encoder;
    move-object v1, v0

    invoke-direct {v1}, Lsun/misc/CharacterEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lsun/misc/BASE64Encoder;
    const/4 v1, 0x3

    move v0, v1

    .end local v0    # "this":Lsun/misc/BASE64Encoder;
    return v0
.end method

.method protected bytesPerLine()I
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lsun/misc/BASE64Encoder;
    const/16 v1, 0x39

    move v0, v1

    .end local v0    # "this":Lsun/misc/BASE64Encoder;
    return v0
.end method

.method protected encodeAtom(Ljava/io/OutputStream;[BII)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lsun/misc/BASE64Encoder;
    move-object v1, p1

    .local v1, "outStream":Ljava/io/OutputStream;
    move-object v2, p2

    .local v2, "data":[B
    move/from16 v3, p3

    .local v3, "offset":I
    move/from16 v4, p4

    .local v4, "len":I
    move v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 87
    move-object v8, v2

    move v9, v3

    aget-byte v8, v8, v9

    move v5, v8

    .line 88
    .local v5, "a":B
    const/4 v8, 0x0

    move v6, v8

    .line 89
    .local v6, "b":B
    const/4 v8, 0x0

    move v7, v8

    .line 90
    .local v7, "c":B
    move-object v8, v1

    sget-object v9, Lsun/misc/BASE64Encoder;->pem_array:[C

    move v10, v5

    const/4 v11, 0x2

    ushr-int/lit8 v10, v10, 0x2

    const/16 v11, 0x3f

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 91
    move-object v8, v1

    sget-object v9, Lsun/misc/BASE64Encoder;->pem_array:[C

    move v10, v5

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    const/16 v11, 0x30

    and-int/lit8 v10, v10, 0x30

    move v11, v6

    const/4 v12, 0x4

    ushr-int/lit8 v11, v11, 0x4

    const/16 v12, 0xf

    and-int/lit8 v11, v11, 0xf

    add-int/2addr v10, v11

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 92
    move-object v8, v1

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 93
    move-object v8, v1

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 111
    :goto_0
    return-void

    .line 94
    .end local v5    # "a":B
    .end local v6    # "b":B
    .end local v7    # "c":B
    :cond_0
    move v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 95
    move-object v8, v2

    move v9, v3

    aget-byte v8, v8, v9

    move v5, v8

    .line 96
    .restart local v5    # "a":B
    move-object v8, v2

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    move v6, v8

    .line 97
    .restart local v6    # "b":B
    const/4 v8, 0x0

    move v7, v8

    .line 98
    .restart local v7    # "c":B
    move-object v8, v1

    sget-object v9, Lsun/misc/BASE64Encoder;->pem_array:[C

    move v10, v5

    const/4 v11, 0x2

    ushr-int/lit8 v10, v10, 0x2

    const/16 v11, 0x3f

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 99
    move-object v8, v1

    sget-object v9, Lsun/misc/BASE64Encoder;->pem_array:[C

    move v10, v5

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    const/16 v11, 0x30

    and-int/lit8 v10, v10, 0x30

    move v11, v6

    const/4 v12, 0x4

    ushr-int/lit8 v11, v11, 0x4

    const/16 v12, 0xf

    and-int/lit8 v11, v11, 0xf

    add-int/2addr v10, v11

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 100
    move-object v8, v1

    sget-object v9, Lsun/misc/BASE64Encoder;->pem_array:[C

    move v10, v6

    const/4 v11, 0x2

    shl-int/lit8 v10, v10, 0x2

    const/16 v11, 0x3c

    and-int/lit8 v10, v10, 0x3c

    move v11, v7

    const/4 v12, 0x6

    ushr-int/lit8 v11, v11, 0x6

    const/4 v12, 0x3

    and-int/lit8 v11, v11, 0x3

    add-int/2addr v10, v11

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 101
    move-object v8, v1

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 103
    .end local v5    # "a":B
    .end local v6    # "b":B
    .end local v7    # "c":B
    :cond_1
    move-object v8, v2

    move v9, v3

    aget-byte v8, v8, v9

    move v5, v8

    .line 104
    .restart local v5    # "a":B
    move-object v8, v2

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    move v6, v8

    .line 105
    .restart local v6    # "b":B
    move-object v8, v2

    move v9, v3

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    move v7, v8

    .line 106
    .restart local v7    # "c":B
    move-object v8, v1

    sget-object v9, Lsun/misc/BASE64Encoder;->pem_array:[C

    move v10, v5

    const/4 v11, 0x2

    ushr-int/lit8 v10, v10, 0x2

    const/16 v11, 0x3f

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 107
    move-object v8, v1

    sget-object v9, Lsun/misc/BASE64Encoder;->pem_array:[C

    move v10, v5

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    const/16 v11, 0x30

    and-int/lit8 v10, v10, 0x30

    move v11, v6

    const/4 v12, 0x4

    ushr-int/lit8 v11, v11, 0x4

    const/16 v12, 0xf

    and-int/lit8 v11, v11, 0xf

    add-int/2addr v10, v11

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 108
    move-object v8, v1

    sget-object v9, Lsun/misc/BASE64Encoder;->pem_array:[C

    move v10, v6

    const/4 v11, 0x2

    shl-int/lit8 v10, v10, 0x2

    const/16 v11, 0x3c

    and-int/lit8 v10, v10, 0x3c

    move v11, v7

    const/4 v12, 0x6

    ushr-int/lit8 v11, v11, 0x6

    const/4 v12, 0x3

    and-int/lit8 v11, v11, 0x3

    add-int/2addr v10, v11

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 109
    move-object v8, v1

    sget-object v9, Lsun/misc/BASE64Encoder;->pem_array:[C

    move v10, v7

    const/16 v11, 0x3f

    and-int/lit8 v10, v10, 0x3f

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0
.end method
