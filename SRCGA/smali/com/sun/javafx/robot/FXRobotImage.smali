.class public Lcom/sun/javafx/robot/FXRobotImage;
.super Ljava/lang/Object;
.source "FXRobotImage.java"


# instance fields
.field private final height:I

.field private final pixelBuffer:Ljava/nio/IntBuffer;

.field private final scanlineStride:I

.field private final width:I


# direct methods
.method private constructor <init>(Ljava/nio/Buffer;III)V
    .locals 9

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobotImage;
    move-object v1, p1

    .local v1, "pixelBuffer":Ljava/nio/Buffer;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move v4, p4

    .local v4, "scanlineStride":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v5, v1

    if-nez v5, :cond_0

    .line 51
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Pixel buffer must be non-null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 53
    :cond_0
    move v5, v2

    if-lez v5, :cond_1

    move v5, v3

    if-gtz v5, :cond_2

    .line 54
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Image dimensions must be > 0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 56
    :cond_2
    move-object v5, v0

    move-object v6, v1

    check-cast v6, Ljava/nio/IntBuffer;

    iput-object v6, v5, Lcom/sun/javafx/robot/FXRobotImage;->pixelBuffer:Ljava/nio/IntBuffer;

    .line 57
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/robot/FXRobotImage;->width:I

    .line 58
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/robot/FXRobotImage;->height:I

    .line 59
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/robot/FXRobotImage;->scanlineStride:I

    .line 60
    return-void
.end method

.method public static create(Ljava/nio/Buffer;III)Lcom/sun/javafx/robot/FXRobotImage;
    .locals 11

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "pixelBuffer":Ljava/nio/Buffer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, p3

    .local v3, "scanlineStride":I
    new-instance v4, Lcom/sun/javafx/robot/FXRobotImage;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/robot/FXRobotImage;-><init>(Ljava/nio/Buffer;III)V

    move-object v0, v4

    .end local v0    # "pixelBuffer":Ljava/nio/Buffer;
    return-object v0
.end method


# virtual methods
.method public getArgb(II)I
    .locals 14

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobotImage;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move v9, v1

    if-ltz v9, :cond_0

    move v9, v1

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/robot/FXRobotImage;->width:I

    if-ge v9, v10, :cond_0

    move v9, v2

    if-ltz v9, :cond_0

    move v9, v2

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/robot/FXRobotImage;->height:I

    if-lt v9, v10, :cond_1

    .line 128
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "x,y must be >0, <width, height"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 130
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/robot/FXRobotImage;->pixelBuffer:Ljava/nio/IntBuffer;

    move v10, v1

    move v11, v2

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/robot/FXRobotImage;->scanlineStride:I

    mul-int/2addr v11, v12

    const/4 v12, 0x4

    div-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    move v3, v9

    .line 131
    .local v3, "argb":I
    move v9, v3

    const/16 v10, 0x18

    shr-int/lit8 v9, v9, 0x18

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 132
    move v9, v3

    move v0, v9

    .line 142
    .end local v0    # "this":Lcom/sun/javafx/robot/FXRobotImage;
    :goto_0
    return v0

    .line 134
    .restart local v0    # "this":Lcom/sun/javafx/robot/FXRobotImage;
    :cond_2
    move v9, v3

    const/16 v10, 0x18

    ushr-int/lit8 v9, v9, 0x18

    move v4, v9

    .line 135
    .local v4, "a":I
    move v9, v3

    const/16 v10, 0x10

    shr-int/lit8 v9, v9, 0x10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v5, v9

    .line 136
    .local v5, "r":I
    move v9, v3

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v6, v9

    .line 137
    .local v6, "g":I
    move v9, v3

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v7, v9

    .line 138
    .local v7, "b":I
    move v9, v4

    move v10, v4

    const/4 v11, 0x7

    shr-int/lit8 v10, v10, 0x7

    add-int/2addr v9, v10

    move v8, v9

    .line 139
    .local v8, "a2":I
    move v9, v5

    move v10, v8

    mul-int/2addr v9, v10

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    move v5, v9

    .line 140
    move v9, v6

    move v10, v8

    mul-int/2addr v9, v10

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    move v6, v9

    .line 141
    move v9, v7

    move v10, v8

    mul-int/2addr v9, v10

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    move v7, v9

    .line 142
    move v9, v4

    const/16 v10, 0x18

    shl-int/lit8 v9, v9, 0x18

    move v10, v5

    const/16 v11, 0x10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    move v10, v6

    const/16 v11, 0x8

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    move v10, v7

    or-int/2addr v9, v10

    move v0, v9

    goto :goto_0
.end method

.method public getArgbPre(II)I
    .locals 8

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobotImage;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/robot/FXRobotImage;->width:I

    if-ge v3, v4, :cond_0

    move v3, v2

    if-ltz v3, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/robot/FXRobotImage;->height:I

    if-lt v3, v4, :cond_1

    .line 114
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "x,y must be >0, <width, height"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/robot/FXRobotImage;->pixelBuffer:Ljava/nio/IntBuffer;

    move v4, v1

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/robot/FXRobotImage;->scanlineStride:I

    mul-int/2addr v5, v6

    const/4 v6, 0x4

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/robot/FXRobotImage;
    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobotImage;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/robot/FXRobotImage;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/robot/FXRobotImage;
    return v0
.end method

.method public getPixelBuffer()Ljava/nio/Buffer;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobotImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/robot/FXRobotImage;->pixelBuffer:Ljava/nio/IntBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/robot/FXRobotImage;
    return-object v0
.end method

.method public getPixelStride()I
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobotImage;
    const/4 v1, 0x4

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/robot/FXRobotImage;
    return v0
.end method

.method public getScanlineStride()I
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobotImage;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/robot/FXRobotImage;->scanlineStride:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/robot/FXRobotImage;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobotImage;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/robot/FXRobotImage;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/robot/FXRobotImage;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/FXRobotImage;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [format=INT_ARGB_PRE width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/robot/FXRobotImage;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/robot/FXRobotImage;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scanlineStride="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/robot/FXRobotImage;->scanlineStride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixelStride="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 149
    invoke-virtual {v2}, Lcom/sun/javafx/robot/FXRobotImage;->getPixelStride()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixelBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/robot/FXRobotImage;->pixelBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/robot/FXRobotImage;
    return-object v0
.end method
