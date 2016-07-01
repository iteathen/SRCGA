.class public Lsun/misc/BASE64Decoder;
.super Lsun/misc/CharacterDecoder;
.source "BASE64Decoder.java"


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field decode_buffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 77
    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lsun/misc/BASE64Decoder;->pem_array:[C

    .line 89
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    .line 92
    const/4 v1, 0x0

    move v0, v1

    .local v0, "i":I
    :goto_0
    move v1, v0

    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    .line 93
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    move v2, v0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    :goto_1
    move v1, v0

    sget-object v2, Lsun/misc/BASE64Decoder;->pem_array:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 96
    sget-object v1, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    sget-object v2, Lsun/misc/BASE64Decoder;->pem_array:[C

    move v3, v0

    aget-char v2, v2, v3

    move v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_1
    return-void

    .line 77
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
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lsun/misc/BASE64Decoder;
    move-object v1, v0

    invoke-direct {v1}, Lsun/misc/CharacterDecoder;-><init>()V

    .line 100
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, v1, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lsun/misc/BASE64Decoder;
    const/4 v1, 0x4

    move v0, v1

    .end local v0    # "this":Lsun/misc/BASE64Decoder;
    return v0
.end method

.method protected bytesPerLine()I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lsun/misc/BASE64Decoder;
    const/16 v1, 0x48

    move v0, v1

    .end local v0    # "this":Lsun/misc/BASE64Decoder;
    return v0
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    move-object/from16 v0, p0

    .local v0, "this":Lsun/misc/BASE64Decoder;
    move-object/from16 v1, p1

    .local v1, "inStream":Ljava/io/PushbackInputStream;
    move-object/from16 v2, p2

    .local v2, "outStream":Ljava/io/OutputStream;
    move/from16 v3, p3

    .local v3, "rem":I
    const/4 v9, -0x1

    move v5, v9

    .local v5, "a":B
    const/4 v9, -0x1

    move v6, v9

    .local v6, "b":B
    const/4 v9, -0x1

    move v7, v9

    .local v7, "c":B
    const/4 v9, -0x1

    move v8, v9

    .line 112
    .local v8, "d":B
    move v9, v3

    const/4 v10, 0x2

    if-ge v9, v10, :cond_0

    .line 113
    new-instance v9, Lsun/misc/CEFormatException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "BASE64Decoder: Not enough bytes for an atom."

    invoke-direct {v10, v11}, Lsun/misc/CEFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 116
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/PushbackInputStream;->read()I

    move-result v9

    move v4, v9

    .line 117
    .local v4, "i":I
    move v9, v4

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 118
    new-instance v9, Lsun/misc/CEStreamExhausted;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v9

    .line 120
    :cond_1
    move v9, v4

    const/16 v10, 0xa

    if-eq v9, v10, :cond_0

    move v9, v4

    const/16 v10, 0xd

    if-eq v9, v10, :cond_0

    .line 121
    move-object v9, v0

    iget-object v9, v9, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    const/4 v10, 0x0

    move v11, v4

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 123
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    const/4 v12, 0x1

    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Lsun/misc/BASE64Decoder;->readFully(Ljava/io/InputStream;[BII)I

    move-result v9

    move v4, v9

    .line 124
    move v9, v4

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 125
    new-instance v9, Lsun/misc/CEStreamExhausted;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lsun/misc/CEStreamExhausted;-><init>()V

    throw v9

    .line 128
    :cond_2
    move v9, v3

    const/4 v10, 0x3

    if-le v9, v10, :cond_3

    move-object v9, v0

    iget-object v9, v9, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_3

    .line 129
    const/4 v9, 0x3

    move v3, v9

    .line 131
    :cond_3
    move v9, v3

    const/4 v10, 0x2

    if-le v9, v10, :cond_4

    move-object v9, v0

    iget-object v9, v9, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_4

    .line 132
    const/4 v9, 0x2

    move v3, v9

    .line 134
    :cond_4
    move v9, v3

    packed-switch v9, :pswitch_data_0

    .line 147
    :goto_0
    move v9, v3

    packed-switch v9, :pswitch_data_1

    .line 161
    :goto_1
    return-void

    .line 136
    :pswitch_0
    sget-object v9, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    move-object v10, v0

    iget-object v10, v10, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    const/4 v11, 0x3

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    move v8, v9

    .line 139
    :pswitch_1
    sget-object v9, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    move-object v10, v0

    iget-object v10, v10, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    const/4 v11, 0x2

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    move v7, v9

    .line 142
    :pswitch_2
    sget-object v9, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    move-object v10, v0

    iget-object v10, v10, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    move v6, v9

    .line 143
    sget-object v9, Lsun/misc/BASE64Decoder;->pem_convert_array:[B

    move-object v10, v0

    iget-object v10, v10, Lsun/misc/BASE64Decoder;->decode_buffer:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    move v5, v9

    goto :goto_0

    .line 149
    :pswitch_3
    move-object v9, v2

    move v10, v5

    const/4 v11, 0x2

    shl-int/lit8 v10, v10, 0x2

    const/16 v11, 0xfc

    and-int/lit16 v10, v10, 0xfc

    move v11, v6

    const/4 v12, 0x4

    ushr-int/lit8 v11, v11, 0x4

    const/4 v12, 0x3

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    .line 150
    goto :goto_1

    .line 152
    :pswitch_4
    move-object v9, v2

    move v10, v5

    const/4 v11, 0x2

    shl-int/lit8 v10, v10, 0x2

    const/16 v11, 0xfc

    and-int/lit16 v10, v10, 0xfc

    move v11, v6

    const/4 v12, 0x4

    ushr-int/lit8 v11, v11, 0x4

    const/4 v12, 0x3

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    .line 153
    move-object v9, v2

    move v10, v6

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    const/16 v11, 0xf0

    and-int/lit16 v10, v10, 0xf0

    move v11, v7

    const/4 v12, 0x2

    ushr-int/lit8 v11, v11, 0x2

    const/16 v12, 0xf

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    .line 154
    goto :goto_1

    .line 156
    :pswitch_5
    move-object v9, v2

    move v10, v5

    const/4 v11, 0x2

    shl-int/lit8 v10, v10, 0x2

    const/16 v11, 0xfc

    and-int/lit16 v10, v10, 0xfc

    move v11, v6

    const/4 v12, 0x4

    ushr-int/lit8 v11, v11, 0x4

    const/4 v12, 0x3

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    .line 157
    move-object v9, v2

    move v10, v6

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    const/16 v11, 0xf0

    and-int/lit16 v10, v10, 0xf0

    move v11, v7

    const/4 v12, 0x2

    ushr-int/lit8 v11, v11, 0x2

    const/16 v12, 0xf

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    .line 158
    move-object v9, v2

    move v10, v7

    const/4 v11, 0x6

    shl-int/lit8 v10, v10, 0x6

    const/16 v11, 0xc0

    and-int/lit16 v10, v10, 0xc0

    move v11, v8

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 147
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
