.class Lcom/sun/glass/ui/monocle/SoftwareCursor;
.super Lcom/sun/glass/ui/monocle/NativeCursor;
.source "SoftwareCursor.java"


# instance fields
.field private cursorBuffer:Ljava/nio/ByteBuffer;

.field private hotspotX:I

.field private hotspotY:I

.field private renderX:I

.field private renderY:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/NativeCursor;-><init>()V

    return-void
.end method


# virtual methods
.method getBestSize()Lcom/sun/glass/ui/Size;
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    new-instance v1, Lcom/sun/glass/ui/Size;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Lcom/sun/glass/ui/Size;-><init>(II)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    return-object v0
.end method

.method getCursorBuffer()Ljava/nio/Buffer;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/SoftwareCursor;->cursorBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    .line 97
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/SoftwareCursor;->cursorBuffer:Ljava/nio/ByteBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    return-object v0
.end method

.method getRenderX()I
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/SoftwareCursor;->renderX:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    return v0
.end method

.method getRenderY()I
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/SoftwareCursor;->renderY:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    return v0
.end method

.method setHotSpot(II)V
    .locals 5

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    move v1, p1

    .local v1, "hotspotX":I
    move v2, p2

    .local v2, "hotspotY":I
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/monocle/SoftwareCursor;->hotspotX:I

    .line 80
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/monocle/SoftwareCursor;->hotspotY:I

    .line 81
    return-void
.end method

.method setImage([B)V
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    move-object v1, p1

    .local v1, "cursorImage":[B
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/SoftwareCursor;->cursorBuffer:Ljava/nio/ByteBuffer;

    .line 62
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/SoftwareCursor;->cursorBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sun/glass/ui/monocle/NativeCursors;->colorKeyCursor([BLjava/nio/Buffer;II)V

    .line 63
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/SoftwareCursor;->cursorBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/SoftwareCursor;->cursorBuffer:Ljava/nio/ByteBuffer;

    .line 64
    return-void
.end method

.method setLocation(II)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/SoftwareCursor;->hotspotX:I

    sub-int/2addr v5, v6

    move v3, v5

    .line 69
    .local v3, "renderX":I
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/SoftwareCursor;->hotspotY:I

    sub-int/2addr v5, v6

    move v4, v5

    .line 70
    .local v4, "renderY":I
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/SoftwareCursor;->renderX:I

    if-ne v5, v6, :cond_0

    move v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/sun/glass/ui/monocle/SoftwareCursor;->renderY:I

    if-eq v5, v6, :cond_1

    .line 71
    :cond_0
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/glass/ui/monocle/SoftwareCursor;->renderX:I

    .line 72
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/glass/ui/monocle/SoftwareCursor;->renderY:I

    .line 73
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->repaintAll()V

    .line 75
    :cond_1
    return-void
.end method

.method setVisibility(Z)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/SoftwareCursor;
    move v1, p1

    .local v1, "visibility":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/glass/ui/monocle/SoftwareCursor;->isVisible:Z

    if-eq v2, v3, :cond_0

    .line 54
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/glass/ui/monocle/SoftwareCursor;->isVisible:Z

    .line 55
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->getInstance()Lcom/sun/glass/ui/monocle/MonocleWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/MonocleWindowManager;->repaintAll()V

    .line 57
    :cond_0
    return-void
.end method

.method shutdown()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
