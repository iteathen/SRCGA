.class Lcom/sun/glass/ui/monocle/Framebuffer;
.super Ljava/lang/Object;
.source "Framebuffer.java"


# instance fields
.field private address:I

.field private bb:Ljava/nio/ByteBuffer;

.field private byteDepth:I

.field private clearBuffer:Ljava/nio/ByteBuffer;

.field private height:I

.field private lineByteBuffer:Ljava/nio/ByteBuffer;

.field private linePixelBuffer:Ljava/nio/Buffer;

.field private receivedData:Z

.field private width:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;IIIZ)V
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Framebuffer;
    move-object v1, p1

    .local v1, "bb":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move v4, p4

    .local v4, "depth":I
    move v5, p5

    .local v5, "clear":Z
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    .line 54
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    .line 55
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/glass/ui/monocle/Framebuffer;->height:I

    .line 56
    move-object v6, v0

    move v7, v4

    const/4 v8, 0x3

    ushr-int/lit8 v7, v7, 0x3

    iput v7, v6, Lcom/sun/glass/ui/monocle/Framebuffer;->byteDepth:I

    .line 57
    move v6, v5

    if-eqz v6, :cond_0

    .line 58
    move-object v6, v0

    move v7, v2

    const/4 v8, 0x4

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/glass/ui/monocle/Framebuffer;->clearBuffer:Ljava/nio/ByteBuffer;

    .line 60
    :cond_0
    return-void
.end method

.method private static blend32(III)I
    .locals 15

    .prologue
    .line 196
    move v0, p0

    .local v0, "src":I
    move/from16 v1, p1

    .local v1, "dst":I
    move/from16 v2, p2

    .local v2, "alphaMultiplier":I
    move v11, v0

    const/16 v12, 0x18

    shr-int/lit8 v11, v11, 0x18

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v12, v2

    mul-int/2addr v11, v12

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    move v3, v11

    .line 197
    .local v3, "srcA":I
    move v11, v0

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v4, v11

    .line 198
    .local v4, "srcR":I
    move v11, v0

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v5, v11

    .line 199
    .local v5, "srcG":I
    move v11, v0

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v6, v11

    .line 200
    .local v6, "srcB":I
    move v11, v1

    const/16 v12, 0x18

    shr-int/lit8 v11, v11, 0x18

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v7, v11

    .line 201
    .local v7, "dstA":I
    move v11, v1

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v8, v11

    .line 202
    .local v8, "dstR":I
    move v11, v1

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v9, v11

    .line 203
    .local v9, "dstG":I
    move v11, v1

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v10, v11

    .line 204
    .local v10, "dstB":I
    move v11, v4

    move v12, v3

    mul-int/2addr v11, v12

    const/16 v12, 0xff

    div-int/lit16 v11, v11, 0xff

    move v12, v8

    move v13, v7

    mul-int/2addr v12, v13

    const/16 v13, 0xff

    move v14, v3

    rsub-int v13, v14, 0xff

    mul-int/2addr v12, v13

    const v13, 0xff00

    div-int/2addr v12, v13

    add-int/2addr v11, v12

    move v8, v11

    .line 205
    move v11, v5

    move v12, v3

    mul-int/2addr v11, v12

    const/16 v12, 0xff

    div-int/lit16 v11, v11, 0xff

    move v12, v9

    move v13, v7

    mul-int/2addr v12, v13

    const/16 v13, 0xff

    move v14, v3

    rsub-int v13, v14, 0xff

    mul-int/2addr v12, v13

    const v13, 0xff00

    div-int/2addr v12, v13

    add-int/2addr v11, v12

    move v9, v11

    .line 206
    move v11, v6

    move v12, v3

    mul-int/2addr v11, v12

    const/16 v12, 0xff

    div-int/lit16 v11, v11, 0xff

    move v12, v10

    move v13, v7

    mul-int/2addr v12, v13

    const/16 v13, 0xff

    move v14, v3

    rsub-int v13, v14, 0xff

    mul-int/2addr v12, v13

    const v13, 0xff00

    div-int/2addr v12, v13

    add-int/2addr v11, v12

    move v10, v11

    .line 207
    move v11, v3

    move v12, v7

    const/16 v13, 0xff

    move v14, v3

    rsub-int v13, v14, 0xff

    mul-int/2addr v12, v13

    const/16 v13, 0xff

    div-int/lit16 v12, v12, 0xff

    add-int/2addr v11, v12

    move v7, v11

    .line 208
    move v11, v7

    const/16 v12, 0x18

    shl-int/lit8 v11, v11, 0x18

    move v12, v8

    const/16 v13, 0x10

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    move v12, v9

    const/16 v13, 0x8

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    move v12, v10

    or-int/2addr v11, v12

    move v0, v11

    .end local v0    # "src":I
    return v0
.end method


# virtual methods
.method clearBufferContents()V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Framebuffer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    .line 77
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/Framebuffer;->address:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 78
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/Framebuffer;->address:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/monocle/Framebuffer;->height:I

    mul-int/2addr v4, v5

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    .line 79
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/monocle/Framebuffer;->height:I

    if-ge v2, v3, :cond_0

    .line 80
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/Framebuffer;->clearBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    .line 81
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/Framebuffer;->clearBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method composePixels(Ljava/nio/Buffer;IIIIF)V
    .locals 26

    .prologue
    .line 92
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/monocle/Framebuffer;
    move-object/from16 v3, p1

    .local v3, "src":Ljava/nio/Buffer;
    move/from16 v4, p2

    .local v4, "pX":I
    move/from16 v5, p3

    .local v5, "pY":I
    move/from16 v6, p4

    .local v6, "pW":I
    move/from16 v7, p5

    .local v7, "pH":I
    move/from16 v8, p6

    .local v8, "alpha":F
    move/from16 v20, v6

    const/16 v21, 0x4

    mul-int/lit8 v20, v20, 0x4

    move/from16 v9, v20

    .line 93
    .local v9, "stride":I
    const/16 v20, 0x0

    move/from16 v10, v20

    .line 94
    .local v10, "start":I
    move/from16 v20, v4

    if-gez v20, :cond_0

    .line 95
    move/from16 v20, v10

    move/from16 v21, v4

    const/16 v22, 0x4

    mul-int/lit8 v21, v21, 0x4

    sub-int v20, v20, v21

    move/from16 v10, v20

    .line 96
    move/from16 v20, v6

    move/from16 v21, v4

    add-int v20, v20, v21

    move/from16 v6, v20

    .line 97
    const/16 v20, 0x0

    move/from16 v4, v20

    .line 99
    :cond_0
    move/from16 v20, v5

    if-gez v20, :cond_1

    .line 100
    move/from16 v20, v10

    move/from16 v21, v5

    move/from16 v22, v9

    mul-int v21, v21, v22

    sub-int v20, v20, v21

    move/from16 v10, v20

    .line 101
    move/from16 v20, v7

    move/from16 v21, v5

    add-int v20, v20, v21

    move/from16 v7, v20

    .line 102
    const/16 v20, 0x0

    move/from16 v5, v20

    .line 104
    :cond_1
    move/from16 v20, v4

    move/from16 v21, v6

    add-int v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 105
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    move/from16 v20, v0

    move/from16 v21, v4

    sub-int v20, v20, v21

    move/from16 v6, v20

    .line 107
    :cond_2
    move/from16 v20, v5

    move/from16 v21, v7

    add-int v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->height:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 108
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->height:I

    move/from16 v20, v0

    move/from16 v21, v5

    sub-int v20, v20, v21

    move/from16 v7, v20

    .line 110
    :cond_3
    move/from16 v20, v8

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v20

    const/high16 v21, 0x43800000    # 256.0f

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v11, v20

    .line 111
    .local v11, "alphaMultiplier":I
    move/from16 v20, v6

    if-ltz v20, :cond_4

    move/from16 v20, v7

    if-ltz v20, :cond_4

    move/from16 v20, v11

    if-gtz v20, :cond_5

    .line 112
    .line 193
    :cond_4
    :goto_0
    return-void

    .line 116
    :cond_5
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->receivedData:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->clearBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 117
    move/from16 v20, v11

    const/16 v21, 0x100

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    move/from16 v20, v10

    if-nez v20, :cond_6

    move/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    move/from16 v20, v7

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->height:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 118
    :cond_6
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/glass/ui/monocle/Framebuffer;->clearBufferContents()V

    .line 121
    :cond_7
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->address:I

    move/from16 v21, v0

    move/from16 v22, v4

    const/16 v23, 0x4

    mul-int/lit8 v22, v22, 0x4

    add-int v21, v21, v22

    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    const/16 v23, 0x4

    mul-int/lit8 v22, v22, 0x4

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 122
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 125
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->receivedData:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 127
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/nio/IntBuffer;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 128
    move-object/from16 v20, v3

    check-cast v20, Ljava/nio/IntBuffer;

    move-object/from16 v12, v20

    .line 132
    .local v12, "srcPixels":Ljava/nio/IntBuffer;
    :goto_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v20

    move-object/from16 v13, v20

    .line 133
    .local v13, "dstPixels":Ljava/nio/IntBuffer;
    const/16 v20, 0x0

    move/from16 v14, v20

    .local v14, "i":I
    :goto_2
    move/from16 v20, v14

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 134
    move/from16 v20, v14

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    move/from16 v15, v20

    .line 135
    .local v15, "dstPosition":I
    move/from16 v20, v10

    move/from16 v21, v14

    move/from16 v22, v9

    mul-int v21, v21, v22

    add-int v20, v20, v21

    const/16 v21, 0x2

    shr-int/lit8 v20, v20, 0x2

    move/from16 v16, v20

    .line 136
    .local v16, "srcPosition":I
    move/from16 v20, v11

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_b

    .line 137
    const/16 v20, 0x0

    move/from16 v17, v20

    .local v17, "j":I
    :goto_3
    move/from16 v20, v17

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 138
    move-object/from16 v20, v12

    move/from16 v21, v16

    move/from16 v22, v17

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/nio/IntBuffer;->get(I)I

    move-result v20

    move/from16 v18, v20

    .line 139
    .local v18, "srcPixel":I
    move/from16 v20, v18

    const/16 v21, 0x18

    shr-int/lit8 v20, v20, 0x18

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v19, v20

    .line 140
    .local v19, "srcA":I
    move/from16 v20, v19

    const/16 v21, 0xff

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 141
    move-object/from16 v20, v13

    move/from16 v21, v15

    move/from16 v22, v17

    add-int v21, v21, v22

    move/from16 v22, v18

    invoke-virtual/range {v20 .. v22}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v20

    .line 137
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 130
    .end local v12    # "srcPixels":Ljava/nio/IntBuffer;
    .end local v13    # "dstPixels":Ljava/nio/IntBuffer;
    .end local v14    # "i":I
    .end local v15    # "dstPosition":I
    .end local v16    # "srcPosition":I
    .end local v17    # "j":I
    .end local v18    # "srcPixel":I
    .end local v19    # "srcA":I
    :cond_8
    move-object/from16 v20, v3

    check-cast v20, Ljava/nio/ByteBuffer;

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v20

    move-object/from16 v12, v20

    .restart local v12    # "srcPixels":Ljava/nio/IntBuffer;
    goto/16 :goto_1

    .line 143
    .restart local v13    # "dstPixels":Ljava/nio/IntBuffer;
    .restart local v14    # "i":I
    .restart local v15    # "dstPosition":I
    .restart local v16    # "srcPosition":I
    .restart local v17    # "j":I
    .restart local v18    # "srcPixel":I
    .restart local v19    # "srcA":I
    :cond_9
    move-object/from16 v20, v13

    move/from16 v21, v15

    move/from16 v22, v17

    add-int v21, v21, v22

    move/from16 v22, v18

    move-object/from16 v23, v13

    move/from16 v24, v15

    move/from16 v25, v17

    add-int v24, v24, v25

    .line 145
    invoke-virtual/range {v23 .. v24}, Ljava/nio/IntBuffer;->get(I)I

    move-result v23

    const/16 v24, 0x100

    .line 144
    invoke-static/range {v22 .. v24}, Lcom/sun/glass/ui/monocle/Framebuffer;->blend32(III)I

    move-result v22

    .line 143
    invoke-virtual/range {v20 .. v22}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v20

    goto :goto_4

    .line 137
    .line 133
    .end local v18    # "srcPixel":I
    .end local v19    # "srcA":I
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 150
    .end local v17    # "j":I
    :cond_b
    const/16 v20, 0x0

    move/from16 v17, v20

    .restart local v17    # "j":I
    :goto_5
    move/from16 v20, v17

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 151
    move-object/from16 v20, v13

    move/from16 v21, v15

    move/from16 v22, v17

    add-int v21, v21, v22

    move-object/from16 v22, v12

    move/from16 v23, v16

    move/from16 v24, v17

    add-int v23, v23, v24

    .line 152
    invoke-virtual/range {v22 .. v23}, Ljava/nio/IntBuffer;->get(I)I

    move-result v22

    move-object/from16 v23, v13

    move/from16 v24, v15

    move/from16 v25, v17

    add-int v24, v24, v25

    .line 153
    invoke-virtual/range {v23 .. v24}, Ljava/nio/IntBuffer;->get(I)I

    move-result v23

    move/from16 v24, v11

    .line 152
    invoke-static/range {v22 .. v24}, Lcom/sun/glass/ui/monocle/Framebuffer;->blend32(III)I

    move-result v22

    .line 151
    invoke-virtual/range {v20 .. v22}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v20

    .line 150
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 158
    .line 192
    .end local v12    # "srcPixels":Ljava/nio/IntBuffer;
    .end local v13    # "dstPixels":Ljava/nio/IntBuffer;
    .end local v14    # "i":I
    .end local v15    # "dstPosition":I
    .end local v16    # "srcPosition":I
    .end local v17    # "j":I
    :cond_c
    :goto_6
    move-object/from16 v20, v2

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/sun/glass/ui/monocle/Framebuffer;->receivedData:Z

    .line 193
    goto/16 :goto_0

    .line 159
    :cond_d
    move/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 160
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 161
    move-object/from16 v20, v3

    move/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 162
    move-object/from16 v20, v3

    move/from16 v21, v9

    move/from16 v22, v7

    mul-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 163
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    check-cast v21, Ljava/nio/ByteBuffer;

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v20

    goto :goto_6

    .line 165
    :cond_e
    move-object/from16 v20, v3

    check-cast v20, Ljava/nio/IntBuffer;

    move-object/from16 v12, v20

    .line 166
    .restart local v12    # "srcPixels":Ljava/nio/IntBuffer;
    move-object/from16 v20, v12

    move/from16 v21, v10

    const/16 v22, 0x2

    shr-int/lit8 v21, v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 167
    move-object/from16 v20, v12

    move/from16 v21, v9

    move/from16 v22, v7

    mul-int v21, v21, v22

    const/16 v22, 0x2

    shr-int/lit8 v21, v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 168
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v20

    .line 169
    goto :goto_6

    .line 171
    .end local v12    # "srcPixels":Ljava/nio/IntBuffer;
    :cond_f
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 172
    const/16 v20, 0x0

    move/from16 v12, v20

    .local v12, "i":I
    :goto_7
    move/from16 v20, v12

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    .line 173
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->address:I

    move/from16 v21, v0

    move/from16 v22, v4

    const/16 v23, 0x4

    mul-int/lit8 v22, v22, 0x4

    add-int v21, v21, v22

    move/from16 v22, v5

    move/from16 v23, v12

    add-int v22, v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    const/16 v23, 0x4

    mul-int/lit8 v22, v22, 0x4

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 174
    move-object/from16 v20, v3

    move/from16 v21, v10

    move/from16 v22, v12

    move/from16 v23, v9

    mul-int v22, v22, v23

    add-int v21, v21, v22

    move/from16 v22, v6

    const/16 v23, 0x4

    mul-int/lit8 v22, v22, 0x4

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 175
    move-object/from16 v20, v3

    move/from16 v21, v10

    move/from16 v22, v12

    move/from16 v23, v9

    mul-int v22, v22, v23

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 176
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    check-cast v21, Ljava/nio/ByteBuffer;

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 172
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_10
    goto/16 :goto_6

    .line 179
    .end local v12    # "i":I
    :cond_11
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->address:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 180
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->address:I

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->height:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    const/16 v23, 0x4

    mul-int/lit8 v22, v22, 0x4

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 181
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v20

    move-object/from16 v12, v20

    .line 182
    .local v12, "dstPixels":Ljava/nio/IntBuffer;
    move-object/from16 v20, v3

    check-cast v20, Ljava/nio/IntBuffer;

    move-object/from16 v13, v20

    .line 183
    .local v13, "srcPixels":Ljava/nio/IntBuffer;
    const/16 v20, 0x0

    move/from16 v14, v20

    .restart local v14    # "i":I
    :goto_8
    move/from16 v20, v14

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 184
    move-object/from16 v20, v12

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v14

    add-int v22, v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 185
    move-object/from16 v20, v13

    move/from16 v21, v6

    move/from16 v22, v10

    move/from16 v23, v14

    move/from16 v24, v9

    mul-int v23, v23, v24

    add-int v22, v22, v23

    const/16 v23, 0x2

    shr-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 186
    move-object/from16 v20, v13

    move/from16 v21, v10

    move/from16 v22, v14

    move/from16 v23, v9

    mul-int v22, v22, v23

    add-int v21, v21, v22

    const/16 v22, 0x2

    shr-int/lit8 v21, v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v20

    .line 187
    move-object/from16 v20, v12

    move-object/from16 v21, v3

    check-cast v21, Ljava/nio/IntBuffer;

    invoke-virtual/range {v20 .. v21}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v20

    .line 183
    add-int/lit8 v14, v14, 0x1

    goto :goto_8
.end method

.method copyToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 14

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Framebuffer;
    move-object v1, p1

    .local v1, "out":Ljava/nio/ByteBuffer;
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v11

    .line 241
    move-object v11, v0

    iget v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->byteDepth:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1

    .line 242
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 265
    :cond_0
    return-void

    .line 243
    :cond_1
    move-object v11, v0

    iget v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->byteDepth:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 244
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v11, :cond_2

    .line 245
    move-object v11, v0

    move-object v12, v0

    iget v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    .line 246
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 247
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v12

    iput-object v12, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->linePixelBuffer:Ljava/nio/Buffer;

    .line 249
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    move-object v2, v11

    .line 250
    .local v2, "srcPixels":Ljava/nio/IntBuffer;
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->linePixelBuffer:Ljava/nio/Buffer;

    check-cast v11, Ljava/nio/ShortBuffer;

    move-object v3, v11

    .line 251
    .local v3, "shortBuffer":Ljava/nio/ShortBuffer;
    const/4 v11, 0x0

    move v4, v11

    .local v4, "i":I
    :goto_0
    move v11, v4

    move-object v12, v0

    iget v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->height:I

    if-ge v11, v12, :cond_0

    .line 252
    move-object v11, v3

    invoke-virtual {v11}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v11

    .line 253
    const/4 v11, 0x0

    move v5, v11

    .local v5, "j":I
    :goto_1
    move v11, v5

    move-object v12, v0

    iget v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    if-ge v11, v12, :cond_3

    .line 254
    move-object v11, v2

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->get()I

    move-result v11

    move v6, v11

    .line 255
    .local v6, "pixel32":I
    move v11, v6

    const/16 v12, 0x13

    shr-int/lit8 v11, v11, 0x13

    const/16 v12, 0x1f

    and-int/lit8 v11, v11, 0x1f

    const v12, 0x83a53

    mul-int/2addr v11, v12

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const v12, 0xf800

    and-int/2addr v11, v12

    move v7, v11

    .line 256
    .local v7, "r":I
    move v11, v6

    const/16 v12, 0xa

    shr-int/lit8 v11, v11, 0xa

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    const v12, 0x40cb3

    mul-int/2addr v11, v12

    const/16 v12, 0xd

    shr-int/lit8 v11, v11, 0xd

    const/16 v12, 0x7e0

    and-int/lit16 v11, v11, 0x7e0

    move v8, v11

    .line 257
    .local v8, "g":I
    move v11, v6

    const/4 v12, 0x3

    shr-int/lit8 v11, v11, 0x3

    const/16 v12, 0x1f

    and-int/lit8 v11, v11, 0x1f

    const v12, 0x83a53

    mul-int/2addr v11, v12

    const/16 v12, 0x13

    shr-int/lit8 v11, v11, 0x13

    move v9, v11

    .line 258
    .local v9, "b":I
    move v11, v7

    move v12, v8

    or-int/2addr v11, v12

    move v12, v9

    or-int/2addr v11, v12

    move v10, v11

    .line 259
    .local v10, "pixel16":I
    move-object v11, v3

    move v12, v10

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v11

    .line 253
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 261
    .end local v6    # "pixel32":I
    .end local v7    # "r":I
    .end local v8    # "g":I
    .end local v9    # "b":I
    .end local v10    # "pixel16":I
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v11

    .line 262
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method getBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Framebuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    .line 64
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/Framebuffer;
    return-object v0
.end method

.method hasReceivedData()Z
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Framebuffer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/monocle/Framebuffer;->receivedData:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/Framebuffer;
    return v0
.end method

.method reset()V
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Framebuffer;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/Framebuffer;->receivedData:Z

    .line 69
    return-void
.end method

.method setStartAddress(I)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Framebuffer;
    move v1, p1

    .local v1, "address":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/monocle/Framebuffer;->address:I

    .line 73
    return-void
.end method

.method write(Ljava/nio/channels/WritableByteChannel;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/Framebuffer;
    move-object v1, p1

    .local v1, "out":Ljava/nio/channels/WritableByteChannel;
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v11

    .line 213
    move-object v11, v0

    iget v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->byteDepth:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1

    .line 214
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-interface {v11, v12}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 237
    :cond_0
    return-void

    .line 215
    :cond_1
    move-object v11, v0

    iget v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->byteDepth:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 216
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v11, :cond_2

    .line 217
    move-object v11, v0

    move-object v12, v0

    iget v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    .line 218
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 219
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v12

    iput-object v12, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->linePixelBuffer:Ljava/nio/Buffer;

    .line 221
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    move-object v2, v11

    .line 222
    .local v2, "srcPixels":Ljava/nio/IntBuffer;
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->linePixelBuffer:Ljava/nio/Buffer;

    check-cast v11, Ljava/nio/ShortBuffer;

    move-object v3, v11

    .line 223
    .local v3, "shortBuffer":Ljava/nio/ShortBuffer;
    const/4 v11, 0x0

    move v4, v11

    .local v4, "i":I
    :goto_0
    move v11, v4

    move-object v12, v0

    iget v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->height:I

    if-ge v11, v12, :cond_0

    .line 224
    move-object v11, v3

    invoke-virtual {v11}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v11

    .line 225
    const/4 v11, 0x0

    move v5, v11

    .local v5, "j":I
    :goto_1
    move v11, v5

    move-object v12, v0

    iget v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->width:I

    if-ge v11, v12, :cond_3

    .line 226
    move-object v11, v2

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->get()I

    move-result v11

    move v6, v11

    .line 227
    .local v6, "pixel32":I
    move v11, v6

    const/16 v12, 0x13

    shr-int/lit8 v11, v11, 0x13

    const/16 v12, 0x1f

    and-int/lit8 v11, v11, 0x1f

    const v12, 0x83a53

    mul-int/2addr v11, v12

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const v12, 0xf800

    and-int/2addr v11, v12

    move v7, v11

    .line 228
    .local v7, "r":I
    move v11, v6

    const/16 v12, 0xa

    shr-int/lit8 v11, v11, 0xa

    const/16 v12, 0x3f

    and-int/lit8 v11, v11, 0x3f

    const v12, 0x40cb3

    mul-int/2addr v11, v12

    const/16 v12, 0xd

    shr-int/lit8 v11, v11, 0xd

    const/16 v12, 0x7e0

    and-int/lit16 v11, v11, 0x7e0

    move v8, v11

    .line 229
    .local v8, "g":I
    move v11, v6

    const/4 v12, 0x3

    shr-int/lit8 v11, v11, 0x3

    const/16 v12, 0x1f

    and-int/lit8 v11, v11, 0x1f

    const v12, 0x83a53

    mul-int/2addr v11, v12

    const/16 v12, 0x13

    shr-int/lit8 v11, v11, 0x13

    move v9, v11

    .line 230
    .local v9, "b":I
    move v11, v7

    move v12, v8

    or-int/2addr v11, v12

    move v12, v9

    or-int/2addr v11, v12

    move v10, v11

    .line 231
    .local v10, "pixel16":I
    move-object v11, v3

    move v12, v10

    int-to-short v12, v12

    invoke-virtual {v11, v12}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move-result-object v11

    .line 225
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 233
    .end local v6    # "pixel32":I
    .end local v7    # "r":I
    .end local v8    # "g":I
    .end local v9    # "b":I
    .end local v10    # "pixel16":I
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v11

    .line 234
    move-object v11, v1

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/glass/ui/monocle/Framebuffer;->lineByteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v11, v12}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v11

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
