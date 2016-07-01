.class public Lcom/sun/javafx/iio/common/RoughScaler;
.super Ljava/lang/Object;
.source "RoughScaler.java"

# interfaces
.implements Lcom/sun/javafx/iio/common/PushbroomScaler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected colPositions:[I

.field protected destBuf:Ljava/nio/ByteBuffer;

.field protected destHeight:I

.field protected destLine:I

.field protected destWidth:I

.field protected nextSourceLine:I

.field protected numBands:I

.field protected scaleY:D

.field protected sourceLine:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sun/javafx/iio/common/RoughScaler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/iio/common/RoughScaler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IIIII)V
    .locals 16

    .prologue
    .line 53
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/RoughScaler;
    move/from16 v1, p1

    .local v1, "sourceWidth":I
    move/from16 v2, p2

    .local v2, "sourceHeight":I
    move/from16 v3, p3

    .local v3, "numBands":I
    move/from16 v4, p4

    .local v4, "destWidth":I
    move/from16 v5, p5

    .local v5, "destHeight":I
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 54
    move v10, v1

    if-lez v10, :cond_0

    move v10, v2

    if-lez v10, :cond_0

    move v10, v3

    if-lez v10, :cond_0

    move v10, v4

    if-lez v10, :cond_0

    move v10, v5

    if-gtz v10, :cond_1

    .line 56
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 60
    :cond_1
    move-object v10, v0

    move v11, v3

    iput v11, v10, Lcom/sun/javafx/iio/common/RoughScaler;->numBands:I

    .line 61
    move-object v10, v0

    move v11, v4

    iput v11, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destWidth:I

    .line 62
    move-object v10, v0

    move v11, v5

    iput v11, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destHeight:I

    .line 65
    move-object v10, v0

    move v11, v5

    move v12, v4

    mul-int/2addr v11, v12

    move v12, v3

    mul-int/2addr v11, v12

    new-array v11, v11, [B

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destBuf:Ljava/nio/ByteBuffer;

    .line 68
    move v10, v1

    int-to-double v10, v10

    move v12, v4

    int-to-double v12, v12

    div-double/2addr v10, v12

    move-wide v6, v10

    .line 69
    .local v6, "scaleX":D
    move-object v10, v0

    move v11, v2

    int-to-double v11, v11

    move v13, v5

    int-to-double v13, v13

    div-double/2addr v11, v13

    iput-wide v11, v10, Lcom/sun/javafx/iio/common/RoughScaler;->scaleY:D

    .line 71
    move-object v10, v0

    move v11, v4

    new-array v11, v11, [I

    iput-object v11, v10, Lcom/sun/javafx/iio/common/RoughScaler;->colPositions:[I

    .line 72
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_0
    move v10, v8

    move v11, v4

    if-ge v10, v11, :cond_2

    .line 73
    move v10, v8

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    move-wide v12, v6

    mul-double/2addr v10, v12

    double-to-int v10, v10

    move v9, v10

    .line 74
    .local v9, "pos":I
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->colPositions:[I

    move v11, v8

    move v12, v9

    move v13, v3

    mul-int/2addr v12, v13

    aput v12, v10, v11

    .line 72
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 78
    .end local v9    # "pos":I
    :cond_2
    move-object v10, v0

    const/4 v11, 0x0

    iput v11, v10, Lcom/sun/javafx/iio/common/RoughScaler;->sourceLine:I

    .line 79
    move-object v10, v0

    const/4 v11, 0x0

    iput v11, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destLine:I

    .line 81
    move-object v10, v0

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    move-object v13, v0

    iget-wide v13, v13, Lcom/sun/javafx/iio/common/RoughScaler;->scaleY:D

    mul-double/2addr v11, v13

    double-to-int v11, v11

    iput v11, v10, Lcom/sun/javafx/iio/common/RoughScaler;->nextSourceLine:I

    .line 82
    return-void
.end method


# virtual methods
.method public getDestination()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/RoughScaler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/common/RoughScaler;->destBuf:Ljava/nio/ByteBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/common/RoughScaler;
    return-object v0
.end method

.method public putSourceScanline([BI)Z
    .locals 17

    .prologue
    .line 103
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/RoughScaler;
    move-object/from16 v1, p1

    .local v1, "scanline":[B
    move/from16 v2, p2

    .local v2, "off":I
    move v9, v2

    if-gez v9, :cond_0

    .line 104
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "off < 0!"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 107
    :cond_0
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/iio/common/RoughScaler;->destLine:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destHeight:I

    if-ge v9, v10, :cond_6

    .line 108
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/iio/common/RoughScaler;->sourceLine:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->nextSourceLine:I

    if-ne v9, v10, :cond_5

    .line 109
    sget-boolean v9, Lcom/sun/javafx/iio/common/RoughScaler;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/iio/common/RoughScaler;->destBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string v11, "destBuf.hasArray() == false => destBuf is direct"

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 110
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/iio/common/RoughScaler;->destBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    move-object v3, v9

    .line 112
    .local v3, "dest":[B
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/iio/common/RoughScaler;->destLine:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destWidth:I

    mul-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->numBands:I

    mul-int/2addr v9, v10

    move v4, v9

    .line 114
    .local v4, "destOffset":I
    move v9, v4

    move v5, v9

    .line 115
    .local v5, "doff":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i":I
    :goto_0
    move v9, v6

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destWidth:I

    if-ge v9, v10, :cond_3

    .line 116
    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->colPositions:[I

    move v11, v6

    aget v10, v10, v11

    add-int/2addr v9, v10

    move v7, v9

    .line 117
    .local v7, "sourceOffset":I
    const/4 v9, 0x0

    move v8, v9

    .local v8, "j":I
    :goto_1
    move v9, v8

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->numBands:I

    if-ge v9, v10, :cond_2

    .line 118
    move-object v9, v3

    move v10, v5

    add-int/lit8 v5, v5, 0x1

    move-object v11, v1

    move v12, v7

    move v13, v8

    add-int/2addr v12, v13

    aget-byte v11, v11, v12

    aput-byte v11, v9, v10

    .line 117
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 115
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 122
    .end local v7    # "sourceOffset":I
    .end local v8    # "j":I
    :cond_3
    :goto_2
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destLine:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v15, v9

    move/from16 v16, v10

    move/from16 v9, v16

    move-object v10, v15

    move/from16 v11, v16

    iput v11, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destLine:I

    int-to-double v9, v9

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/javafx/iio/common/RoughScaler;->scaleY:D

    mul-double/2addr v9, v11

    double-to-int v9, v9

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->sourceLine:I

    if-ne v9, v10, :cond_4

    .line 124
    move-object v9, v3

    move v10, v4

    move-object v11, v3

    move v12, v5

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/iio/common/RoughScaler;->destWidth:I

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/iio/common/RoughScaler;->numBands:I

    mul-int/2addr v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    move v9, v5

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destWidth:I

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/iio/common/RoughScaler;->numBands:I

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    move v5, v9

    goto :goto_2

    .line 127
    :cond_4
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destLine:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/iio/common/RoughScaler;->scaleY:D

    mul-double/2addr v10, v12

    double-to-int v10, v10

    iput v10, v9, Lcom/sun/javafx/iio/common/RoughScaler;->nextSourceLine:I

    .line 130
    .end local v3    # "dest":[B
    .end local v4    # "destOffset":I
    .end local v5    # "doff":I
    .end local v6    # "i":I
    :cond_5
    move-object v9, v0

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->sourceLine:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/sun/javafx/iio/common/RoughScaler;->sourceLine:I

    .line 133
    :cond_6
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/iio/common/RoughScaler;->destLine:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/iio/common/RoughScaler;->destHeight:I

    if-ne v9, v10, :cond_7

    const/4 v9, 0x1

    :goto_3
    move v0, v9

    .end local v0    # "this":Lcom/sun/javafx/iio/common/RoughScaler;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/iio/common/RoughScaler;
    :cond_7
    const/4 v9, 0x0

    goto :goto_3
.end method
