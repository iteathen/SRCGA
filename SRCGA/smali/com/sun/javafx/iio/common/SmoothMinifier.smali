.class public Lcom/sun/javafx/iio/common/SmoothMinifier;
.super Ljava/lang/Object;
.source "SmoothMinifier.java"

# interfaces
.implements Lcom/sun/javafx/iio/common/PushbroomScaler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected bottomPoints:[I

.field protected boxHeight:I

.field protected destBuf:Ljava/nio/ByteBuffer;

.field protected destHeight:I

.field protected destLine:I

.field protected destWidth:I

.field protected leftPoints:[I

.field protected numBands:I

.field protected rightPoints:[I

.field protected scaleY:D

.field protected sourceData:[[B

.field protected sourceDataLine:I

.field protected sourceHeight:I

.field protected sourceLine:I

.field protected sourceWidth:I

.field protected tmpBuf:[I

.field protected topPoints:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/sun/javafx/iio/common/SmoothMinifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(IIIII)V
    .locals 24

    .prologue
    .line 88
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/iio/common/SmoothMinifier;
    move/from16 v4, p1

    .local v4, "sourceWidth":I
    move/from16 v5, p2

    .local v5, "sourceHeight":I
    move/from16 v6, p3

    .local v6, "numBands":I
    move/from16 v7, p4

    .local v7, "destWidth":I
    move/from16 v8, p5

    .local v8, "destHeight":I
    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    .line 89
    move/from16 v18, v4

    if-lez v18, :cond_0

    move/from16 v18, v5

    if-lez v18, :cond_0

    move/from16 v18, v6

    if-lez v18, :cond_0

    move/from16 v18, v7

    if-lez v18, :cond_0

    move/from16 v18, v8

    if-lez v18, :cond_0

    move/from16 v18, v7

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    move/from16 v18, v8

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 92
    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 96
    :cond_1
    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceWidth:I

    .line 97
    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceHeight:I

    .line 98
    move-object/from16 v18, v3

    move/from16 v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->numBands:I

    .line 99
    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->destWidth:I

    .line 100
    move-object/from16 v18, v3

    move/from16 v19, v8

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->destHeight:I

    .line 103
    move-object/from16 v18, v3

    move/from16 v19, v8

    move/from16 v20, v7

    mul-int v19, v19, v20

    move/from16 v20, v6

    mul-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->destBuf:Ljava/nio/ByteBuffer;

    .line 106
    move/from16 v18, v4

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v9, v18

    .line 107
    .local v9, "scaleX":D
    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move/from16 v21, v8

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/iio/common/SmoothMinifier;->scaleY:D

    .line 110
    move/from16 v18, v4

    move/from16 v19, v7

    add-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v7

    div-int v18, v18, v19

    move/from16 v11, v18

    .line 111
    .local v11, "boxWidth":I
    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v8

    add-int v19, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v8

    div-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->boxHeight:I

    .line 115
    move/from16 v18, v11

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v12, v18

    .line 116
    .local v12, "boxLeft":I
    move/from16 v18, v11

    move/from16 v19, v12

    sub-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v13, v18

    .line 117
    .local v13, "boxRight":I
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->boxHeight:I

    move/from16 v18, v0

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v14, v18

    .line 118
    .local v14, "boxTop":I
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->boxHeight:I

    move/from16 v18, v0

    move/from16 v19, v14

    sub-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v15, v18

    .line 121
    .local v15, "boxBottom":I
    move-object/from16 v18, v3

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->boxHeight:I

    move/from16 v19, v0

    move/from16 v20, v7

    move/from16 v21, v6

    mul-int v20, v20, v21

    filled-new-array/range {v19 .. v20}, [I

    move-result-object v20

    sget-object v19, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static/range {v19 .. v20}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[B

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceData:[[B

    .line 126
    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->leftPoints:[I

    .line 127
    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->rightPoints:[I

    .line 128
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "dx":I
    :goto_0
    move/from16 v18, v16

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 129
    move/from16 v18, v16

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v9

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 130
    .local v17, "sx":I
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->leftPoints:[I

    move-object/from16 v18, v0

    move/from16 v19, v16

    move/from16 v20, v17

    move/from16 v21, v12

    sub-int v20, v20, v21

    aput v20, v18, v19

    .line 131
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->rightPoints:[I

    move-object/from16 v18, v0

    move/from16 v19, v16

    move/from16 v20, v17

    move/from16 v21, v13

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 128
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 137
    .end local v17    # "sx":I
    :cond_2
    move-object/from16 v18, v3

    move/from16 v19, v8

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->topPoints:[I

    .line 138
    move-object/from16 v18, v3

    move/from16 v19, v8

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->bottomPoints:[I

    .line 139
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "dy":I
    :goto_1
    move/from16 v18, v16

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 140
    move/from16 v18, v16

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->scaleY:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 141
    .local v17, "sy":I
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->topPoints:[I

    move-object/from16 v18, v0

    move/from16 v19, v16

    move/from16 v20, v17

    move/from16 v21, v14

    sub-int v20, v20, v21

    aput v20, v18, v19

    .line 142
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->bottomPoints:[I

    move-object/from16 v18, v0

    move/from16 v19, v16

    move/from16 v20, v17

    move/from16 v21, v15

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 139
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 146
    .end local v17    # "sy":I
    :cond_3
    move-object/from16 v18, v3

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceLine:I

    .line 147
    move-object/from16 v18, v3

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceDataLine:I

    .line 148
    move-object/from16 v18, v3

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->destLine:I

    .line 150
    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v20, v6

    mul-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->tmpBuf:[I

    .line 151
    return-void
.end method


# virtual methods
.method public getDestination()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/SmoothMinifier;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->destBuf:Ljava/nio/ByteBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/common/SmoothMinifier;
    return-object v0
.end method

.method public putSourceScanline([BI)Z
    .locals 23

    .prologue
    .line 172
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/iio/common/SmoothMinifier;
    move-object/from16 v3, p1

    .local v3, "scanline":[B
    move/from16 v4, p2

    .local v4, "off":I
    move/from16 v16, v4

    if-gez v16, :cond_0

    .line 173
    new-instance v16, Ljava/lang/IllegalArgumentException;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const-string v18, "off < 0!"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 183
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->numBands:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 184
    move-object/from16 v16, v3

    move/from16 v17, v4

    aget-byte v16, v16, v17

    const/16 v17, 0xff

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v5, v16

    .line 185
    .local v5, "leftSample":I
    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceWidth:I

    move/from16 v18, v0

    add-int v17, v17, v18

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    aget-byte v16, v16, v17

    const/16 v17, 0xff

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v6, v16

    .line 186
    .local v6, "rightSample":I
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "i":I
    :goto_0
    move/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destWidth:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 187
    const/16 v16, 0x0

    move/from16 v8, v16

    .line 188
    .local v8, "val":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->rightPoints:[I

    move-object/from16 v16, v0

    move/from16 v17, v7

    aget v16, v16, v17

    move/from16 v9, v16

    .line 189
    .local v9, "rightBound":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->leftPoints:[I

    move-object/from16 v16, v0

    move/from16 v17, v7

    aget v16, v16, v17

    move/from16 v10, v16

    .local v10, "j":I
    :goto_1
    move/from16 v16, v10

    move/from16 v17, v9

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 190
    move/from16 v16, v10

    if-gez v16, :cond_1

    .line 191
    move/from16 v16, v8

    move/from16 v17, v5

    add-int v16, v16, v17

    move/from16 v8, v16

    .line 189
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 192
    :cond_1
    move/from16 v16, v10

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceWidth:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    .line 193
    move/from16 v16, v8

    move/from16 v17, v6

    add-int v16, v16, v17

    move/from16 v8, v16

    goto :goto_2

    .line 195
    :cond_2
    move/from16 v16, v8

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v10

    add-int v18, v18, v19

    aget-byte v17, v17, v18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v8, v16

    goto :goto_2

    .line 198
    :cond_3
    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->leftPoints:[I

    move-object/from16 v18, v0

    move/from16 v19, v7

    aget v18, v18, v19

    sub-int v17, v17, v18

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    div-int v16, v16, v17

    move/from16 v8, v16

    .line 199
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceData:[[B

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceDataLine:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 186
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 201
    .line 242
    .end local v5    # "leftSample":I
    .end local v6    # "rightSample":I
    .end local v7    # "i":I
    .end local v8    # "val":I
    .end local v9    # "rightBound":I
    .end local v10    # "j":I
    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceLine:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->bottomPoints:[I

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destLine:I

    move/from16 v18, v0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destLine:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destHeight:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceLine:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceHeight:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 246
    :cond_5
    sget-boolean v16, Lcom/sun/javafx/iio/common/SmoothMinifier;->$assertionsDisabled:Z

    if-nez v16, :cond_b

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v16

    if-nez v16, :cond_b

    new-instance v16, Ljava/lang/AssertionError;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const-string v18, "destBuf.hasArray() == false => destBuf is direct"

    invoke-direct/range {v17 .. v18}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v16

    .line 202
    :cond_6
    move/from16 v16, v4

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceWidth:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->numBands:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v5, v16

    .line 203
    .local v5, "rightOff":I
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "i":I
    :goto_3
    move/from16 v16, v6

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destWidth:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 204
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->leftPoints:[I

    move-object/from16 v16, v0

    move/from16 v17, v6

    aget v16, v16, v17

    move/from16 v7, v16

    .line 205
    .local v7, "leftBound":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->rightPoints:[I

    move-object/from16 v16, v0

    move/from16 v17, v6

    aget v16, v16, v17

    move/from16 v8, v16

    .line 206
    .local v8, "rightBound":I
    move/from16 v16, v8

    move/from16 v17, v7

    sub-int v16, v16, v17

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v9, v16

    .line 207
    .local v9, "numPoints":I
    move/from16 v16, v6

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->numBands:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    move/from16 v10, v16

    .line 208
    .local v10, "iBands":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "k":I
    :goto_4
    move/from16 v16, v11

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->numBands:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 213
    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v11

    add-int v17, v17, v18

    aget-byte v16, v16, v17

    const/16 v17, 0xff

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v12, v16

    .line 214
    .local v12, "leftSample":I
    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v11

    add-int v17, v17, v18

    aget-byte v16, v16, v17

    const/16 v17, 0xff

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v13, v16

    .line 216
    .local v13, "rightSample":I
    const/16 v16, 0x0

    move/from16 v14, v16

    .line 217
    .local v14, "val":I
    move/from16 v16, v7

    move/from16 v15, v16

    .local v15, "j":I
    :goto_5
    move/from16 v16, v15

    move/from16 v17, v8

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_9

    .line 218
    move/from16 v16, v15

    if-gez v16, :cond_7

    .line 219
    move/from16 v16, v14

    move/from16 v17, v12

    add-int v16, v16, v17

    move/from16 v14, v16

    .line 217
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 220
    :cond_7
    move/from16 v16, v15

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceWidth:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_8

    .line 221
    move/from16 v16, v14

    move/from16 v17, v13

    add-int v16, v16, v17

    move/from16 v14, v16

    goto :goto_6

    .line 223
    :cond_8
    move/from16 v16, v14

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v15

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->numBands:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v19, v11

    add-int v18, v18, v19

    aget-byte v17, v17, v18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v14, v16

    goto :goto_6

    .line 231
    :cond_9
    move/from16 v16, v14

    move/from16 v17, v9

    div-int v16, v16, v17

    move/from16 v14, v16

    .line 232
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceData:[[B

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceDataLine:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    move/from16 v17, v10

    move/from16 v18, v11

    add-int v17, v17, v18

    move/from16 v18, v14

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 208
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 203
    .end local v12    # "leftSample":I
    .end local v13    # "rightSample":I
    .end local v14    # "val":I
    .end local v15    # "j":I
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 247
    .end local v5    # "rightOff":I
    .end local v6    # "i":I
    .end local v7    # "leftBound":I
    .end local v8    # "rightBound":I
    .end local v9    # "numPoints":I
    .end local v10    # "iBands":I
    .end local v11    # "k":I
    :cond_b
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destBuf:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v16

    move-object/from16 v5, v16

    .line 249
    .local v5, "dest":[B
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destLine:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destWidth:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->numBands:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    move/from16 v6, v16

    .line 250
    .local v6, "destOffset":I
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->tmpBuf:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->fill([II)V

    .line 251
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->topPoints:[I

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destLine:I

    move/from16 v17, v0

    aget v16, v16, v17

    move/from16 v7, v16

    .local v7, "y":I
    :goto_7
    move/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->bottomPoints:[I

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destLine:I

    move/from16 v18, v0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_10

    .line 252
    const/16 v16, 0x0

    move/from16 v8, v16

    .line 253
    .local v8, "index":I
    move/from16 v16, v7

    if-gez v16, :cond_d

    .line 254
    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceLine:I

    move/from16 v17, v0

    rsub-int/lit8 v16, v17, 0x0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceDataLine:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v8, v16

    .line 260
    :goto_8
    move/from16 v16, v8

    if-gez v16, :cond_c

    .line 261
    move/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->boxHeight:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v8, v16

    .line 263
    :cond_c
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceData:[[B

    move-object/from16 v16, v0

    move/from16 v17, v8

    aget-object v16, v16, v17

    move-object/from16 v9, v16

    .line 264
    .local v9, "b":[B
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v10, v16

    .line 265
    .local v10, "destLen":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "x":I
    :goto_9
    move/from16 v16, v11

    move/from16 v17, v10

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    .line 266
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->tmpBuf:[I

    move-object/from16 v16, v0

    move/from16 v17, v11

    move-object/from16 v21, v16

    move/from16 v22, v17

    move-object/from16 v16, v21

    move/from16 v17, v22

    move-object/from16 v18, v21

    move/from16 v19, v22

    aget v18, v18, v19

    move-object/from16 v19, v9

    move/from16 v20, v11

    aget-byte v19, v19, v20

    const/16 v20, 0xff

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int v18, v18, v19

    aput v18, v16, v17

    .line 265
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 255
    .end local v9    # "b":[B
    .end local v10    # "destLen":I
    .end local v11    # "x":I
    :cond_d
    move/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_e

    .line 256
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceHeight:I

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceLine:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceDataLine:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->boxHeight:I

    move/from16 v17, v0

    rem-int v16, v16, v17

    move/from16 v8, v16

    goto/16 :goto_8

    .line 258
    :cond_e
    move/from16 v16, v7

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceLine:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceDataLine:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->boxHeight:I

    move/from16 v17, v0

    rem-int v16, v16, v17

    move/from16 v8, v16

    goto/16 :goto_8

    .line 251
    .restart local v9    # "b":[B
    .restart local v10    # "destLen":I
    .restart local v11    # "x":I
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 269
    .end local v8    # "index":I
    .end local v9    # "b":[B
    .end local v10    # "destLen":I
    .end local v11    # "x":I
    :cond_10
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->tmpBuf:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v7, v16

    .line 270
    .local v7, "sourceLen":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "x":I
    :goto_a
    move/from16 v16, v8

    move/from16 v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_11

    .line 271
    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v8

    add-int v17, v17, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->tmpBuf:[I

    move-object/from16 v18, v0

    move/from16 v19, v8

    aget v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->boxHeight:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v16, v17

    .line 270
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 274
    :cond_11
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destLine:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destHeight:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_12

    .line 275
    move-object/from16 v16, v2

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destLine:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->destLine:I

    .line 280
    .end local v5    # "dest":[B
    .end local v6    # "destOffset":I
    .end local v7    # "sourceLen":I
    .end local v8    # "x":I
    :cond_12
    move-object/from16 v16, v2

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceLine:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v21, v16

    move/from16 v22, v17

    move/from16 v16, v22

    move-object/from16 v17, v21

    move/from16 v18, v22

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceLine:I

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_13

    .line 281
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceDataLine:I

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->boxHeight:I

    move/from16 v18, v0

    rem-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/javafx/iio/common/SmoothMinifier;->sourceDataLine:I

    .line 284
    :cond_13
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destLine:I

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/iio/common/SmoothMinifier;->destHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    const/16 v16, 0x1

    :goto_b
    move/from16 v2, v16

    .end local v2    # "this":Lcom/sun/javafx/iio/common/SmoothMinifier;
    return v2

    .restart local v2    # "this":Lcom/sun/javafx/iio/common/SmoothMinifier;
    :cond_14
    const/16 v16, 0x0

    goto :goto_b
.end method
