.class public Ljava/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field static final RFC2045:Ljava/util/Base64$Decoder;

.field static final RFC4648:Ljava/util/Base64$Decoder;

.field static final RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

.field private static final fromBase64:[I

.field private static final fromBase64URL:[I


# instance fields
.field private final isMIME:Z

.field private final isURL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 704
    const/16 v1, 0x100

    new-array v1, v1, [I

    sput-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    .line 706
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 707
    const/4 v1, 0x0

    move v0, v1

    .local v0, "i":I
    :goto_0
    move v1, v0

    # getter for: Ljava/util/Base64$Encoder;->toBase64:[C
    invoke-static {}, Ljava/util/Base64$Encoder;->access$200()[C

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 708
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    # getter for: Ljava/util/Base64$Encoder;->toBase64:[C
    invoke-static {}, Ljava/util/Base64$Encoder;->access$200()[C

    move-result-object v2

    move v3, v0

    aget-char v2, v2, v3

    move v3, v0

    aput v3, v1, v2

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_0
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    const/16 v2, 0x3d

    const/4 v3, -0x2

    aput v3, v1, v2

    .line 716
    const/16 v1, 0x100

    new-array v1, v1, [I

    sput-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    .line 719
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 720
    const/4 v1, 0x0

    move v0, v1

    :goto_1
    move v1, v0

    # getter for: Ljava/util/Base64$Encoder;->toBase64URL:[C
    invoke-static {}, Ljava/util/Base64$Encoder;->access$300()[C

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 721
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    # getter for: Ljava/util/Base64$Encoder;->toBase64URL:[C
    invoke-static {}, Ljava/util/Base64$Encoder;->access$300()[C

    move-result-object v2

    move v3, v0

    aget-char v2, v2, v3

    move v3, v0

    aput v3, v1, v2

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 722
    :cond_1
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    const/16 v2, 0x3d

    const/4 v3, -0x2

    aput v3, v1, v2

    .line 725
    new-instance v1, Ljava/util/Base64$Decoder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v1, Ljava/util/Base64$Decoder;->RFC4648:Ljava/util/Base64$Decoder;

    .line 726
    new-instance v1, Ljava/util/Base64$Decoder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v1, Ljava/util/Base64$Decoder;->RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

    .line 727
    new-instance v1, Ljava/util/Base64$Decoder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v1, Ljava/util/Base64$Decoder;->RFC2045:Ljava/util/Base64$Decoder;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 5

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Decoder;
    move v1, p1

    .local v1, "isURL":Z
    move v2, p2

    .local v2, "isMIME":Z
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 692
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Ljava/util/Base64$Decoder;->isURL:Z

    .line 693
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Ljava/util/Base64$Decoder;->isMIME:Z

    .line 694
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 686
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    return-object v0
.end method

.method private decode0([BII[B)I
    .locals 17

    .prologue
    .line 1118
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/Base64$Decoder;
    move-object/from16 v1, p1

    .local v1, "src":[B
    move/from16 v2, p2

    .local v2, "sp":I
    move/from16 v3, p3

    .local v3, "sl":I
    move-object/from16 v4, p4

    .local v4, "dst":[B
    move-object v10, v0

    iget-boolean v10, v10, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v10, :cond_2

    sget-object v10, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    :goto_0
    move-object v5, v10

    .line 1119
    .local v5, "base64":[I
    const/4 v10, 0x0

    move v6, v10

    .line 1120
    .local v6, "dp":I
    const/4 v10, 0x0

    move v7, v10

    .line 1121
    .local v7, "bits":I
    const/16 v10, 0x12

    move v8, v10

    .line 1122
    .local v8, "shiftto":I
    :goto_1
    move v10, v2

    move v11, v3

    if-ge v10, v11, :cond_7

    .line 1123
    move-object v10, v1

    move v11, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v9, v10

    .line 1124
    .local v9, "b":I
    move-object v10, v5

    move v11, v9

    aget v10, v10, v11

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v9, v11

    if-gez v10, :cond_5

    .line 1125
    move v10, v9

    const/4 v11, -0x2

    if-ne v10, v11, :cond_3

    .line 1126
    move-object v10, v0

    iget-boolean v10, v10, Ljava/util/Base64$Decoder;->isMIME:Z

    if-nez v10, :cond_7

    move v10, v8

    const/4 v11, 0x6

    if-ne v10, v11, :cond_0

    move v10, v2

    move v11, v3

    if-eq v10, v11, :cond_1

    move-object v10, v1

    move v11, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_1

    :cond_0
    move v10, v8

    const/16 v11, 0x12

    if-ne v10, v11, :cond_7

    .line 1134
    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "Input byte array has wrong 4-byte ending unit"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1118
    .end local v5    # "base64":[I
    .end local v6    # "dp":I
    .end local v7    # "bits":I
    .end local v8    # "shiftto":I
    .end local v9    # "b":I
    :cond_2
    sget-object v10, Ljava/util/Base64$Decoder;->fromBase64:[I

    goto :goto_0

    .line 1139
    .restart local v5    # "base64":[I
    .restart local v6    # "dp":I
    .restart local v7    # "bits":I
    .restart local v8    # "shiftto":I
    .restart local v9    # "b":I
    :cond_3
    move-object v10, v0

    iget-boolean v10, v10, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v10, :cond_4

    .line 1140
    goto :goto_1

    .line 1142
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Illegal base64 character "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    move v14, v2

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    aget-byte v13, v13, v14

    const/16 v14, 0x10

    .line 1144
    invoke-static {v13, v14}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1146
    :cond_5
    move v10, v7

    move v11, v9

    move v12, v8

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v7, v10

    .line 1147
    add-int/lit8 v8, v8, -0x6

    .line 1148
    move v10, v8

    if-gez v10, :cond_6

    .line 1149
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    move v12, v7

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1150
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    move v12, v7

    const/16 v13, 0x8

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1151
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    move v12, v7

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1152
    const/16 v10, 0x12

    move v8, v10

    .line 1153
    const/4 v10, 0x0

    move v7, v10

    .line 1155
    :cond_6
    goto/16 :goto_1

    .line 1157
    .end local v9    # "b":I
    :cond_7
    move v10, v8

    const/4 v11, 0x6

    if-ne v10, v11, :cond_9

    .line 1158
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    move v12, v7

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1170
    :cond_8
    :goto_2
    move v10, v2

    move v11, v3

    if-ge v10, v11, :cond_b

    move-object v10, v0

    iget-boolean v10, v10, Ljava/util/Base64$Decoder;->isMIME:Z

    if-nez v10, :cond_b

    .line 1171
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input byte array has incorrect ending byte at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1159
    :cond_9
    move v10, v8

    if-nez v10, :cond_a

    .line 1160
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    move v12, v7

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1161
    move-object v10, v4

    move v11, v6

    add-int/lit8 v6, v6, 0x1

    move v12, v7

    const/16 v13, 0x8

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    goto :goto_2

    .line 1162
    :cond_a
    move v10, v8

    const/16 v11, 0xc

    if-ne v10, v11, :cond_8

    .line 1165
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string v12, "Last unit does not have enough valid bits"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1174
    :cond_b
    move v10, v6

    move v0, v10

    .end local v0    # "this":Ljava/util/Base64$Decoder;
    return v0
.end method

.method private decodeArray(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 26

    .prologue
    .line 936
    move-object/from16 v2, p0

    .local v2, "this":Ljava/util/Base64$Decoder;
    move-object/from16 v3, p1

    .local v3, "src":Ljava/nio/ByteBuffer;
    move-object/from16 v4, p2

    .local v4, "dst":Ljava/nio/ByteBuffer;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Ljava/util/Base64$Decoder;->isURL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    sget-object v19, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    :goto_0
    move-object/from16 v5, v19

    .line 937
    .local v5, "base64":[I
    const/16 v19, 0x0

    move/from16 v6, v19

    .line 938
    .local v6, "bits":I
    const/16 v19, 0x12

    move/from16 v7, v19

    .line 939
    .local v7, "shiftto":I
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    move-object/from16 v8, v19

    .line 940
    .local v8, "sa":[B
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v19

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v9, v19

    .line 941
    .local v9, "sp":I
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v19

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->limit()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v10, v19

    .line 942
    .local v10, "sl":I
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    move-object/from16 v11, v19

    .line 943
    .local v11, "da":[B
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v19

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v12, v19

    .line 944
    .local v12, "dp":I
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v19

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->limit()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v13, v19

    .line 945
    .local v13, "dl":I
    move/from16 v19, v12

    move/from16 v14, v19

    .line 946
    .local v14, "dp0":I
    move/from16 v19, v9

    move/from16 v15, v19

    .line 948
    .local v15, "mark":I
    :goto_1
    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 949
    move-object/from16 v19, v8

    move/from16 v20, v9

    add-int/lit8 v9, v9, 0x1

    :try_start_0
    aget-byte v19, v19, v20

    const/16 v20, 0xff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v16, v19

    .line 950
    .local v16, "b":I
    move-object/from16 v19, v5

    move/from16 v20, v16

    aget v19, v19, v20

    move/from16 v25, v19

    move/from16 v19, v25

    move/from16 v20, v25

    move/from16 v16, v20

    if-gez v19, :cond_5

    .line 951
    move/from16 v19, v16

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 952
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Ljava/util/Base64$Decoder;->isMIME:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    move/from16 v19, v7

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v19, v8

    move/from16 v20, v9

    add-int/lit8 v9, v9, 0x1

    aget-byte v19, v19, v20

    const/16 v20, 0x3d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    :cond_0
    move/from16 v19, v7

    const/16 v20, 0x12

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 955
    :cond_1
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const-string v21, "Input byte array has wrong 4-byte ending unit"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    .end local v16    # "b":I
    :catchall_0
    move-exception v19

    move-object/from16 v18, v19

    move-object/from16 v19, v3

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    .line 1004
    move-object/from16 v19, v4

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    move-object/from16 v19, v18

    throw v19

    .line 936
    .end local v5    # "base64":[I
    .end local v6    # "bits":I
    .end local v7    # "shiftto":I
    .end local v8    # "sa":[B
    .end local v9    # "sp":I
    .end local v10    # "sl":I
    .end local v11    # "da":[B
    .end local v12    # "dp":I
    .end local v13    # "dl":I
    .end local v14    # "dp0":I
    .end local v15    # "mark":I
    :cond_2
    sget-object v19, Ljava/util/Base64$Decoder;->fromBase64:[I

    goto/16 :goto_0

    .line 960
    .restart local v5    # "base64":[I
    .restart local v6    # "bits":I
    .restart local v7    # "shiftto":I
    .restart local v8    # "sa":[B
    .restart local v9    # "sp":I
    .restart local v10    # "sl":I
    .restart local v11    # "da":[B
    .restart local v12    # "dp":I
    .restart local v13    # "dl":I
    .restart local v14    # "dp0":I
    .restart local v15    # "mark":I
    .restart local v16    # "b":I
    :cond_3
    move-object/from16 v19, v2

    :try_start_1
    move-object/from16 v0, v19

    iget-boolean v0, v0, Ljava/util/Base64$Decoder;->isMIME:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 961
    goto/16 :goto_1

    .line 963
    :cond_4
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Illegal base64 character "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v8

    move/from16 v23, v9

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget-byte v22, v22, v23

    const/16 v23, 0x10

    .line 965
    invoke-static/range {v22 .. v23}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    :cond_5
    move/from16 v19, v6

    move/from16 v20, v16

    move/from16 v21, v7

    shl-int v20, v20, v21

    or-int v19, v19, v20

    move/from16 v6, v19

    .line 968
    add-int/lit8 v7, v7, -0x6

    .line 969
    move/from16 v19, v7

    if-gez v19, :cond_7

    .line 970
    move/from16 v19, v13

    move/from16 v20, v12

    const/16 v21, 0x3

    add-int/lit8 v20, v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 971
    move/from16 v19, v12

    move/from16 v20, v14

    sub-int v19, v19, v20

    move/from16 v17, v19

    .line 1003
    move-object/from16 v19, v3

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    .line 1004
    move-object/from16 v19, v4

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    move/from16 v19, v17

    move/from16 v2, v19

    .end local v2    # "this":Ljava/util/Base64$Decoder;
    .end local v16    # "b":I
    :goto_2
    return v2

    .line 972
    .restart local v2    # "this":Ljava/util/Base64$Decoder;
    .restart local v16    # "b":I
    :cond_6
    move-object/from16 v19, v11

    move/from16 v20, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v6

    const/16 v22, 0x10

    shr-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    :try_start_2
    aput-byte v21, v19, v20

    .line 973
    move-object/from16 v19, v11

    move/from16 v20, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v6

    const/16 v22, 0x8

    shr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    .line 974
    move-object/from16 v19, v11

    move/from16 v20, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v6

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 975
    const/16 v19, 0x12

    move/from16 v7, v19

    .line 976
    const/16 v19, 0x0

    move/from16 v6, v19

    .line 977
    move/from16 v19, v9

    move/from16 v15, v19

    .line 979
    :cond_7
    goto/16 :goto_1

    .line 980
    .end local v16    # "b":I
    :cond_8
    move/from16 v19, v7

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 981
    move/from16 v19, v13

    move/from16 v20, v12

    sub-int v19, v19, v20

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 982
    move/from16 v19, v12

    move/from16 v20, v14

    sub-int v19, v19, v20

    move/from16 v16, v19

    .line 1003
    move-object/from16 v19, v3

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    .line 1004
    move-object/from16 v19, v4

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    move/from16 v19, v16

    move/from16 v2, v19

    goto :goto_2

    .line 983
    :cond_9
    move-object/from16 v19, v11

    move/from16 v20, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v6

    const/16 v22, 0x10

    shr-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    :try_start_3
    aput-byte v21, v19, v20

    .line 993
    :cond_a
    :goto_3
    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 994
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Ljava/util/Base64$Decoder;->isMIME:Z

    move/from16 v19, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v19, :cond_f

    .line 995
    move/from16 v19, v10

    move/from16 v9, v19

    .line 1000
    :cond_b
    move/from16 v19, v9

    move/from16 v15, v19

    .line 1001
    move/from16 v19, v12

    move/from16 v20, v14

    sub-int v19, v19, v20

    move/from16 v16, v19

    .line 1003
    move-object/from16 v19, v3

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    .line 1004
    move-object/from16 v19, v4

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    move/from16 v19, v16

    move/from16 v2, v19

    goto/16 :goto_2

    .line 984
    :cond_c
    move/from16 v19, v7

    if-nez v19, :cond_e

    .line 985
    move/from16 v19, v13

    move/from16 v20, v12

    sub-int v19, v19, v20

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 986
    move/from16 v19, v12

    move/from16 v20, v14

    sub-int v19, v19, v20

    move/from16 v16, v19

    .line 1003
    move-object/from16 v19, v3

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    .line 1004
    move-object/from16 v19, v4

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v19

    move/from16 v19, v16

    move/from16 v2, v19

    goto/16 :goto_2

    .line 987
    :cond_d
    move-object/from16 v19, v11

    move/from16 v20, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v6

    const/16 v22, 0x10

    shr-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    :try_start_4
    aput-byte v21, v19, v20

    .line 988
    move-object/from16 v19, v11

    move/from16 v20, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v21, v6

    const/16 v22, 0x8

    shr-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v19, v20

    goto/16 :goto_3

    .line 989
    :cond_e
    move/from16 v19, v7

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 990
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const-string v21, "Last unit does not have enough valid bits"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 997
    :cond_f
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Input byte array has incorrect ending byte at "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move/from16 v22, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private decodeBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 24

    .prologue
    .line 1009
    move-object/from16 v2, p0

    .local v2, "this":Ljava/util/Base64$Decoder;
    move-object/from16 v3, p1

    .local v3, "src":Ljava/nio/ByteBuffer;
    move-object/from16 v4, p2

    .local v4, "dst":Ljava/nio/ByteBuffer;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Ljava/util/Base64$Decoder;->isURL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    sget-object v17, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    :goto_0
    move-object/from16 v5, v17

    .line 1010
    .local v5, "base64":[I
    const/16 v17, 0x0

    move/from16 v6, v17

    .line 1011
    .local v6, "bits":I
    const/16 v17, 0x12

    move/from16 v7, v17

    .line 1012
    .local v7, "shiftto":I
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->position()I

    move-result v17

    move/from16 v8, v17

    .line 1013
    .local v8, "sp":I
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    move/from16 v9, v17

    .line 1014
    .local v9, "sl":I
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->position()I

    move-result v17

    move/from16 v10, v17

    .line 1015
    .local v10, "dp":I
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    move/from16 v11, v17

    .line 1016
    .local v11, "dl":I
    move/from16 v17, v10

    move/from16 v12, v17

    .line 1017
    .local v12, "dp0":I
    move/from16 v17, v8

    move/from16 v13, v17

    .line 1019
    .local v13, "mark":I
    :goto_1
    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 1020
    move-object/from16 v17, v3

    move/from16 v18, v8

    add-int/lit8 v8, v8, 0x1

    :try_start_0
    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v17

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v14, v17

    .line 1021
    .local v14, "b":I
    move-object/from16 v17, v5

    move/from16 v18, v14

    aget v17, v17, v18

    move/from16 v23, v17

    move/from16 v17, v23

    move/from16 v18, v23

    move/from16 v14, v18

    if-gez v17, :cond_5

    .line 1022
    move/from16 v17, v14

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1023
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Ljava/util/Base64$Decoder;->isMIME:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move/from16 v17, v7

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v17, v3

    move/from16 v18, v8

    add-int/lit8 v8, v8, 0x1

    .line 1024
    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    :cond_0
    move/from16 v17, v7

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1026
    :cond_1
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    const-string v19, "Input byte array has wrong 4-byte ending unit"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    .end local v14    # "b":I
    :catchall_0
    move-exception v17

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v17

    .line 1075
    move-object/from16 v17, v4

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v17

    move-object/from16 v17, v16

    throw v17

    .line 1009
    .end local v5    # "base64":[I
    .end local v6    # "bits":I
    .end local v7    # "shiftto":I
    .end local v8    # "sp":I
    .end local v9    # "sl":I
    .end local v10    # "dp":I
    .end local v11    # "dl":I
    .end local v12    # "dp0":I
    .end local v13    # "mark":I
    :cond_2
    sget-object v17, Ljava/util/Base64$Decoder;->fromBase64:[I

    goto/16 :goto_0

    .line 1031
    .restart local v5    # "base64":[I
    .restart local v6    # "bits":I
    .restart local v7    # "shiftto":I
    .restart local v8    # "sp":I
    .restart local v9    # "sl":I
    .restart local v10    # "dp":I
    .restart local v11    # "dl":I
    .restart local v12    # "dp0":I
    .restart local v13    # "mark":I
    .restart local v14    # "b":I
    :cond_3
    move-object/from16 v17, v2

    :try_start_1
    move-object/from16 v0, v17

    iget-boolean v0, v0, Ljava/util/Base64$Decoder;->isMIME:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1032
    goto/16 :goto_1

    .line 1034
    :cond_4
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Illegal base64 character "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v3

    move/from16 v21, v8

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    .line 1036
    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    :cond_5
    move/from16 v17, v6

    move/from16 v18, v14

    move/from16 v19, v7

    shl-int v18, v18, v19

    or-int v17, v17, v18

    move/from16 v6, v17

    .line 1039
    add-int/lit8 v7, v7, -0x6

    .line 1040
    move/from16 v17, v7

    if-gez v17, :cond_7

    .line 1041
    move/from16 v17, v11

    move/from16 v18, v10

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 1042
    move/from16 v17, v10

    move/from16 v18, v12

    sub-int v17, v17, v18

    move/from16 v15, v17

    .line 1074
    move-object/from16 v17, v3

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v17

    .line 1075
    move-object/from16 v17, v4

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v17

    move/from16 v17, v15

    move/from16 v2, v17

    .end local v2    # "this":Ljava/util/Base64$Decoder;
    .end local v14    # "b":I
    :goto_2
    return v2

    .line 1043
    .restart local v2    # "this":Ljava/util/Base64$Decoder;
    .restart local v14    # "b":I
    :cond_6
    move-object/from16 v17, v4

    move/from16 v18, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v6

    const/16 v20, 0x10

    shr-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    :try_start_2
    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 1044
    move-object/from16 v17, v4

    move/from16 v18, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v6

    const/16 v20, 0x8

    shr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 1045
    move-object/from16 v17, v4

    move/from16 v18, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v6

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v17

    .line 1046
    const/16 v17, 0x12

    move/from16 v7, v17

    .line 1047
    const/16 v17, 0x0

    move/from16 v6, v17

    .line 1048
    move/from16 v17, v8

    move/from16 v13, v17

    .line 1050
    :cond_7
    goto/16 :goto_1

    .line 1051
    .end local v14    # "b":I
    :cond_8
    move/from16 v17, v7

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1052
    move/from16 v17, v11

    move/from16 v18, v10

    sub-int v17, v17, v18

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 1053
    move/from16 v17, v10

    move/from16 v18, v12

    sub-int v17, v17, v18

    move/from16 v14, v17

    .line 1074
    move-object/from16 v17, v3

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v17

    .line 1075
    move-object/from16 v17, v4

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v17

    move/from16 v17, v14

    move/from16 v2, v17

    goto :goto_2

    .line 1054
    :cond_9
    move-object/from16 v17, v4

    move/from16 v18, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v6

    const/16 v20, 0x10

    shr-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    :try_start_3
    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 1064
    :cond_a
    :goto_3
    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 1065
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Ljava/util/Base64$Decoder;->isMIME:Z

    move/from16 v17, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v17, :cond_f

    .line 1066
    move/from16 v17, v9

    move/from16 v8, v17

    .line 1071
    :cond_b
    move/from16 v17, v8

    move/from16 v13, v17

    .line 1072
    move/from16 v17, v10

    move/from16 v18, v12

    sub-int v17, v17, v18

    move/from16 v14, v17

    .line 1074
    move-object/from16 v17, v3

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v17

    .line 1075
    move-object/from16 v17, v4

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v17

    move/from16 v17, v14

    move/from16 v2, v17

    goto/16 :goto_2

    .line 1055
    :cond_c
    move/from16 v17, v7

    if-nez v17, :cond_e

    .line 1056
    move/from16 v17, v11

    move/from16 v18, v10

    sub-int v17, v17, v18

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 1057
    move/from16 v17, v10

    move/from16 v18, v12

    sub-int v17, v17, v18

    move/from16 v14, v17

    .line 1074
    move-object/from16 v17, v3

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v17

    .line 1075
    move-object/from16 v17, v4

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v17

    move/from16 v17, v14

    move/from16 v2, v17

    goto/16 :goto_2

    .line 1058
    :cond_d
    move-object/from16 v17, v4

    move/from16 v18, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v6

    const/16 v20, 0x10

    shr-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    :try_start_4
    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 1059
    move-object/from16 v17, v4

    move/from16 v18, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v6

    const/16 v20, 0x8

    shr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    goto/16 :goto_3

    .line 1060
    :cond_e
    move/from16 v17, v7

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1061
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    const-string v19, "Last unit does not have enough valid bits"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1068
    :cond_f
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Input byte array has incorrect ending byte at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private outLength([BII)I
    .locals 13

    .prologue
    .line 1080
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Decoder;
    move-object v1, p1

    .local v1, "src":[B
    move v2, p2

    .local v2, "sp":I
    move/from16 v3, p3

    .local v3, "sl":I
    move-object v9, v0

    iget-boolean v9, v9, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v9, :cond_0

    sget-object v9, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    :goto_0
    move-object v4, v9

    .line 1081
    .local v4, "base64":[I
    const/4 v9, 0x0

    move v5, v9

    .line 1082
    .local v5, "paddings":I
    move v9, v3

    move v10, v2

    sub-int/2addr v9, v10

    move v6, v9

    .line 1083
    .local v6, "len":I
    move v9, v6

    if-nez v9, :cond_1

    .line 1084
    const/4 v9, 0x0

    move v0, v9

    .line 1114
    .end local v0    # "this":Ljava/util/Base64$Decoder;
    :goto_1
    return v0

    .line 1080
    .end local v4    # "base64":[I
    .end local v5    # "paddings":I
    .end local v6    # "len":I
    .restart local v0    # "this":Ljava/util/Base64$Decoder;
    :cond_0
    sget-object v9, Ljava/util/Base64$Decoder;->fromBase64:[I

    goto :goto_0

    .line 1085
    .restart local v4    # "base64":[I
    .restart local v5    # "paddings":I
    .restart local v6    # "len":I
    :cond_1
    move v9, v6

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    .line 1086
    move-object v9, v0

    iget-boolean v9, v9, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v9, :cond_2

    move-object v9, v4

    const/4 v10, 0x0

    aget v9, v9, v10

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 1087
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1

    .line 1088
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "Input byte[] should at least have 2 bytes for base64 bytes"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1091
    :cond_3
    move-object v9, v0

    iget-boolean v9, v9, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v9, :cond_9

    .line 1094
    const/4 v9, 0x0

    move v7, v9

    .line 1095
    .local v7, "n":I
    :goto_2
    move v9, v2

    move v10, v3

    if-ge v9, v10, :cond_4

    .line 1096
    move-object v9, v1

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v8, v9

    .line 1097
    .local v8, "b":I
    move v9, v8

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_7

    .line 1098
    move v9, v6

    move v10, v3

    move v11, v2

    sub-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v9, v10

    move v6, v9

    .line 1104
    .end local v8    # "b":I
    :cond_4
    move v9, v6

    move v10, v7

    sub-int/2addr v9, v10

    move v6, v9

    .line 1112
    .end local v7    # "n":I
    :cond_5
    :goto_3
    move v9, v5

    if-nez v9, :cond_6

    move v9, v6

    const/4 v10, 0x3

    and-int/lit8 v9, v9, 0x3

    if-eqz v9, :cond_6

    .line 1113
    const/4 v9, 0x4

    move v10, v6

    const/4 v11, 0x3

    and-int/lit8 v10, v10, 0x3

    rsub-int/lit8 v9, v10, 0x4

    move v5, v9

    .line 1114
    :cond_6
    const/4 v9, 0x3

    move v10, v6

    const/4 v11, 0x3

    add-int/lit8 v10, v10, 0x3

    const/4 v11, 0x4

    div-int/lit8 v10, v10, 0x4

    mul-int/2addr v9, v10

    move v10, v5

    sub-int/2addr v9, v10

    move v0, v9

    goto :goto_1

    .line 1101
    .restart local v7    # "n":I
    .restart local v8    # "b":I
    :cond_7
    move-object v9, v4

    move v10, v8

    aget v9, v9, v10

    move v12, v9

    move v9, v12

    move v10, v12

    move v8, v10

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    .line 1102
    add-int/lit8 v7, v7, 0x1

    .line 1103
    :cond_8
    goto :goto_2

    .line 1106
    .end local v7    # "n":I
    .end local v8    # "b":I
    :cond_9
    move-object v9, v1

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-byte v9, v9, v10

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_5

    .line 1107
    add-int/lit8 v5, v5, 0x1

    .line 1108
    move-object v9, v1

    move v10, v3

    const/4 v11, 0x2

    add-int/lit8 v10, v10, -0x2

    aget-byte v9, v9, v10

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_5

    .line 1109
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method


# virtual methods
.method public decode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 9

    .prologue
    .line 902
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Decoder;
    move-object v1, p1

    .local v1, "src":Ljava/nio/ByteBuffer;
    move-object v2, p2

    .local v2, "dst":Ljava/nio/ByteBuffer;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    move v3, v6

    .line 903
    .local v3, "sp0":I
    move-object v6, v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    move v4, v6

    .line 905
    .local v4, "dp0":I
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 906
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljava/util/Base64$Decoder;->decodeArray(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v6

    move v0, v6

    .line 907
    .end local v0    # "this":Ljava/util/Base64$Decoder;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/util/Base64$Decoder;
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljava/util/Base64$Decoder;->decodeBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v0, v6

    goto :goto_0

    .line 908
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 909
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    .line 910
    move-object v6, v2

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    .line 911
    move-object v6, v5

    throw v6
.end method

.method public decode([B[B)I
    .locals 10

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Decoder;
    move-object v1, p1

    .local v1, "src":[B
    move-object v2, p2

    .local v2, "dst":[B
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    invoke-direct {v4, v5, v6, v7}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v4

    move v3, v4

    .line 798
    .local v3, "len":I
    move-object v4, v2

    array-length v4, v4

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 799
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Output byte array is too small for decoding all input bytes"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 801
    :cond_0
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Ljava/util/Base64$Decoder;
    return v0
.end method

.method public decode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 14

    .prologue
    .line 822
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Decoder;
    move-object v1, p1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object v7, v1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    move v2, v7

    .line 826
    .local v2, "pos0":I
    move-object v7, v1

    :try_start_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 827
    move-object v7, v1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    move-object v3, v7

    .line 828
    .local v3, "src":[B
    move-object v7, v1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    move v4, v7

    .line 829
    .local v4, "sp":I
    move-object v7, v1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int/2addr v7, v8

    move v5, v7

    .line 830
    .local v5, "sl":I
    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    .line 837
    :goto_0
    move-object v7, v0

    move-object v8, v3

    move v9, v4

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v7

    new-array v7, v7, [B

    move-object v6, v7

    .line 838
    .local v6, "dst":[B
    move-object v7, v6

    const/4 v8, 0x0

    move-object v9, v0

    move-object v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v9

    invoke-static {v7, v8, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Ljava/util/Base64$Decoder;
    return-object v0

    .line 832
    .end local v3    # "src":[B
    .end local v4    # "sp":I
    .end local v5    # "sl":I
    .end local v6    # "dst":[B
    .restart local v0    # "this":Ljava/util/Base64$Decoder;
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    new-array v7, v7, [B

    move-object v3, v7

    .line 833
    .restart local v3    # "src":[B
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 834
    const/4 v7, 0x0

    move v4, v7

    .line 835
    .restart local v4    # "sp":I
    move-object v7, v3

    array-length v7, v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .restart local v5    # "sl":I
    goto :goto_0

    .line 839
    .end local v3    # "src":[B
    .end local v4    # "sp":I
    .end local v5    # "sl":I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 840
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    move-object v7, v1

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    .line 841
    move-object v7, v3

    throw v7
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 768
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Decoder;
    move-object v1, p1

    .local v1, "src":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/Base64$Decoder;
    return-object v0
.end method

.method public decode([B)[B
    .locals 9

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Decoder;
    move-object v1, p1

    .local v1, "src":[B
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    invoke-direct {v4, v5, v6, v7}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v4

    new-array v4, v4, [B

    move-object v2, v4

    .line 745
    .local v2, "dst":[B
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v4

    move v3, v4

    .line 746
    .local v3, "ret":I
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-eq v4, v5, :cond_0

    .line 747
    move-object v4, v2

    move v5, v3

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    move-object v2, v4

    .line 749
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Ljava/util/Base64$Decoder;
    return-object v0
.end method

.method public wrap(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 8

    .prologue
    .line 931
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64$Decoder;
    move-object v1, p1

    .local v1, "is":Ljava/io/InputStream;
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 932
    new-instance v2, Ljava/util/Base64$DecInputStream;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v5, :cond_0

    sget-object v5, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    :goto_0
    move-object v6, v0

    iget-boolean v6, v6, Ljava/util/Base64$Decoder;->isMIME:Z

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Base64$DecInputStream;-><init>(Ljava/io/InputStream;[IZ)V

    move-object v0, v2

    .end local v0    # "this":Ljava/util/Base64$Decoder;
    return-object v0

    .restart local v0    # "this":Ljava/util/Base64$Decoder;
    :cond_0
    sget-object v5, Ljava/util/Base64$Decoder;->fromBase64:[I

    goto :goto_0
.end method
