.class Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
.super Ljava/lang/Object;
.source "PrismMediaFrameHandler.java"

# interfaces
.implements Lcom/sun/prism/MediaFrame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/media/PrismMediaFrameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrismFrameBuffer"
.end annotation


# instance fields
.field private final master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

.field final synthetic this$0:Lcom/sun/javafx/media/PrismMediaFrameHandler;

.field private final videoFormat:Lcom/sun/prism/PixelFormat;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/media/PrismMediaFrameHandler;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)V
    .locals 8

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v1, p1

    move-object v2, p2

    .local v2, "sourceBuffer":Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->this$0:Lcom/sun/javafx/media/PrismMediaFrameHandler;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v3, 0x0

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 193
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 196
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    .line 197
    sget-object v3, Lcom/sun/javafx/media/PrismMediaFrameHandler$1;->$SwitchMap$com$sun$media$jfxmedia$control$VideoFormat:[I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    invoke-interface {v4}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getFormat()Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/media/jfxmedia/control/VideoFormat;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 210
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported video format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    invoke-interface {v6}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getFormat()Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :pswitch_0
    move-object v3, v0

    sget-object v4, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    iput-object v4, v3, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->videoFormat:Lcom/sun/prism/PixelFormat;

    .line 200
    .line 212
    :goto_0
    return-void

    .line 202
    :pswitch_1
    move-object v3, v0

    sget-object v4, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    iput-object v4, v3, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->videoFormat:Lcom/sun/prism/PixelFormat;

    .line 203
    goto :goto_0

    .line 205
    :pswitch_2
    move-object v3, v0

    sget-object v4, Lcom/sun/prism/PixelFormat;->BYTE_APPLE_422:Lcom/sun/prism/PixelFormat;

    iput-object v4, v3, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->videoFormat:Lcom/sun/prism/PixelFormat;

    .line 206
    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public convertToFormat(Lcom/sun/prism/PixelFormat;)Lcom/sun/prism/MediaFrame;
    .locals 8

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v1, p1

    .local v1, "fmt":Lcom/sun/prism/PixelFormat;
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 272
    move-object v3, v0

    move-object v0, v3

    .line 284
    .end local v0    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    :goto_0
    return-object v0

    .line 276
    .restart local v0    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    :cond_0
    move-object v3, v1

    sget-object v4, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    if-eq v3, v4, :cond_1

    .line 277
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 280
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    sget-object v4, Lcom/sun/media/jfxmedia/control/VideoFormat;->BGRA_PRE:Lcom/sun/media/jfxmedia/control/VideoFormat;

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->convertToFormat(Lcom/sun/media/jfxmedia/control/VideoFormat;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v3

    move-object v2, v3

    .line 281
    .local v2, "newVDB":Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    const/4 v3, 0x0

    move-object v4, v2

    if-ne v3, v4, :cond_2

    .line 282
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 284
    :cond_2
    new-instance v3, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->this$0:Lcom/sun/javafx/media/PrismMediaFrameHandler;

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;-><init>(Lcom/sun/javafx/media/PrismMediaFrameHandler;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public getBufferForPlane(I)Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move v1, p1

    .local v1, "plane":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getBufferForPlane(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    return-object v0
.end method

.method public getEncodedHeight()I
    .locals 2

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    invoke-interface {v1}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getEncodedHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    return v0
.end method

.method public getEncodedWidth()I
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    invoke-interface {v1}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getEncodedWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    invoke-interface {v1}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    return v0
.end method

.method public getPixelFormat()Lcom/sun/prism/PixelFormat;
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->videoFormat:Lcom/sun/prism/PixelFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    invoke-interface {v1}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    return v0
.end method

.method public holdFrame()V
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    invoke-interface {v1}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->holdFrame()V

    .line 222
    return-void
.end method

.method public planeCount()I
    .locals 2

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    invoke-interface {v1}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getPlaneCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    return v0
.end method

.method public planeStrides()[I
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    invoke-interface {v1}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getPlaneStrides()[I

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    return-object v0
.end method

.method public releaseFrame()V
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    invoke-interface {v1}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->releaseFrame()V

    .line 227
    return-void
.end method

.method public strideForPlane(I)I
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    move v1, p1

    .local v1, "planeIndex":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;->master:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getStrideForPlane(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/media/PrismMediaFrameHandler$PrismFrameBuffer;
    return v0
.end method
