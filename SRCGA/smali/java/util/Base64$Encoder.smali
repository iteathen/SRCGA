.class public Ljava/util/Base64$Encoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# static fields
.field private static final CRLF:[B

.field private static final MIMELINEMAX:I = 0x4c

.field static final RFC2045:Ljava/util/Base64$Encoder;

.field static final RFC4648:Ljava/util/Base64$Encoder;

.field static final RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

.field private static final toBase64:[C

.field private static final toBase64URL:[C


# instance fields
.field private final doPadding:Z

.field private final isURL:Z

.field private final linemax:I

.field private final newline:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 209
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/Base64$Encoder;->toBase64:[C

    .line 222
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    .line 231
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Ljava/util/Base64$Encoder;->CRLF:[B

    .line 233
    new-instance v0, Ljava/util/Base64$Encoder;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    .line 234
    new-instance v0, Ljava/util/Base64$Encoder;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

    .line 235
    new-instance v0, Ljava/util/Base64$Encoder;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const/4 v2, 0x0

    sget-object v3, Ljava/util/Base64$Encoder;->CRLF:[B

    const/16 v4, 0x4c

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC2045:Ljava/util/Base64$Encoder;

    return-void

    .line 209
    nop

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

    .line 222
    :array_1
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
        0x2ds
        0x5fs
    .end array-data

    .line 231
    :array_2
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .locals 7

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Encoder;
    move v1, p1

    .local v1, "isURL":Z
    move-object v2, p2

    .local v2, "newline":[B
    move v3, p3

    .local v3, "linemax":I
    move v4, p4

    .local v4, "doPadding":Z
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 198
    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Ljava/util/Base64$Encoder;->isURL:Z

    .line 199
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/util/Base64$Encoder;->newline:[B

    .line 200
    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljava/util/Base64$Encoder;->linemax:I

    .line 201
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Ljava/util/Base64$Encoder;->doPadding:Z

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Z[BIZLjava/util/Base64$1;)V
    .locals 11

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Encoder;
    move v1, p1

    .local v1, "x0":Z
    move-object v2, p2

    .local v2, "x1":[B
    move v3, p3

    .local v3, "x2":I
    move v4, p4

    .local v4, "x3":Z
    move-object/from16 v5, p5

    .local v5, "x4":Ljava/util/Base64$1;
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-void
.end method

.method static synthetic access$200()[C
    .locals 1

    .prologue
    .line 190
    sget-object v0, Ljava/util/Base64$Encoder;->toBase64:[C

    return-object v0
.end method

.method static synthetic access$300()[C
    .locals 1

    .prologue
    .line 190
    sget-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    return-object v0
.end method

.method private encode0([BII[B)I
    .locals 24

    .prologue
    .line 602
    move-object/from16 v2, p0

    .local v2, "this":Ljava/util/Base64$Encoder;
    move-object/from16 v3, p1

    .local v3, "src":[B
    move/from16 v4, p2

    .local v4, "off":I
    move/from16 v5, p3

    .local v5, "end":I
    move-object/from16 v6, p4

    .local v6, "dst":[B
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->isURL:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    sget-object v18, Ljava/util/Base64$Encoder;->toBase64URL:[C

    :goto_0
    move-object/from16 v7, v18

    .line 603
    .local v7, "base64":[C
    move/from16 v18, v4

    move/from16 v8, v18

    .line 604
    .local v8, "sp":I
    move/from16 v18, v5

    move/from16 v19, v4

    sub-int v18, v18, v19

    const/16 v19, 0x3

    div-int/lit8 v18, v18, 0x3

    const/16 v19, 0x3

    mul-int/lit8 v18, v18, 0x3

    move/from16 v9, v18

    .line 605
    .local v9, "slen":I
    move/from16 v18, v4

    move/from16 v19, v9

    add-int v18, v18, v19

    move/from16 v10, v18

    .line 606
    .local v10, "sl":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v18, v0

    if-lez v18, :cond_0

    move/from16 v18, v9

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v19, v0

    const/16 v20, 0x4

    div-int/lit8 v19, v19, 0x4

    const/16 v20, 0x3

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 607
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v18, v0

    const/16 v19, 0x4

    div-int/lit8 v18, v18, 0x4

    const/16 v19, 0x3

    mul-int/lit8 v18, v18, 0x3

    move/from16 v9, v18

    .line 608
    :cond_0
    const/16 v18, 0x0

    move/from16 v11, v18

    .line 609
    .local v11, "dp":I
    :goto_1
    move/from16 v18, v8

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 610
    move/from16 v18, v8

    move/from16 v19, v9

    add-int v18, v18, v19

    move/from16 v19, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v12, v18

    .line 611
    .local v12, "sl0":I
    move/from16 v18, v8

    move/from16 v13, v18

    .local v13, "sp0":I
    move/from16 v18, v11

    move/from16 v14, v18

    .local v14, "dp0":I
    :goto_2
    move/from16 v18, v13

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 612
    move-object/from16 v18, v3

    move/from16 v19, v13

    add-int/lit8 v13, v13, 0x1

    aget-byte v18, v18, v19

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0x10

    shl-int/lit8 v18, v18, 0x10

    move-object/from16 v19, v3

    move/from16 v20, v13

    add-int/lit8 v13, v13, 0x1

    aget-byte v19, v19, v20

    const/16 v20, 0xff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    const/16 v20, 0x8

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    move-object/from16 v19, v3

    move/from16 v20, v13

    add-int/lit8 v13, v13, 0x1

    aget-byte v19, v19, v20

    const/16 v20, 0xff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v18, v18, v19

    move/from16 v15, v18

    .line 615
    .local v15, "bits":I
    move-object/from16 v18, v6

    move/from16 v19, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v20, v7

    move/from16 v21, v15

    const/16 v22, 0x12

    ushr-int/lit8 v21, v21, 0x12

    const/16 v22, 0x3f

    and-int/lit8 v21, v21, 0x3f

    aget-char v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 616
    move-object/from16 v18, v6

    move/from16 v19, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v20, v7

    move/from16 v21, v15

    const/16 v22, 0xc

    ushr-int/lit8 v21, v21, 0xc

    const/16 v22, 0x3f

    and-int/lit8 v21, v21, 0x3f

    aget-char v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 617
    move-object/from16 v18, v6

    move/from16 v19, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v20, v7

    move/from16 v21, v15

    const/16 v22, 0x6

    ushr-int/lit8 v21, v21, 0x6

    const/16 v22, 0x3f

    and-int/lit8 v21, v21, 0x3f

    aget-char v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 618
    move-object/from16 v18, v6

    move/from16 v19, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v20, v7

    move/from16 v21, v15

    const/16 v22, 0x3f

    and-int/lit8 v21, v21, 0x3f

    aget-char v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 619
    goto/16 :goto_2

    .line 602
    .end local v7    # "base64":[C
    .end local v8    # "sp":I
    .end local v9    # "slen":I
    .end local v10    # "sl":I
    .end local v11    # "dp":I
    .end local v12    # "sl0":I
    .end local v13    # "sp0":I
    .end local v14    # "dp0":I
    .end local v15    # "bits":I
    :cond_1
    sget-object v18, Ljava/util/Base64$Encoder;->toBase64:[C

    goto/16 :goto_0

    .line 620
    .restart local v7    # "base64":[C
    .restart local v8    # "sp":I
    .restart local v9    # "slen":I
    .restart local v10    # "sl":I
    .restart local v11    # "dp":I
    .restart local v12    # "sl0":I
    .restart local v13    # "sp0":I
    .restart local v14    # "dp0":I
    :cond_2
    move/from16 v18, v12

    move/from16 v19, v8

    sub-int v18, v18, v19

    const/16 v19, 0x3

    div-int/lit8 v18, v18, 0x3

    const/16 v19, 0x4

    mul-int/lit8 v18, v18, 0x4

    move/from16 v13, v18

    .line 621
    .local v13, "dlen":I
    move/from16 v18, v11

    move/from16 v19, v13

    add-int v18, v18, v19

    move/from16 v11, v18

    .line 622
    move/from16 v18, v12

    move/from16 v8, v18

    .line 623
    move/from16 v18, v13

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move/from16 v18, v8

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 624
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v18, v0

    move-object/from16 v14, v18

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    .end local v14    # "dp0":I
    move/from16 v15, v18

    const/16 v18, 0x0

    move/from16 v16, v18

    :goto_3
    move/from16 v18, v16

    move/from16 v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    move-object/from16 v18, v14

    move/from16 v19, v16

    aget-byte v18, v18, v19

    move/from16 v17, v18

    .line 625
    .local v17, "b":B
    move-object/from16 v18, v6

    move/from16 v19, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v17

    aput-byte v20, v18, v19

    .line 624
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 628
    .end local v17    # "b":B
    :cond_3
    goto/16 :goto_1

    .line 629
    .end local v12    # "sl0":I
    .end local v13    # "dlen":I
    :cond_4
    move/from16 v18, v8

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 630
    move-object/from16 v18, v3

    move/from16 v19, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v18, v18, v19

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v12, v18

    .line 631
    .local v12, "b0":I
    move-object/from16 v18, v6

    move/from16 v19, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v7

    move/from16 v21, v12

    const/16 v22, 0x2

    shr-int/lit8 v21, v21, 0x2

    aget-char v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 632
    move/from16 v18, v8

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 633
    move-object/from16 v18, v6

    move/from16 v19, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v7

    move/from16 v21, v12

    const/16 v22, 0x4

    shl-int/lit8 v21, v21, 0x4

    const/16 v22, 0x3f

    and-int/lit8 v21, v21, 0x3f

    aget-char v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 634
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 635
    move-object/from16 v18, v6

    move/from16 v19, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v20, 0x3d

    aput-byte v20, v18, v19

    .line 636
    move-object/from16 v18, v6

    move/from16 v19, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v20, 0x3d

    aput-byte v20, v18, v19

    .line 647
    .end local v12    # "b0":I
    :cond_5
    :goto_4
    move/from16 v18, v11

    move/from16 v2, v18

    .end local v2    # "this":Ljava/util/Base64$Encoder;
    return v2

    .line 639
    .restart local v2    # "this":Ljava/util/Base64$Encoder;
    .restart local v12    # "b0":I
    :cond_6
    move-object/from16 v18, v3

    move/from16 v19, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v18, v18, v19

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v13, v18

    .line 640
    .local v13, "b1":I
    move-object/from16 v18, v6

    move/from16 v19, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v7

    move/from16 v21, v12

    const/16 v22, 0x4

    shl-int/lit8 v21, v21, 0x4

    const/16 v22, 0x3f

    and-int/lit8 v21, v21, 0x3f

    move/from16 v22, v13

    const/16 v23, 0x4

    shr-int/lit8 v22, v22, 0x4

    or-int v21, v21, v22

    aget-char v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 641
    move-object/from16 v18, v6

    move/from16 v19, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v7

    move/from16 v21, v13

    const/16 v22, 0x2

    shl-int/lit8 v21, v21, 0x2

    const/16 v22, 0x3f

    and-int/lit8 v21, v21, 0x3f

    aget-char v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 642
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 643
    move-object/from16 v18, v6

    move/from16 v19, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v20, 0x3d

    aput-byte v20, v18, v19

    goto :goto_4
.end method

.method private encodeArray(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
    .locals 29

    .prologue
    .line 448
    move-object/from16 v2, p0

    .local v2, "this":Ljava/util/Base64$Encoder;
    move-object/from16 v3, p1

    .local v3, "src":Ljava/nio/ByteBuffer;
    move-object/from16 v4, p2

    .local v4, "dst":Ljava/nio/ByteBuffer;
    move/from16 v5, p3

    .local v5, "bytesOut":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->isURL:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    sget-object v23, Ljava/util/Base64$Encoder;->toBase64URL:[C

    :goto_0
    move-object/from16 v6, v23

    .line 449
    .local v6, "base64":[C
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v23

    move-object/from16 v7, v23

    .line 450
    .local v7, "sa":[B
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v23

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->position()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v8, v23

    .line 451
    .local v8, "sp":I
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v23

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v9, v23

    .line 452
    .local v9, "sl":I
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v23

    move-object/from16 v10, v23

    .line 453
    .local v10, "da":[B
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v23

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->position()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v11, v23

    .line 454
    .local v11, "dp":I
    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v23

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v12, v23

    .line 455
    .local v12, "dl":I
    move/from16 v23, v11

    move/from16 v13, v23

    .line 456
    .local v13, "dp00":I
    const/16 v23, 0x0

    move/from16 v14, v23

    .line 457
    .local v14, "dpos":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v23, v0

    if-lez v23, :cond_0

    move/from16 v23, v5

    if-lez v23, :cond_0

    .line 458
    move/from16 v23, v5

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    rem-int v23, v23, v24

    move/from16 v14, v23

    .line 460
    :cond_0
    move/from16 v23, v14

    move-object/from16 v24, v2

    :try_start_0
    move-object/from16 v0, v24

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    move/from16 v23, v8

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 461
    move/from16 v23, v11

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v23, v23, v24

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    .line 462
    move/from16 v23, v11

    move/from16 v24, v13

    sub-int v23, v23, v24

    move/from16 v24, v5

    add-int v23, v23, v24

    move/from16 v15, v23

    .line 520
    move-object/from16 v23, v3

    move/from16 v24, v8

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v23

    .line 521
    move-object/from16 v23, v4

    move/from16 v24, v11

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v23

    move/from16 v23, v15

    move/from16 v2, v23

    .end local v2    # "this":Ljava/util/Base64$Encoder;
    :goto_1
    return v2

    .line 448
    .end local v6    # "base64":[C
    .end local v7    # "sa":[B
    .end local v8    # "sp":I
    .end local v9    # "sl":I
    .end local v10    # "da":[B
    .end local v11    # "dp":I
    .end local v12    # "dl":I
    .end local v13    # "dp00":I
    .end local v14    # "dpos":I
    .restart local v2    # "this":Ljava/util/Base64$Encoder;
    :cond_1
    sget-object v23, Ljava/util/Base64$Encoder;->toBase64:[C

    goto/16 :goto_0

    .line 463
    .restart local v6    # "base64":[C
    .restart local v7    # "sa":[B
    .restart local v8    # "sp":I
    .restart local v9    # "sl":I
    .restart local v10    # "da":[B
    .restart local v11    # "dp":I
    .restart local v12    # "dl":I
    .restart local v13    # "dp00":I
    .restart local v14    # "dpos":I
    :cond_2
    move-object/from16 v23, v2

    :try_start_1
    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v23, v0

    move-object/from16 v15, v23

    move-object/from16 v23, v15

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v16, v23

    const/16 v23, 0x0

    move/from16 v17, v23

    :goto_2
    move/from16 v23, v17

    move/from16 v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    move-object/from16 v23, v15

    move/from16 v24, v17

    aget-byte v23, v23, v24

    move/from16 v18, v23

    .line 464
    .local v18, "b":B
    move-object/from16 v23, v4

    move/from16 v24, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v25, v18

    invoke-virtual/range {v23 .. v25}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v23

    .line 463
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 466
    .end local v18    # "b":B
    :cond_3
    const/16 v23, 0x0

    move/from16 v14, v23

    .line 468
    :cond_4
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v8

    sub-int v24, v24, v25

    const/16 v25, 0x3

    div-int/lit8 v24, v24, 0x3

    const/16 v25, 0x3

    mul-int/lit8 v24, v24, 0x3

    add-int v23, v23, v24

    move/from16 v9, v23

    .line 469
    :goto_3
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 470
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v23, v0

    if-lez v23, :cond_5

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v23, v0

    move/from16 v24, v14

    sub-int v23, v23, v24

    const/16 v24, 0x4

    div-int/lit8 v23, v23, 0x4

    const/16 v24, 0x3

    mul-int/lit8 v23, v23, 0x3

    :goto_4
    move/from16 v15, v23

    .line 472
    .local v15, "slen":I
    move/from16 v23, v8

    move/from16 v24, v15

    add-int v23, v23, v24

    move/from16 v24, v9

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v23

    move/from16 v16, v23

    .line 473
    .local v16, "sl0":I
    move/from16 v23, v8

    move/from16 v17, v23

    .local v17, "sp0":I
    move/from16 v23, v11

    move/from16 v18, v23

    .local v18, "dp0":I
    :goto_5
    move/from16 v23, v17

    move/from16 v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 474
    move/from16 v23, v18

    const/16 v24, 0x4

    add-int/lit8 v23, v23, 0x4

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 475
    move/from16 v23, v17

    move/from16 v8, v23

    move/from16 v23, v18

    move/from16 v11, v23

    .line 476
    move/from16 v23, v18

    move/from16 v24, v13

    sub-int v23, v23, v24

    move/from16 v24, v5

    add-int v23, v23, v24

    move/from16 v19, v23

    .line 520
    move-object/from16 v23, v3

    move/from16 v24, v8

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v23

    .line 521
    move-object/from16 v23, v4

    move/from16 v24, v11

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v23

    move/from16 v23, v19

    move/from16 v2, v23

    goto/16 :goto_1

    .line 470
    .end local v15    # "slen":I
    .end local v16    # "sl0":I
    .end local v17    # "sp0":I
    .end local v18    # "dp0":I
    :cond_5
    move/from16 v23, v9

    move/from16 v24, v8

    sub-int v23, v23, v24

    goto :goto_4

    .line 478
    .restart local v15    # "slen":I
    .restart local v16    # "sl0":I
    .restart local v17    # "sp0":I
    .restart local v18    # "dp0":I
    :cond_6
    move-object/from16 v23, v7

    move/from16 v24, v17

    add-int/lit8 v17, v17, 0x1

    :try_start_2
    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    const/16 v24, 0x10

    shl-int/lit8 v23, v23, 0x10

    move-object/from16 v24, v7

    move/from16 v25, v17

    add-int/lit8 v17, v17, 0x1

    aget-byte v24, v24, v25

    const/16 v25, 0xff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    const/16 v25, 0x8

    shl-int/lit8 v24, v24, 0x8

    or-int v23, v23, v24

    move-object/from16 v24, v7

    move/from16 v25, v17

    add-int/lit8 v17, v17, 0x1

    aget-byte v24, v24, v25

    const/16 v25, 0xff

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    or-int v23, v23, v24

    move/from16 v19, v23

    .line 481
    .local v19, "bits":I
    move-object/from16 v23, v10

    move/from16 v24, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v25, v6

    move/from16 v26, v19

    const/16 v27, 0x12

    ushr-int/lit8 v26, v26, 0x12

    const/16 v27, 0x3f

    and-int/lit8 v26, v26, 0x3f

    aget-char v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 482
    move-object/from16 v23, v10

    move/from16 v24, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v25, v6

    move/from16 v26, v19

    const/16 v27, 0xc

    ushr-int/lit8 v26, v26, 0xc

    const/16 v27, 0x3f

    and-int/lit8 v26, v26, 0x3f

    aget-char v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 483
    move-object/from16 v23, v10

    move/from16 v24, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v25, v6

    move/from16 v26, v19

    const/16 v27, 0x6

    ushr-int/lit8 v26, v26, 0x6

    const/16 v27, 0x3f

    and-int/lit8 v26, v26, 0x3f

    aget-char v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 484
    move-object/from16 v23, v10

    move/from16 v24, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v25, v6

    move/from16 v26, v19

    const/16 v27, 0x3f

    and-int/lit8 v26, v26, 0x3f

    aget-char v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 485
    goto/16 :goto_5

    .line 486
    .end local v19    # "bits":I
    :cond_7
    move/from16 v23, v16

    move/from16 v24, v8

    sub-int v23, v23, v24

    const/16 v24, 0x3

    div-int/lit8 v23, v23, 0x3

    const/16 v24, 0x4

    mul-int/lit8 v23, v23, 0x4

    move/from16 v17, v23

    .line 487
    .local v17, "n":I
    move/from16 v23, v14

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v14, v23

    .line 488
    move/from16 v23, v11

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v11, v23

    .line 489
    move/from16 v23, v16

    move/from16 v8, v23

    .line 490
    move/from16 v23, v14

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    move/from16 v23, v8

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 491
    move/from16 v23, v11

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int v23, v23, v24

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    .line 492
    move/from16 v23, v11

    move/from16 v24, v13

    sub-int v23, v23, v24

    move/from16 v24, v5

    add-int v23, v23, v24

    move/from16 v18, v23

    .line 520
    .end local v18    # "dp0":I
    move-object/from16 v23, v3

    move/from16 v24, v8

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v23

    .line 521
    move-object/from16 v23, v4

    move/from16 v24, v11

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v23

    move/from16 v23, v18

    move/from16 v2, v23

    goto/16 :goto_1

    .line 493
    .restart local v18    # "dp0":I
    :cond_8
    move-object/from16 v23, v2

    :try_start_3
    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v23, v0

    move-object/from16 v18, v23

    move-object/from16 v23, v18

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    .end local v18    # "dp0":I
    move/from16 v19, v23

    const/16 v23, 0x0

    move/from16 v20, v23

    :goto_6
    move/from16 v23, v20

    move/from16 v24, v19

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    move-object/from16 v23, v18

    move/from16 v24, v20

    aget-byte v23, v23, v24

    move/from16 v21, v23

    .line 494
    .local v21, "b":B
    move-object/from16 v23, v10

    move/from16 v24, v11

    add-int/lit8 v11, v11, 0x1

    move/from16 v25, v21

    aput-byte v25, v23, v24

    .line 493
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 496
    .end local v21    # "b":B
    :cond_9
    const/16 v23, 0x0

    move/from16 v14, v23

    .line 498
    :cond_a
    goto/16 :goto_3

    .line 499
    .end local v15    # "slen":I
    .end local v16    # "sl0":I
    .end local v17    # "n":I
    :cond_b
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v23

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v9, v23

    .line 500
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    move/from16 v23, v12

    move/from16 v24, v11

    const/16 v25, 0x4

    add-int/lit8 v24, v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_c

    .line 501
    move-object/from16 v23, v7

    move/from16 v24, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v15, v23

    .line 502
    .local v15, "b0":I
    move-object/from16 v23, v10

    move/from16 v24, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v25, v6

    move/from16 v26, v15

    const/16 v27, 0x2

    shr-int/lit8 v26, v26, 0x2

    aget-char v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 503
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 504
    move-object/from16 v23, v10

    move/from16 v24, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v25, v6

    move/from16 v26, v15

    const/16 v27, 0x4

    shl-int/lit8 v26, v26, 0x4

    const/16 v27, 0x3f

    and-int/lit8 v26, v26, 0x3f

    aget-char v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 505
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 506
    move-object/from16 v23, v10

    move/from16 v24, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v25, 0x3d

    aput-byte v25, v23, v24

    .line 507
    move-object/from16 v23, v10

    move/from16 v24, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v25, 0x3d

    aput-byte v25, v23, v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 518
    .end local v15    # "b0":I
    :cond_c
    :goto_7
    move/from16 v23, v11

    move/from16 v24, v13

    sub-int v23, v23, v24

    move/from16 v24, v5

    add-int v23, v23, v24

    move/from16 v15, v23

    .line 520
    move-object/from16 v23, v3

    move/from16 v24, v8

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v23

    .line 521
    move-object/from16 v23, v4

    move/from16 v24, v11

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v23

    move/from16 v23, v15

    move/from16 v2, v23

    goto/16 :goto_1

    .line 510
    .restart local v15    # "b0":I
    :cond_d
    move-object/from16 v23, v7

    move/from16 v24, v8

    add-int/lit8 v8, v8, 0x1

    :try_start_4
    aget-byte v23, v23, v24

    const/16 v24, 0xff

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v16, v23

    .line 511
    .local v16, "b1":I
    move-object/from16 v23, v10

    move/from16 v24, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v25, v6

    move/from16 v26, v15

    const/16 v27, 0x4

    shl-int/lit8 v26, v26, 0x4

    const/16 v27, 0x3f

    and-int/lit8 v26, v26, 0x3f

    move/from16 v27, v16

    const/16 v28, 0x4

    shr-int/lit8 v27, v27, 0x4

    or-int v26, v26, v27

    aget-char v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 512
    move-object/from16 v23, v10

    move/from16 v24, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v25, v6

    move/from16 v26, v16

    const/16 v27, 0x2

    shl-int/lit8 v26, v26, 0x2

    const/16 v27, 0x3f

    and-int/lit8 v26, v26, 0x3f

    aget-char v25, v25, v26

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 513
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 514
    move-object/from16 v23, v10

    move/from16 v24, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v25, 0x3d

    aput-byte v25, v23, v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    .line 520
    .end local v15    # "b0":I
    .end local v16    # "b1":I
    :catchall_0
    move-exception v23

    move-object/from16 v22, v23

    move-object/from16 v23, v3

    move/from16 v24, v8

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v23

    .line 521
    move-object/from16 v23, v4

    move/from16 v24, v11

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v23

    move-object/from16 v23, v22

    throw v23
.end method

.method private encodeBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
    .locals 27

    .prologue
    .line 526
    move-object/from16 v2, p0

    .local v2, "this":Ljava/util/Base64$Encoder;
    move-object/from16 v3, p1

    .local v3, "src":Ljava/nio/ByteBuffer;
    move-object/from16 v4, p2

    .local v4, "dst":Ljava/nio/ByteBuffer;
    move/from16 v5, p3

    .local v5, "bytesOut":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->isURL:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    sget-object v21, Ljava/util/Base64$Encoder;->toBase64URL:[C

    :goto_0
    move-object/from16 v6, v21

    .line 527
    .local v6, "base64":[C
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    move/from16 v7, v21

    .line 528
    .local v7, "sp":I
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->limit()I

    move-result v21

    move/from16 v8, v21

    .line 529
    .local v8, "sl":I
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    move/from16 v9, v21

    .line 530
    .local v9, "dp":I
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->limit()I

    move-result v21

    move/from16 v10, v21

    .line 531
    .local v10, "dl":I
    move/from16 v21, v9

    move/from16 v11, v21

    .line 533
    .local v11, "dp00":I
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 534
    .local v12, "dpos":I
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v21, v0

    if-lez v21, :cond_0

    move/from16 v21, v5

    if-lez v21, :cond_0

    .line 535
    move/from16 v21, v5

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    rem-int v21, v21, v22

    move/from16 v12, v21

    .line 537
    :cond_0
    move/from16 v21, v12

    move-object/from16 v22, v2

    :try_start_0
    move-object/from16 v0, v22

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    move/from16 v21, v7

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 538
    move/from16 v21, v9

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v21, v21, v22

    move/from16 v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 539
    move/from16 v21, v9

    move/from16 v22, v11

    sub-int v21, v21, v22

    move/from16 v22, v5

    add-int v21, v21, v22

    move/from16 v13, v21

    .line 596
    move-object/from16 v21, v3

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v21

    .line 597
    move-object/from16 v21, v4

    move/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v21

    move/from16 v21, v13

    move/from16 v2, v21

    .end local v2    # "this":Ljava/util/Base64$Encoder;
    :goto_1
    return v2

    .line 526
    .end local v6    # "base64":[C
    .end local v7    # "sp":I
    .end local v8    # "sl":I
    .end local v9    # "dp":I
    .end local v10    # "dl":I
    .end local v11    # "dp00":I
    .end local v12    # "dpos":I
    .restart local v2    # "this":Ljava/util/Base64$Encoder;
    :cond_1
    sget-object v21, Ljava/util/Base64$Encoder;->toBase64:[C

    goto/16 :goto_0

    .line 540
    .restart local v6    # "base64":[C
    .restart local v7    # "sp":I
    .restart local v8    # "sl":I
    .restart local v9    # "dp":I
    .restart local v10    # "dl":I
    .restart local v11    # "dp00":I
    .restart local v12    # "dpos":I
    :cond_2
    move-object/from16 v21, v2

    :try_start_1
    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v14, v21

    const/16 v21, 0x0

    move/from16 v15, v21

    :goto_2
    move/from16 v21, v15

    move/from16 v22, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    move-object/from16 v21, v13

    move/from16 v22, v15

    aget-byte v21, v21, v22

    move/from16 v16, v21

    .line 541
    .local v16, "b":B
    move-object/from16 v21, v4

    move/from16 v22, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v23, v16

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 540
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 543
    .end local v16    # "b":B
    :cond_3
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 545
    :cond_4
    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v7

    sub-int v22, v22, v23

    const/16 v23, 0x3

    div-int/lit8 v22, v22, 0x3

    const/16 v23, 0x3

    mul-int/lit8 v22, v22, 0x3

    add-int v21, v21, v22

    move/from16 v8, v21

    .line 546
    :goto_3
    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 547
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v21, v0

    if-lez v21, :cond_5

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v21, v0

    move/from16 v22, v12

    sub-int v21, v21, v22

    const/16 v22, 0x4

    div-int/lit8 v21, v21, 0x4

    const/16 v22, 0x3

    mul-int/lit8 v21, v21, 0x3

    :goto_4
    move/from16 v13, v21

    .line 549
    .local v13, "slen":I
    move/from16 v21, v7

    move/from16 v22, v13

    add-int v21, v21, v22

    move/from16 v22, v8

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    move/from16 v14, v21

    .line 550
    .local v14, "sl0":I
    move/from16 v21, v7

    move/from16 v15, v21

    .local v15, "sp0":I
    move/from16 v21, v9

    move/from16 v16, v21

    .local v16, "dp0":I
    :goto_5
    move/from16 v21, v15

    move/from16 v22, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 551
    move/from16 v21, v16

    const/16 v22, 0x4

    add-int/lit8 v21, v21, 0x4

    move/from16 v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 552
    move/from16 v21, v15

    move/from16 v7, v21

    move/from16 v21, v16

    move/from16 v9, v21

    .line 553
    move/from16 v21, v16

    move/from16 v22, v11

    sub-int v21, v21, v22

    move/from16 v22, v5

    add-int v21, v21, v22

    move/from16 v17, v21

    .line 596
    move-object/from16 v21, v3

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v21

    .line 597
    move-object/from16 v21, v4

    move/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v21

    move/from16 v21, v17

    move/from16 v2, v21

    goto/16 :goto_1

    .line 547
    .end local v13    # "slen":I
    .end local v14    # "sl0":I
    .end local v15    # "sp0":I
    .end local v16    # "dp0":I
    :cond_5
    move/from16 v21, v8

    move/from16 v22, v7

    sub-int v21, v21, v22

    goto :goto_4

    .line 555
    .restart local v13    # "slen":I
    .restart local v14    # "sl0":I
    .restart local v15    # "sp0":I
    .restart local v16    # "dp0":I
    :cond_6
    move-object/from16 v21, v3

    move/from16 v22, v15

    add-int/lit8 v15, v15, 0x1

    :try_start_2
    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v21

    const/16 v22, 0xff

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    const/16 v22, 0x10

    shl-int/lit8 v21, v21, 0x10

    move-object/from16 v22, v3

    move/from16 v23, v15

    add-int/lit8 v15, v15, 0x1

    .line 556
    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v22

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    const/16 v23, 0x8

    shl-int/lit8 v22, v22, 0x8

    or-int v21, v21, v22

    move-object/from16 v22, v3

    move/from16 v23, v15

    add-int/lit8 v15, v15, 0x1

    .line 557
    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v22

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    or-int v21, v21, v22

    move/from16 v17, v21

    .line 558
    .local v17, "bits":I
    move-object/from16 v21, v4

    move/from16 v22, v16

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v23, v6

    move/from16 v24, v17

    const/16 v25, 0x12

    ushr-int/lit8 v24, v24, 0x12

    const/16 v25, 0x3f

    and-int/lit8 v24, v24, 0x3f

    aget-char v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 559
    move-object/from16 v21, v4

    move/from16 v22, v16

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v23, v6

    move/from16 v24, v17

    const/16 v25, 0xc

    ushr-int/lit8 v24, v24, 0xc

    const/16 v25, 0x3f

    and-int/lit8 v24, v24, 0x3f

    aget-char v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 560
    move-object/from16 v21, v4

    move/from16 v22, v16

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v23, v6

    move/from16 v24, v17

    const/16 v25, 0x6

    ushr-int/lit8 v24, v24, 0x6

    const/16 v25, 0x3f

    and-int/lit8 v24, v24, 0x3f

    aget-char v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 561
    move-object/from16 v21, v4

    move/from16 v22, v16

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v23, v6

    move/from16 v24, v17

    const/16 v25, 0x3f

    and-int/lit8 v24, v24, 0x3f

    aget-char v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 562
    goto/16 :goto_5

    .line 563
    .end local v17    # "bits":I
    :cond_7
    move/from16 v21, v14

    move/from16 v22, v7

    sub-int v21, v21, v22

    const/16 v22, 0x3

    div-int/lit8 v21, v21, 0x3

    const/16 v22, 0x4

    mul-int/lit8 v21, v21, 0x4

    move/from16 v15, v21

    .line 564
    .local v15, "n":I
    move/from16 v21, v12

    move/from16 v22, v15

    add-int v21, v21, v22

    move/from16 v12, v21

    .line 565
    move/from16 v21, v9

    move/from16 v22, v15

    add-int v21, v21, v22

    move/from16 v9, v21

    .line 566
    move/from16 v21, v14

    move/from16 v7, v21

    .line 567
    move/from16 v21, v12

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    move/from16 v21, v7

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 568
    move/from16 v21, v9

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int v21, v21, v22

    move/from16 v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 569
    move/from16 v21, v9

    move/from16 v22, v11

    sub-int v21, v21, v22

    move/from16 v22, v5

    add-int v21, v21, v22

    move/from16 v16, v21

    .line 596
    .end local v16    # "dp0":I
    move-object/from16 v21, v3

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v21

    .line 597
    move-object/from16 v21, v4

    move/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v21

    move/from16 v21, v16

    move/from16 v2, v21

    goto/16 :goto_1

    .line 570
    .restart local v16    # "dp0":I
    :cond_8
    move-object/from16 v21, v2

    :try_start_3
    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v21, v0

    move-object/from16 v16, v21

    move-object/from16 v21, v16

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    .end local v16    # "dp0":I
    move/from16 v17, v21

    const/16 v21, 0x0

    move/from16 v18, v21

    :goto_6
    move/from16 v21, v18

    move/from16 v22, v17

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    move-object/from16 v21, v16

    move/from16 v22, v18

    aget-byte v21, v21, v22

    move/from16 v19, v21

    .line 571
    .local v19, "b":B
    move-object/from16 v21, v4

    move/from16 v22, v9

    add-int/lit8 v9, v9, 0x1

    move/from16 v23, v19

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 570
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 573
    .end local v19    # "b":B
    :cond_9
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 575
    :cond_a
    goto/16 :goto_3

    .line 576
    .end local v13    # "slen":I
    .end local v14    # "sl0":I
    .end local v15    # "n":I
    :cond_b
    move/from16 v21, v7

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    move/from16 v21, v10

    move/from16 v22, v9

    const/16 v23, 0x4

    add-int/lit8 v22, v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_c

    .line 577
    move-object/from16 v21, v3

    move/from16 v22, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v21

    const/16 v22, 0xff

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v13, v21

    .line 578
    .local v13, "b0":I
    move-object/from16 v21, v4

    move/from16 v22, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v23, v6

    move/from16 v24, v13

    const/16 v25, 0x2

    shr-int/lit8 v24, v24, 0x2

    aget-char v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 579
    move/from16 v21, v7

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 580
    move-object/from16 v21, v4

    move/from16 v22, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v23, v6

    move/from16 v24, v13

    const/16 v25, 0x4

    shl-int/lit8 v24, v24, 0x4

    const/16 v25, 0x3f

    and-int/lit8 v24, v24, 0x3f

    aget-char v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 581
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 582
    move-object/from16 v21, v4

    move/from16 v22, v9

    add-int/lit8 v9, v9, 0x1

    const/16 v23, 0x3d

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 583
    move-object/from16 v21, v4

    move/from16 v22, v9

    add-int/lit8 v9, v9, 0x1

    const/16 v23, 0x3d

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v21

    .line 594
    .end local v13    # "b0":I
    :cond_c
    :goto_7
    move/from16 v21, v9

    move/from16 v22, v11

    sub-int v21, v21, v22

    move/from16 v22, v5

    add-int v21, v21, v22

    move/from16 v13, v21

    .line 596
    move-object/from16 v21, v3

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v21

    .line 597
    move-object/from16 v21, v4

    move/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v21

    move/from16 v21, v13

    move/from16 v2, v21

    goto/16 :goto_1

    .line 586
    .restart local v13    # "b0":I
    :cond_d
    move-object/from16 v21, v3

    move/from16 v22, v7

    add-int/lit8 v7, v7, 0x1

    :try_start_4
    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v21

    const/16 v22, 0xff

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v14, v21

    .line 587
    .local v14, "b1":I
    move-object/from16 v21, v4

    move/from16 v22, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v23, v6

    move/from16 v24, v13

    const/16 v25, 0x4

    shl-int/lit8 v24, v24, 0x4

    const/16 v25, 0x3f

    and-int/lit8 v24, v24, 0x3f

    move/from16 v25, v14

    const/16 v26, 0x4

    shr-int/lit8 v25, v25, 0x4

    or-int v24, v24, v25

    aget-char v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 588
    move-object/from16 v21, v4

    move/from16 v22, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v23, v6

    move/from16 v24, v14

    const/16 v25, 0x2

    shl-int/lit8 v24, v24, 0x2

    const/16 v25, 0x3f

    and-int/lit8 v24, v24, 0x3f

    aget-char v23, v23, v24

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v21

    .line 589
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 590
    move-object/from16 v21, v4

    move/from16 v22, v9

    add-int/lit8 v9, v9, 0x1

    const/16 v23, 0x3d

    invoke-virtual/range {v21 .. v23}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v21

    goto/16 :goto_7

    .line 596
    .end local v13    # "b0":I
    .end local v14    # "b1":I
    :catchall_0
    move-exception v21

    move-object/from16 v20, v21

    move-object/from16 v21, v3

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v21

    .line 597
    move-object/from16 v21, v4

    move/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v21

    move-object/from16 v21, v20

    throw v21
.end method

.method private final outLength(I)I
    .locals 7

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Encoder;
    move v1, p1

    .local v1, "srclen":I
    const/4 v4, 0x0

    move v2, v4

    .line 239
    .local v2, "len":I
    move-object v4, v0

    iget-boolean v4, v4, Ljava/util/Base64$Encoder;->doPadding:Z

    if-eqz v4, :cond_1

    .line 240
    const/4 v4, 0x4

    move v5, v1

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x3

    div-int/lit8 v5, v5, 0x3

    mul-int/2addr v4, v5

    move v2, v4

    .line 245
    :goto_0
    move-object v4, v0

    iget v4, v4, Ljava/util/Base64$Encoder;->linemax:I

    if-lez v4, :cond_0

    .line 246
    move v4, v2

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v0

    iget v6, v6, Ljava/util/Base64$Encoder;->linemax:I

    div-int/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$Encoder;->newline:[B

    array-length v6, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    move v2, v4

    .line 247
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Ljava/util/Base64$Encoder;
    return v0

    .line 242
    .restart local v0    # "this":Ljava/util/Base64$Encoder;
    :cond_1
    move v4, v1

    const/4 v5, 0x3

    rem-int/lit8 v4, v4, 0x3

    move v3, v4

    .line 243
    .local v3, "n":I
    const/4 v4, 0x4

    move v5, v1

    const/4 v6, 0x3

    div-int/lit8 v5, v5, 0x3

    mul-int/2addr v4, v5

    move v5, v3

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    add-int/2addr v4, v5

    move v2, v4

    goto :goto_0

    :cond_2
    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public encode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
    .locals 8

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Encoder;
    move-object v1, p1

    .local v1, "src":Ljava/nio/ByteBuffer;
    move-object v2, p2

    .local v2, "dst":Ljava/nio/ByteBuffer;
    move v3, p3

    .local v3, "bytesOut":I
    move-object v4, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljava/util/Base64$Encoder;->encodeArray(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v4

    move v0, v4

    .line 406
    .end local v0    # "this":Ljava/util/Base64$Encoder;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/util/Base64$Encoder;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljava/util/Base64$Encoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public encode([B[B)I
    .locals 10

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Encoder;
    move-object v1, p1

    .local v1, "src":[B
    move-object v2, p2

    .local v2, "dst":[B
    move-object v4, v0

    move-object v5, v1

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v4

    move v3, v4

    .line 290
    .local v3, "len":I
    move-object v4, v2

    array-length v4, v4

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 291
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Output byte array is too small for encoding all input bytes"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    :cond_0
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Ljava/util/Base64$Encoder;
    return v0
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 11

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Encoder;
    move-object v1, p1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v6

    move v2, v6

    .line 335
    .local v2, "len":I
    move v6, v2

    new-array v6, v6, [B

    move-object v3, v6

    .line 336
    .local v3, "dst":[B
    const/4 v6, 0x0

    move v4, v6

    .line 337
    .local v4, "ret":I
    move-object v6, v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 338
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    move-object v8, v1

    .line 339
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v8, v9

    move-object v9, v1

    .line 340
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    add-int/2addr v9, v10

    move-object v10, v3

    .line 338
    invoke-direct {v6, v7, v8, v9, v10}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v6

    move v4, v6

    .line 342
    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    .line 348
    :goto_0
    move v6, v4

    move-object v7, v3

    array-length v7, v7

    if-eq v6, v7, :cond_0

    .line 349
    move-object v6, v3

    move v7, v4

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    move-object v3, v6

    .line 350
    :cond_0
    move-object v6, v3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljava/util/Base64$Encoder;
    return-object v0

    .line 344
    .restart local v0    # "this":Ljava/util/Base64$Encoder;
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    move-object v5, v6

    .line 345
    .local v5, "src":[B
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 346
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    move-object v9, v5

    array-length v9, v9

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v6

    move v4, v6

    goto :goto_0
.end method

.method public encode([B)[B
    .locals 10

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Encoder;
    move-object v1, p1

    .local v1, "src":[B
    move-object v5, v0

    move-object v6, v1

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v5

    move v2, v5

    .line 262
    .local v2, "len":I
    move v5, v2

    new-array v5, v5, [B

    move-object v3, v5

    .line 263
    .local v3, "dst":[B
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v1

    array-length v8, v8

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v5

    move v4, v5

    .line 264
    .local v4, "ret":I
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-eq v5, v6, :cond_0

    .line 265
    move-object v5, v3

    move v6, v4

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v0, v5

    .line 266
    .end local v0    # "this":Ljava/util/Base64$Encoder;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/util/Base64$Encoder;
    :cond_0
    move-object v5, v3

    move-object v0, v5

    goto :goto_0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 10

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Encoder;
    move-object v1, p1

    .local v1, "src":[B
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object v3

    move-object v2, v3

    .line 316
    .local v2, "encoded":[B
    new-instance v3, Ljava/lang/String;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v2

    array-length v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/String;-><init>([BIII)V

    move-object v0, v3

    .end local v0    # "this":Ljava/util/Base64$Encoder;
    return-object v0
.end method

.method public withoutPadding()Ljava/util/Base64$Encoder;
    .locals 8

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Encoder;
    move-object v1, v0

    iget-boolean v1, v1, Ljava/util/Base64$Encoder;->doPadding:Z

    if-nez v1, :cond_0

    .line 443
    move-object v1, v0

    move-object v0, v1

    .line 444
    .end local v0    # "this":Ljava/util/Base64$Encoder;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/util/Base64$Encoder;
    :cond_0
    new-instance v1, Ljava/util/Base64$Encoder;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    iget-boolean v3, v3, Ljava/util/Base64$Encoder;->isURL:Z

    move-object v4, v0

    iget-object v4, v4, Ljava/util/Base64$Encoder;->newline:[B

    move-object v5, v0

    iget v5, v5, Ljava/util/Base64$Encoder;->linemax:I

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    move-object v0, v1

    goto :goto_0
.end method

.method public wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 10

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Encoder;
    move-object v1, p1

    .local v1, "os":Ljava/io/OutputStream;
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 425
    new-instance v2, Ljava/util/Base64$EncOutputStream;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Ljava/util/Base64$Encoder;->isURL:Z

    if-eqz v5, :cond_0

    sget-object v5, Ljava/util/Base64$Encoder;->toBase64URL:[C

    :goto_0
    move-object v6, v0

    iget-object v6, v6, Ljava/util/Base64$Encoder;->newline:[B

    move-object v7, v0

    iget v7, v7, Ljava/util/Base64$Encoder;->linemax:I

    move-object v8, v0

    iget-boolean v8, v8, Ljava/util/Base64$Encoder;->doPadding:Z

    invoke-direct/range {v3 .. v8}, Ljava/util/Base64$EncOutputStream;-><init>(Ljava/io/OutputStream;[C[BIZ)V

    move-object v0, v2

    .end local v0    # "this":Ljava/util/Base64$Encoder;
    return-object v0

    .restart local v0    # "this":Ljava/util/Base64$Encoder;
    :cond_0
    sget-object v5, Ljava/util/Base64$Encoder;->toBase64:[C

    goto :goto_0
.end method
