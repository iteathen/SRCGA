.class final Lcom/sun/glass/ui/gtk/GtkPixels;
.super Lcom/sun/glass/ui/Pixels;
.source "GtkPixels.java"


# direct methods
.method public constructor <init>(IILjava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkPixels;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/ByteBuffer;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/Pixels;-><init>(IILjava/nio/ByteBuffer;)V

    .line 36
    return-void
.end method

.method public constructor <init>(IILjava/nio/IntBuffer;)V
    .locals 8

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkPixels;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/IntBuffer;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/Pixels;-><init>(IILjava/nio/IntBuffer;)V

    .line 40
    return-void
.end method

.method public constructor <init>(IILjava/nio/IntBuffer;F)V
    .locals 10

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkPixels;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/IntBuffer;
    move v4, p4

    .local v4, "scale":F
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/Pixels;-><init>(IILjava/nio/IntBuffer;F)V

    .line 44
    return-void
.end method


# virtual methods
.method protected native _attachByte(JIILjava/nio/ByteBuffer;[BI)V
.end method

.method protected native _attachInt(JIILjava/nio/IntBuffer;[II)V
.end method

.method protected native _copyPixels(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V
.end method

.method protected _fillDirectByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 9

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkPixels;
    move-object v1, p1

    .local v1, "bb":Ljava/nio/ByteBuffer;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkPixels;->bytes:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_1

    .line 50
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkPixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    .line 51
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkPixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/gtk/GtkPixels;->bytes:Ljava/nio/ByteBuffer;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/glass/ui/gtk/GtkPixels;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/gtk/GtkPixels;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/glass/ui/gtk/GtkPixels;->_copyPixels(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 56
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkPixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    .line 72
    :goto_1
    return-void

    .line 54
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/gtk/GtkPixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_0

    .line 58
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkPixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    .line 59
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkPixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/gtk/GtkPixels;->ints:Ljava/nio/IntBuffer;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/glass/ui/gtk/GtkPixels;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/gtk/GtkPixels;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/glass/ui/gtk/GtkPixels;->_copyPixels(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 70
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkPixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    goto :goto_1

    .line 62
    :cond_3
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_2
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/gtk/GtkPixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->capacity()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 63
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkPixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    move v3, v4

    .line 64
    .local v3, "data":I
    move-object v4, v1

    move v5, v3

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 65
    move-object v4, v1

    move v5, v3

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 66
    move-object v4, v1

    move v5, v3

    const/16 v6, 0x10

    shr-int/lit8 v5, v5, 0x10

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 67
    move-object v4, v1

    move v5, v3

    const/16 v6, 0x18

    shr-int/lit8 v5, v5, 0x18

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
