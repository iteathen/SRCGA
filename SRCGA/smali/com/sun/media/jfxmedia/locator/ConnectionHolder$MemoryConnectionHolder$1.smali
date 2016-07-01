.class Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;
.super Ljava/lang/Object;
.source "ConnectionHolder.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;-><init>(Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;


# direct methods
.method constructor <init>(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)V
    .locals 4

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;
    move-object v1, p1

    .local v1, "bb":Ljava/nio/ByteBuffer;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    invoke-static {v3}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->access$000(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gtz v3, :cond_0

    .line 371
    const/4 v3, -0x1

    move v0, v3

    .line 391
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;
    :goto_0
    return v0

    .line 375
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    # getter for: Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->DEFAULT_BUFFER_SIZE:I
    invoke-static {}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->access$100()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->access$000(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    .line 379
    .local v2, "actual":I
    move v3, v2

    if-lez v3, :cond_1

    .line 380
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->access$000(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    .line 381
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->buffer:Ljava/nio/ByteBuffer;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    .line 391
    :cond_1
    :goto_1
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 384
    .end local v2    # "actual":I
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->access$000(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    .line 385
    .restart local v2    # "actual":I
    move v3, v2

    if-lez v3, :cond_1

    .line 386
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    invoke-static {v3}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->access$000(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->access$000(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    .line 387
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->access$000(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 388
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    invoke-static {v3}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->access$000(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder$1;->this$0:Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;->access$000(Lcom/sun/media/jfxmedia/locator/ConnectionHolder$MemoryConnectionHolder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v3

    goto :goto_1
.end method
