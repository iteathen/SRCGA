.class public Lcom/sun/javafx/sg/prism/NGExternalNode;
.super Lcom/sun/javafx/sg/prism/NGNode;
.source "NGExternalNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;,
        Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;
    }
.end annotation


# instance fields
.field private bufferData:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

.field private volatile bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private dsttexture:Lcom/sun/prism/Texture;

.field private rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

.field private final renderData:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGNode;-><init>()V

    .line 43
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGExternalNode;->renderData:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/sg/prism/NGExternalNode;IIIIZLcom/sun/javafx/sg/prism/NGExternalNode$RenderData;)Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/sg/prism/NGExternalNode;->lambda$setImageBounds$265(IIIIZLcom/sun/javafx/sg/prism/NGExternalNode$RenderData;)Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/sg/prism/NGExternalNode;IIIILcom/sun/javafx/sg/prism/NGExternalNode$RenderData;)Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    .locals 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/sg/prism/NGExternalNode;->lambda$repaintDirtyRegion$266(IIIILcom/sun/javafx/sg/prism/NGExternalNode$RenderData;)Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method private createTexture(Lcom/sun/prism/Graphics;Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;)Lcom/sun/prism/Texture;
    .locals 11

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "rd":Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    move-object v5, v1

    invoke-interface {v5}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v5

    move-object v3, v5

    .line 111
    .local v3, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v5, v3

    invoke-interface {v5}, Lcom/sun/prism/ResourceFactory;->isDeviceReady()Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    const/4 v5, 0x0

    move-object v0, v5

    .line 123
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    :goto_0
    return-object v0

    .line 114
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    :cond_0
    move-object v5, v3

    sget-object v6, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    sget-object v7, Lcom/sun/prism/Texture$Usage;->DYNAMIC:Lcom/sun/prism/Texture$Usage;

    sget-object v8, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    move-object v9, v2

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->srcbounds:Lcom/sun/javafx/geom/Rectangle;

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v10, v2

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->srcbounds:Lcom/sun/javafx/geom/Rectangle;

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-interface/range {v5 .. v10}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/Texture;

    move-result-object v5

    move-object v4, v5

    .line 118
    .local v4, "txt":Lcom/sun/prism/Texture;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 119
    move-object v5, v4

    invoke-interface {v5}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 123
    :goto_1
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 121
    :cond_1
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "NGExternalNode: failed to create a texture"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private synthetic lambda$repaintDirtyRegion$266(IIIILcom/sun/javafx/sg/prism/NGExternalNode$RenderData;)Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    .locals 15

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    move/from16 v1, p1

    .local v1, "dirtyX":I
    move/from16 v2, p2

    .local v2, "dirtyY":I
    move/from16 v3, p3

    .local v3, "dirtyWidth":I
    move/from16 v4, p4

    .local v4, "dirtyHeight":I
    move-object/from16 v5, p5

    .local v5, "prev":Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 237
    move-object v6, v5

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->copyAddDirtyRect(IIII)Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-result-object v6

    move-object v0, v6

    .line 239
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    :cond_0
    new-instance v6, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferData:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;-><init>(Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;IIIIZ)V

    move-object v0, v6

    goto :goto_0
.end method

.method private synthetic lambda$setImageBounds$265(IIIIZLcom/sun/javafx/sg/prism/NGExternalNode$RenderData;)Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    .locals 18

    .prologue
    .line 227
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move/from16 v5, p5

    .local v5, "shrinked":Z
    move-object/from16 v6, p6

    .local v6, "prev":Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    move-object v8, v6

    if-eqz v8, :cond_0

    move-object v8, v6

    iget-boolean v8, v8, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->clearTarget:Z

    :goto_0
    move v7, v8

    .line 228
    .local v7, "clearTarget":Z
    new-instance v8, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferData:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v7

    move/from16 v16, v5

    or-int v15, v15, v16

    invoke-direct/range {v9 .. v15}, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;-><init>(Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;IIIIZ)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    return-object v0

    .line 227
    .end local v7    # "clearTarget":Z
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected hasOverlappingContents()Z
    .locals 2

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    return v0
.end method

.method public markContentDirty()V
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGExternalNode;->visualsChanged()V

    .line 246
    return-void
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 21

    .prologue
    .line 51
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    move-object/from16 v2, p1

    .local v2, "g":Lcom/sun/prism/Graphics;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->renderData:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-object v3, v10

    .line 53
    .local v3, "curRenderData":Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;
    move-object v10, v3

    if-eqz v10, :cond_0

    .line 54
    move-object v10, v1

    move-object v11, v3

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    .line 56
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    if-nez v10, :cond_1

    .line 107
    :goto_0
    return-void

    .line 58
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->srcbounds:Lcom/sun/javafx/geom/Rectangle;

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->x:I

    move v4, v10

    .line 59
    .local v4, "x":I
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->srcbounds:Lcom/sun/javafx/geom/Rectangle;

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->y:I

    move v5, v10

    .line 60
    .local v5, "y":I
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->srcbounds:Lcom/sun/javafx/geom/Rectangle;

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->width:I

    move v6, v10

    .line 61
    .local v6, "w":I
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->srcbounds:Lcom/sun/javafx/geom/Rectangle;

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->height:I

    move v7, v10

    .line 63
    .local v7, "h":I
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    if-eqz v10, :cond_4

    .line 65
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    invoke-interface {v10}, Lcom/sun/prism/Texture;->lock()V

    .line 67
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    invoke-interface {v10}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v10

    if-nez v10, :cond_2

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    .line 68
    invoke-interface {v10}, Lcom/sun/prism/Texture;->getContentWidth()I

    move-result v10

    move v11, v6

    if-ne v10, v11, :cond_2

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    .line 69
    invoke-interface {v10}, Lcom/sun/prism/Texture;->getContentHeight()I

    move-result v10

    move v11, v7

    if-eq v10, v11, :cond_3

    .line 71
    :cond_2
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    invoke-interface {v10}, Lcom/sun/prism/Texture;->unlock()V

    .line 72
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    invoke-interface {v10}, Lcom/sun/prism/Texture;->dispose()V

    .line 73
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v6

    move v15, v7

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->copyAddDirtyRect(IIII)Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    .line 74
    move-object v10, v1

    move-object v11, v1

    move-object v12, v2

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/sg/prism/NGExternalNode;->createTexture(Lcom/sun/prism/Graphics;Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;)Lcom/sun/prism/Texture;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    .line 79
    :cond_3
    :goto_1
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    if-nez v10, :cond_5

    .line 80
    goto :goto_0

    .line 77
    :cond_4
    move-object v10, v1

    move-object v11, v1

    move-object v12, v2

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    invoke-direct {v11, v12, v13}, Lcom/sun/javafx/sg/prism/NGExternalNode;->createTexture(Lcom/sun/prism/Graphics;Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;)Lcom/sun/prism/Texture;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    goto :goto_1

    .line 83
    :cond_5
    move-object v10, v3

    if-eqz v10, :cond_6

    .line 84
    move-object v10, v1

    :try_start_0
    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    move-object v10, v1

    :try_start_1
    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->srcbuffer:Ljava/nio/Buffer;

    sget-object v12, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->x:I

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->y:I

    move v15, v4

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move/from16 v16, v5

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->dirtyRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->linestride:I

    move/from16 v19, v0

    const/16 v20, 0x4

    mul-int/lit8 v19, v19, 0x4

    const/16 v20, 0x0

    invoke-interface/range {v10 .. v20}, Lcom/sun/prism/Texture;->update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    move-object v10, v1

    :try_start_2
    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    .line 96
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-boolean v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->clearTarget:Z

    if-eqz v10, :cond_6

    .line 97
    move-object v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget v13, v13, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->usrwidth:F

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget v14, v14, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->usrheight:F

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/sun/prism/Graphics;->clearQuad(FFFF)V

    .line 101
    :cond_6
    move-object v10, v2

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget v14, v14, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->usrwidth:F

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/NGExternalNode;->rd:Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;->bdata:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget v15, v15, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->usrheight:F

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-interface/range {v10 .. v19}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    invoke-interface {v10}, Lcom/sun/prism/Texture;->unlock()V

    .line 106
    .line 107
    goto/16 :goto_0

    .line 94
    :catchall_0
    move-exception v10

    move-object v8, v10

    move-object v10, v1

    :try_start_3
    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v10, v8

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :catchall_1
    move-exception v10

    move-object v9, v10

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->dsttexture:Lcom/sun/prism/Texture;

    invoke-interface {v10}, Lcom/sun/prism/Texture;->unlock()V

    move-object v10, v9

    throw v10
.end method

.method public repaintDirtyRegion(IIII)V
    .locals 11

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    move v1, p1

    .local v1, "dirtyX":I
    move v2, p2

    .local v2, "dirtyY":I
    move v3, p3

    .local v3, "dirtyWidth":I
    move v4, p4

    .local v4, "dirtyHeight":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGExternalNode;->renderData:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/sg/prism/NGExternalNode;IIII)Ljava/util/function/UnaryOperator;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v5

    .line 242
    return-void
.end method

.method public setImageBounds(IIIIFF)V
    .locals 16

    .prologue
    .line 223
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move/from16 v5, p5

    .local v5, "usrWidth":F
    move/from16 v6, p6

    .local v6, "usrHeight":F
    move v8, v3

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferData:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget v9, v9, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->usrwidth:F

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_0

    move v8, v4

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferData:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    iget v9, v9, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->usrheight:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 225
    .local v7, "shrinked":Z
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferData:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    invoke-virtual/range {v9 .. v15}, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;->copyWithBounds(IIIIFF)Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    move-result-object v9

    iput-object v9, v8, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferData:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    .line 226
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGExternalNode;->renderData:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v7

    invoke-static/range {v9 .. v14}, Lcom/sun/javafx/sg/prism/NGExternalNode$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/sg/prism/NGExternalNode;IIIIZ)Ljava/util/function/UnaryOperator;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v8

    .line 230
    return-void

    .line 223
    .end local v7    # "shrinked":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public setImageBuffer(Ljava/nio/Buffer;IIIIFFII)V
    .locals 23

    .prologue
    .line 215
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    move-object/from16 v1, p1

    .local v1, "buffer":Ljava/nio/Buffer;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move/from16 v6, p6

    .local v6, "usrWidth":F
    move/from16 v7, p7

    .local v7, "usrHeight":F
    move/from16 v8, p8

    .local v8, "linestride":I
    move/from16 v9, p9

    .local v9, "scale":I
    move-object v10, v0

    new-instance v11, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    move-object v13, v1

    move v14, v8

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v9

    invoke-direct/range {v12 .. v21}, Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;-><init>(Ljava/nio/Buffer;IIIIIFFI)V

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferData:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    .line 216
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGExternalNode;->renderData:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v11, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferData:Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x1

    invoke-direct/range {v12 .. v18}, Lcom/sun/javafx/sg/prism/NGExternalNode$RenderData;-><init>(Lcom/sun/javafx/sg/prism/NGExternalNode$BufferData;IIIIZ)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public setLock(Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGExternalNode;
    move-object v1, p1

    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGExternalNode;->bufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 128
    return-void
.end method
