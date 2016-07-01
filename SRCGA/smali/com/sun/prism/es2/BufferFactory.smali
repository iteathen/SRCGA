.class Lcom/sun/prism/es2/BufferFactory;
.super Ljava/lang/Object;
.source "BufferFactory.java"


# static fields
.field static final SIZEOF_BYTE:I = 0x1

.field static final SIZEOF_CHAR:I = 0x2

.field static final SIZEOF_DOUBLE:I = 0x8

.field static final SIZEOF_FLOAT:I = 0x4

.field static final SIZEOF_INT:I = 0x4

.field static final SIZEOF_LONG:I = 0x8

.field static final SIZEOF_SHORT:I = 0x2

.field private static final isLittleEndian:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 42
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/sun/prism/es2/BufferFactory;->newDirectByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v3

    .line 43
    .local v0, "tst_b":Ljava/nio/ByteBuffer;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    move-object v1, v3

    .line 44
    .local v1, "tst_i":Ljava/nio/IntBuffer;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    move-object v2, v3

    .line 45
    .local v2, "tst_s":Ljava/nio/ShortBuffer;
    move-object v3, v1

    const/4 v4, 0x0

    const v5, 0xa0b0c0d

    invoke-virtual {v3, v4, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v3

    .line 46
    const/16 v3, 0xc0d

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    sput-boolean v3, Lcom/sun/prism/es2/BufferFactory;->isLittleEndian:Z

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/BufferFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "buf":Ljava/lang/Object;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    move-object v0, v1

    .line 141
    .end local v0    # "buf":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 128
    .restart local v0    # "buf":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 129
    move-object v1, v0

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 130
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_2

    .line 131
    move-object v1, v0

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 132
    :cond_2
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_3

    .line 133
    move-object v1, v0

    check-cast v1, Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 134
    :cond_3
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_4

    .line 135
    move-object v1, v0

    check-cast v1, Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 136
    :cond_4
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/DoubleBuffer;

    if-eqz v1, :cond_5

    .line 137
    move-object v1, v0

    check-cast v1, Ljava/nio/DoubleBuffer;

    invoke-virtual {v1}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 138
    :cond_5
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/LongBuffer;

    if-eqz v1, :cond_6

    .line 139
    move-object v1, v0

    check-cast v1, Ljava/nio/LongBuffer;

    invoke-virtual {v1}, Ljava/nio/LongBuffer;->array()[J

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 140
    :cond_6
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_7

    .line 141
    move-object v1, v0

    check-cast v1, Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 143
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed array backing store type in buffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    .line 144
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getDirectBufferByteOffset(Ljava/lang/Object;)I
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "buf":Ljava/lang/Object;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 96
    const/4 v2, 0x0

    move v0, v2

    .line 113
    .end local v0    # "buf":Ljava/lang/Object;
    .local v1, "pos":I
    :goto_0
    return v0

    .line 98
    .end local v1    # "pos":I
    .restart local v0    # "buf":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/Buffer;

    if-eqz v2, :cond_7

    .line 99
    move-object v2, v0

    check-cast v2, Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    move v1, v2

    .line 100
    .restart local v1    # "pos":I
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 101
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 102
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_2

    .line 103
    move v2, v1

    const/4 v3, 0x4

    mul-int/lit8 v2, v2, 0x4

    move v0, v2

    goto :goto_0

    .line 104
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_3

    .line 105
    move v2, v1

    const/4 v3, 0x4

    mul-int/lit8 v2, v2, 0x4

    move v0, v2

    goto :goto_0

    .line 106
    :cond_3
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_4

    .line 107
    move v2, v1

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    move v0, v2

    goto :goto_0

    .line 108
    :cond_4
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/DoubleBuffer;

    if-eqz v2, :cond_5

    .line 109
    move v2, v1

    const/16 v3, 0x8

    mul-int/lit8 v2, v2, 0x8

    move v0, v2

    goto :goto_0

    .line 110
    :cond_5
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/LongBuffer;

    if-eqz v2, :cond_6

    .line 111
    move v2, v1

    const/16 v3, 0x8

    mul-int/lit8 v2, v2, 0x8

    move v0, v2

    goto :goto_0

    .line 112
    :cond_6
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/CharBuffer;

    if-eqz v2, :cond_7

    .line 113
    move v2, v1

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    move v0, v2

    goto :goto_0

    .line 117
    .end local v1    # "pos":I
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disallowed array backing store type in buffer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 118
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getIndirectBufferByteOffset(Ljava/lang/Object;)I
    .locals 7

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "buf":Ljava/lang/Object;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 154
    const/4 v2, 0x0

    move v0, v2

    .line 171
    .end local v0    # "buf":Ljava/lang/Object;
    .local v1, "pos":I
    :goto_0
    return v0

    .line 156
    .end local v1    # "pos":I
    .restart local v0    # "buf":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/Buffer;

    if-eqz v2, :cond_7

    .line 157
    move-object v2, v0

    check-cast v2, Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    move v1, v2

    .line 158
    .restart local v1    # "pos":I
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 159
    move-object v2, v0

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    move v3, v1

    add-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 160
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_2

    .line 161
    const/4 v2, 0x4

    move-object v3, v0

    check-cast v3, Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->arrayOffset()I

    move-result v3

    move v4, v1

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 162
    :cond_2
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_3

    .line 163
    const/4 v2, 0x4

    move-object v3, v0

    check-cast v3, Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v3

    move v4, v1

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 164
    :cond_3
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_4

    .line 165
    const/4 v2, 0x2

    move-object v3, v0

    check-cast v3, Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->arrayOffset()I

    move-result v3

    move v4, v1

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 166
    :cond_4
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/DoubleBuffer;

    if-eqz v2, :cond_5

    .line 167
    const/16 v2, 0x8

    move-object v3, v0

    check-cast v3, Ljava/nio/DoubleBuffer;

    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->arrayOffset()I

    move-result v3

    move v4, v1

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 168
    :cond_5
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/LongBuffer;

    if-eqz v2, :cond_6

    .line 169
    const/16 v2, 0x8

    move-object v3, v0

    check-cast v3, Ljava/nio/LongBuffer;

    invoke-virtual {v3}, Ljava/nio/LongBuffer;->arrayOffset()I

    move-result v3

    move v4, v1

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 170
    :cond_6
    move-object v2, v0

    instance-of v2, v2, Ljava/nio/CharBuffer;

    if-eqz v2, :cond_7

    .line 171
    const/4 v2, 0x2

    move-object v3, v0

    check-cast v3, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    move v4, v1

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    move v0, v2

    goto/16 :goto_0

    .line 174
    .end local v1    # "pos":I
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown buffer type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static isDirect(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "buf":Ljava/lang/Object;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x1

    move v0, v1

    .line 85
    .end local v0    # "buf":Ljava/lang/Object;
    :goto_0
    return v0

    .line 72
    .restart local v0    # "buf":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 73
    move-object v1, v0

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 74
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_2

    .line 75
    move-object v1, v0

    check-cast v1, Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 76
    :cond_2
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/DoubleBuffer;

    if-eqz v1, :cond_3

    .line 77
    move-object v1, v0

    check-cast v1, Ljava/nio/DoubleBuffer;

    invoke-virtual {v1}, Ljava/nio/DoubleBuffer;->isDirect()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 78
    :cond_3
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_4

    .line 79
    move-object v1, v0

    check-cast v1, Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->isDirect()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 80
    :cond_4
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_5

    .line 81
    move-object v1, v0

    check-cast v1, Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 82
    :cond_5
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_6

    .line 83
    move-object v1, v0

    check-cast v1, Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 84
    :cond_6
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/LongBuffer;

    if-eqz v1, :cond_7

    .line 85
    move-object v1, v0

    check-cast v1, Ljava/nio/LongBuffer;

    invoke-virtual {v1}, Ljava/nio/LongBuffer;->isDirect()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 87
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected buffer type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isLittleEndian()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/sun/prism/es2/BufferFactory;->isLittleEndian:Z

    return v0
.end method

.method static nativeOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "buf":Ljava/nio/ByteBuffer;
    move-object v1, v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method static newDirectByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 55
    move v0, p0

    .local v0, "size":I
    move v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/prism/es2/BufferFactory;->nativeOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "size":I
    return-object v0
.end method
