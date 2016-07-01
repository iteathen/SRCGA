.class public abstract Lcom/sun/glass/ui/Pixels;
.super Ljava/lang/Object;
.source "Pixels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Pixels$Format;
    }
.end annotation


# instance fields
.field protected final bytes:Ljava/nio/ByteBuffer;

.field protected final bytesPerComponent:I

.field protected final height:I

.field protected final ints:Ljava/nio/IntBuffer;

.field private final scale:F

.field protected final width:I


# direct methods
.method protected constructor <init>(IILjava/nio/ByteBuffer;)V
    .locals 10

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "pixels":Ljava/nio/ByteBuffer;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/glass/ui/Pixels;->width:I

    .line 87
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/glass/ui/Pixels;->height:I

    .line 88
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/glass/ui/Pixels;->bytesPerComponent:I

    .line 89
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    .line 90
    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/Pixels;->width:I

    if-lez v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/Pixels;->height:I

    if-lez v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/Pixels;->width:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v4, v5

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 91
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too small byte buffer size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/Pixels;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/Pixels;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/Pixels;->width:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v7, v8

    const/4 v8, 0x4

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    .line 95
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/glass/ui/Pixels;->scale:F

    .line 96
    return-void
.end method

.method protected constructor <init>(IILjava/nio/IntBuffer;)V
    .locals 10

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "pixels":Ljava/nio/IntBuffer;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 99
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/glass/ui/Pixels;->width:I

    .line 100
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/glass/ui/Pixels;->height:I

    .line 101
    move-object v4, v0

    const/4 v5, 0x4

    iput v5, v4, Lcom/sun/glass/ui/Pixels;->bytesPerComponent:I

    .line 102
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->slice()Ljava/nio/IntBuffer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    .line 103
    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/Pixels;->width:I

    if-lez v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/Pixels;->height:I

    if-lez v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/Pixels;->width:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->capacity()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 104
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too small int buffer size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/Pixels;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/Pixels;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/Pixels;->width:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v7}, Ljava/nio/IntBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    .line 108
    move-object v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/sun/glass/ui/Pixels;->scale:F

    .line 109
    return-void
.end method

.method protected constructor <init>(IILjava/nio/IntBuffer;F)V
    .locals 11

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "pixels":Ljava/nio/IntBuffer;
    move v4, p4

    .local v4, "scale":F
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 112
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/glass/ui/Pixels;->width:I

    .line 113
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/glass/ui/Pixels;->height:I

    .line 114
    move-object v5, v0

    const/4 v6, 0x4

    iput v6, v5, Lcom/sun/glass/ui/Pixels;->bytesPerComponent:I

    .line 115
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->slice()Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    .line 116
    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/Pixels;->width:I

    if-lez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/Pixels;->height:I

    if-lez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/Pixels;->width:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->capacity()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 117
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too small int buffer size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/Pixels;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/Pixels;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/Pixels;->width:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/glass/ui/Pixels;->height:I

    mul-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    .line 121
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/glass/ui/Pixels;->scale:F

    .line 122
    return-void
.end method

.method private attachData(J)V
    .locals 13

    .prologue
    .line 199
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Pixels;
    move-wide v2, p1

    .local v2, "ptr":J
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    if-eqz v5, :cond_0

    .line 200
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v5

    :goto_0
    move-object v4, v5

    .line 201
    .local v4, "array":[I
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v1

    iget v8, v8, Lcom/sun/glass/ui/Pixels;->width:I

    move-object v9, v1

    iget v9, v9, Lcom/sun/glass/ui/Pixels;->height:I

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    move-object v11, v4

    move-object v12, v4

    if-eqz v12, :cond_3

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v12}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v12

    :goto_1
    invoke-virtual/range {v5 .. v12}, Lcom/sun/glass/ui/Pixels;->_attachInt(JIILjava/nio/IntBuffer;[II)V

    .line 203
    .end local v4    # "array":[I
    :cond_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_1

    .line 204
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    :goto_2
    move-object v4, v5

    .line 205
    .local v4, "array":[B
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v1

    iget v8, v8, Lcom/sun/glass/ui/Pixels;->width:I

    move-object v9, v1

    iget v9, v9, Lcom/sun/glass/ui/Pixels;->height:I

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    move-object v11, v4

    move-object v12, v4

    if-eqz v12, :cond_5

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    :goto_3
    invoke-virtual/range {v5 .. v12}, Lcom/sun/glass/ui/Pixels;->_attachByte(JIILjava/nio/ByteBuffer;[BI)V

    .line 207
    .end local v4    # "array":[B
    :cond_1
    return-void

    .line 200
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 201
    .local v4, "array":[I
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 204
    .end local v4    # "array":[I
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 205
    .local v4, "array":[B
    :cond_5
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public static getNativeFormat()I
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 60
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticPixels_getNativeFormat()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract _attachByte(JIILjava/nio/ByteBuffer;[BI)V
.end method

.method protected abstract _attachInt(JIILjava/nio/IntBuffer;[II)V
.end method

.method protected abstract _fillDirectByteBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public final asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 176
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    const/4 v3, 0x4

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, v2

    .line 177
    .local v1, "bb":Ljava/nio/ByteBuffer;
    move-object v2, v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 178
    move-object v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    .line 179
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Pixels;->asByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 180
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/Pixels;
    return-object v0
.end method

.method public final asByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    move-object v1, p1

    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 189
    move-object v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Expected direct buffer."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    const/4 v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    if-ge v2, v3, :cond_1

    .line 192
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Too small buffer."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Pixels;->_fillDirectByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 195
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 215
    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v2, v6

    .line 216
    .local v2, "equals":Z
    move v6, v2

    if-eqz v6, :cond_0

    .line 217
    move-object v6, v1

    check-cast v6, Lcom/sun/glass/ui/Pixels;

    move-object v3, v6

    .line 218
    .local v3, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v6

    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v6

    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v7

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v2, v6

    .line 219
    move v6, v2

    if-eqz v6, :cond_0

    .line 220
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/glass/ui/Pixels;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v4, v6

    .line 221
    .local v4, "b1":Ljava/nio/ByteBuffer;
    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/glass/ui/Pixels;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v5, v6

    .line 222
    .local v5, "b2":Ljava/nio/ByteBuffer;
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    move v2, v6

    .line 225
    .end local v3    # "pixels":Lcom/sun/glass/ui/Pixels;
    .end local v4    # "b1":Ljava/nio/ByteBuffer;
    .end local v5    # "b2":Ljava/nio/ByteBuffer;
    :cond_0
    move v6, v2

    move v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/Pixels;
    return v0

    .line 215
    .end local v2    # "equals":Z
    .restart local v0    # "this":Lcom/sun/glass/ui/Pixels;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 218
    .restart local v2    # "equals":Z
    .restart local v3    # "pixels":Lcom/sun/glass/ui/Pixels;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 222
    .restart local v4    # "b1":Ljava/nio/ByteBuffer;
    .restart local v5    # "b2":Ljava/nio/ByteBuffer;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public final getBytesPerComponent()I
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 153
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Pixels;->bytesPerComponent:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Pixels;
    return v0
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 144
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Pixels;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Pixels;
    return v0
.end method

.method public final getHeightUnsafe()I
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Pixels;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Pixels;
    return v0
.end method

.method public final getPixels()Ljava/nio/Buffer;
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 161
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    .line 162
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Pixels;->bytes:Ljava/nio/ByteBuffer;

    move-object v0, v1

    .line 165
    .end local v0    # "this":Lcom/sun/glass/ui/Pixels;
    :goto_0
    return-object v0

    .line 163
    .restart local v0    # "this":Lcom/sun/glass/ui/Pixels;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_1

    .line 164
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    .line 165
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Pixels;->ints:Ljava/nio/IntBuffer;

    move-object v0, v1

    goto :goto_0

    .line 167
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Unexpected Pixels state."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getScale()F
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 126
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Pixels;->scale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Pixels;
    return v0
.end method

.method public final getScaleUnsafe()F
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Pixels;->scale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Pixels;
    return v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 135
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Pixels;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Pixels;
    return v0
.end method

.method public final getWidthUnsafe()I
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/Pixels;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Pixels;
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Pixels;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 230
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v2

    move v1, v2

    .line 231
    .local v1, "val":I
    const/16 v2, 0x1f

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 232
    const/16 v2, 0x11

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/Pixels;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 233
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/Pixels;
    return v0
.end method
