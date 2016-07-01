.class public Ljava/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Base64$DecInputStream;,
        Ljava/util/Base64$EncOutputStream;,
        Ljava/util/Base64$Decoder;,
        Ljava/util/Base64$Encoder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljava/util/Base64;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoder()Ljava/util/Base64$Decoder;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Ljava/util/Base64$Decoder;->RFC4648:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static getEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeDecoder()Ljava/util/Base64$Decoder;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Ljava/util/Base64$Decoder;->RFC2045:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static getMimeEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Ljava/util/Base64$Encoder;->RFC2045:Ljava/util/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeEncoder(I[B)Ljava/util/Base64$Encoder;
    .locals 15

    .prologue
    .line 131
    move v0, p0

    .local v0, "lineLength":I
    move-object/from16 v1, p1

    .local v1, "lineSeparator":[B
    move-object v7, v1

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 132
    # getter for: Ljava/util/Base64$Decoder;->fromBase64:[I
    invoke-static {}, Ljava/util/Base64$Decoder;->access$000()[I

    move-result-object v7

    move-object v2, v7

    .line 133
    .local v2, "base64":[I
    move-object v7, v1

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    move-object v7, v3

    move v8, v5

    aget-byte v7, v7, v8

    move v6, v7

    .line 134
    .local v6, "b":B
    move-object v7, v2

    move v8, v6

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 135
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal base64 line separator character 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    const/16 v11, 0x10

    .line 136
    invoke-static {v10, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 133
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 138
    .end local v6    # "b":B
    :cond_1
    move v7, v0

    if-gtz v7, :cond_2

    .line 139
    sget-object v7, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    move-object v0, v7

    .line 141
    .end local v0    # "lineLength":I
    :goto_1
    return-object v0

    .restart local v0    # "lineLength":I
    :cond_2
    new-instance v7, Ljava/util/Base64$Encoder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x0

    move-object v10, v1

    move v11, v0

    const/4 v12, 0x2

    shr-int/lit8 v11, v11, 0x2

    const/4 v12, 0x2

    shl-int/lit8 v11, v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Ljava/util/Base64$Encoder;-><init>(Z[BIZLjava/util/Base64$1;)V

    move-object v0, v7

    goto :goto_1
.end method

.method public static getUrlDecoder()Ljava/util/Base64$Decoder;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Ljava/util/Base64$Decoder;->RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

    return-object v0
.end method

.method public static getUrlEncoder()Ljava/util/Base64$Encoder;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Ljava/util/Base64$Encoder;->RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

    return-object v0
.end method
