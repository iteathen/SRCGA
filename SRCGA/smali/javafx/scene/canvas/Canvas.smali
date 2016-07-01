.class public Ljavafx/scene/canvas/Canvas;
.super Ljavafx/scene/Node;
.source "Canvas.java"


# static fields
.field static final DEFAULT_OBJ_BUF_SIZE:I = 0x20

.field static final DEFAULT_VAL_BUF_SIZE:I = 0x400

.field private static final SIZE_HISTORY:I = 0x5


# instance fields
.field private current:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

.field private height:Ljavafx/beans/property/DoubleProperty;

.field private lastsizeindex:I

.field private recentobjsizes:[I

.field private recentvalsizes:[I

.field private rendererBehind:Z

.field private theContext:Ljavafx/scene/canvas/GraphicsContext;

.field private width:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-object v1, v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavafx/scene/canvas/Canvas;-><init>(DD)V

    .line 92
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-wide v1, p1

    .local v1, "width":D
    move-wide v3, p3

    .local v3, "height":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/Node;-><init>()V

    .line 101
    move-object v5, v0

    const/4 v6, 0x5

    new-array v6, v6, [I

    iput-object v6, v5, Ljavafx/scene/canvas/Canvas;->recentvalsizes:[I

    .line 102
    move-object v5, v0

    const/4 v6, 0x5

    new-array v6, v6, [I

    iput-object v6, v5, Ljavafx/scene/canvas/Canvas;->recentobjsizes:[I

    .line 103
    move-object v5, v0

    sget-object v6, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v5, v6}, Ljavafx/scene/canvas/Canvas;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 104
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/canvas/Canvas;->setWidth(D)V

    .line 105
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/canvas/Canvas;->setHeight(D)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/canvas/Canvas;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/canvas/Canvas;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/canvas/Canvas;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/canvas/Canvas;)V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/canvas/Canvas;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/canvas/Canvas;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/canvas/Canvas;)Ljavafx/scene/canvas/GraphicsContext;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/canvas/Canvas;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas;->theContext:Ljavafx/scene/canvas/GraphicsContext;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/canvas/Canvas;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/canvas/Canvas;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/canvas/Canvas;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/canvas/Canvas;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/canvas/Canvas;)V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/canvas/Canvas;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/canvas/Canvas;->impl_geomChanged()V

    return-void
.end method

.method private static max([II)I
    .locals 8

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "sizes":[I
    move v1, p1

    .local v1, "defsize":I
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 110
    .local v5, "s":I
    move v6, v1

    move v7, v5

    if-ge v6, v7, :cond_0

    move v6, v5

    move v1, v6

    .line 109
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v5    # "s":I
    :cond_1
    move v6, v1

    move v0, v6

    .end local v0    # "sizes":[I
    return v0
.end method


# virtual methods
.method getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/Canvas;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 117
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_FORCE_SYNC:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/canvas/Canvas;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 118
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/Canvas;->current:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    if-nez v3, :cond_0

    .line 119
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/Canvas;->recentvalsizes:[I

    const/16 v4, 0x400

    invoke-static {v3, v4}, Ljavafx/scene/canvas/Canvas;->max([II)I

    move-result v3

    move v1, v3

    .line 120
    .local v1, "vsize":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/Canvas;->recentobjsizes:[I

    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljavafx/scene/canvas/Canvas;->max([II)I

    move-result v3

    move v2, v3

    .line 121
    .local v2, "osize":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getBuffer(II)Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/canvas/Canvas;->current:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    .line 122
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/Canvas;->theContext:Ljavafx/scene/canvas/GraphicsContext;

    invoke-virtual {v3}, Ljavafx/scene/canvas/GraphicsContext;->updateDimensions()V

    .line 124
    .end local v1    # "vsize":I
    .end local v2    # "osize":I
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/Canvas;->current:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/canvas/Canvas;
    return-object v0
.end method

.method public getGraphicsContext2D()Ljavafx/scene/canvas/GraphicsContext;
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas;->theContext:Ljavafx/scene/canvas/GraphicsContext;

    if-nez v1, :cond_0

    .line 136
    move-object v1, v0

    new-instance v2, Ljavafx/scene/canvas/GraphicsContext;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/canvas/GraphicsContext;-><init>(Ljavafx/scene/canvas/Canvas;)V

    iput-object v2, v1, Ljavafx/scene/canvas/Canvas;->theContext:Ljavafx/scene/canvas/GraphicsContext;

    .line 138
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas;->theContext:Ljavafx/scene/canvas/GraphicsContext;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/Canvas;
    return-object v0
.end method

.method public final getHeight()D
    .locals 4

    .prologue
    .line 197
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/Canvas;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/canvas/Canvas;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/canvas/Canvas;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/canvas/Canvas;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/canvas/Canvas;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getWidth()D
    .locals 4

    .prologue
    .line 154
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/Canvas;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/canvas/Canvas;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/canvas/Canvas;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/canvas/Canvas;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/canvas/Canvas;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 202
    move-object v1, v0

    new-instance v2, Ljavafx/scene/canvas/Canvas$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/canvas/Canvas$2;-><init>(Ljavafx/scene/canvas/Canvas;)V

    iput-object v2, v1, Ljavafx/scene/canvas/Canvas;->height:Ljavafx/beans/property/DoubleProperty;

    .line 224
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas;->height:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/Canvas;
    return-object v0
.end method

.method protected impl_computeContains(DD)Z
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/Canvas;
    move-wide/from16 v2, p1

    .local v2, "localX":D
    move-wide/from16 v4, p3

    .local v4, "localY":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/canvas/Canvas;->getWidth()D

    move-result-wide v10

    move-wide v6, v10

    .line 271
    .local v6, "w":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/canvas/Canvas;->getHeight()D

    move-result-wide v10

    move-wide v8, v10

    .line 272
    .local v8, "h":D
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    move-wide v10, v2

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v4

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v2

    move-wide v12, v6

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    move-wide v10, v4

    move-wide v12, v8

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v1, v10

    .end local v1    # "this":Ljavafx/scene/canvas/Canvas;
    return v1

    .restart local v1    # "this":Ljavafx/scene/canvas/Canvas;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/canvas/Canvas;->getWidth()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/canvas/Canvas;->getHeight()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v1, v3

    .line 285
    move-object v3, v2

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v1, v3

    .line 286
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/canvas/Canvas;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGCanvas;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGCanvas;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/Canvas;
    return-object v0
.end method

.method public impl_processMXNode(Lcom/sun/javafx/jmx/MXNodeAlgorithm;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-object v1, p1

    .local v1, "alg":Lcom/sun/javafx/jmx/MXNodeAlgorithm;
    move-object v2, p2

    .local v2, "ctx":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/jmx/MXNodeAlgorithm;->processLeafNode(Ljavafx/scene/Node;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/canvas/Canvas;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/Node;->impl_updatePeer()V

    .line 244
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/canvas/Canvas;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/canvas/Canvas;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/sg/prism/NGCanvas;

    move-object v1, v2

    .line 246
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/canvas/Canvas;->getWidth()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    .line 247
    invoke-virtual {v4}, Ljavafx/scene/canvas/Canvas;->getHeight()D

    move-result-wide v4

    double-to-float v4, v4

    .line 246
    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/sg/prism/NGCanvas;->updateBounds(FF)V

    .line 249
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGCanvas;
    :cond_0
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/canvas/Canvas;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/canvas/Canvas;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/sg/prism/NGCanvas;

    move-object v1, v2

    .line 251
    .restart local v1    # "peer":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/Canvas;->current:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/Canvas;->current:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 252
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/canvas/Canvas;->lastsizeindex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Ljavafx/scene/canvas/Canvas;->lastsizeindex:I

    if-gez v2, :cond_1

    .line 253
    move-object v2, v0

    const/4 v3, 0x4

    iput v3, v2, Ljavafx/scene/canvas/Canvas;->lastsizeindex:I

    .line 255
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/Canvas;->recentvalsizes:[I

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/canvas/Canvas;->lastsizeindex:I

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/Canvas;->current:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeValuePosition()I

    move-result v4

    aput v4, v2, v3

    .line 256
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/Canvas;->recentobjsizes:[I

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/canvas/Canvas;->lastsizeindex:I

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/Canvas;->current:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeObjectPosition()I

    move-result v4

    aput v4, v2, v3

    .line 257
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/Canvas;->current:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGCanvas;->updateRendering(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)Z

    move-result v3

    iput-boolean v3, v2, Ljavafx/scene/canvas/Canvas;->rendererBehind:Z

    .line 258
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/canvas/Canvas;->current:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    .line 261
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGCanvas;
    :cond_2
    return-void
.end method

.method isRendererFallingBehind()Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/canvas/Canvas;->rendererBehind:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/Canvas;
    return v0
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/canvas/Canvas;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 194
    return-void
.end method

.method public final setWidth(D)V
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/canvas/Canvas;->widthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 151
    return-void
.end method

.method public final widthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/Canvas;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 159
    move-object v1, v0

    new-instance v2, Ljavafx/scene/canvas/Canvas$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/canvas/Canvas$1;-><init>(Ljavafx/scene/canvas/Canvas;)V

    iput-object v2, v1, Ljavafx/scene/canvas/Canvas;->width:Ljavafx/beans/property/DoubleProperty;

    .line 181
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/Canvas;->width:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/Canvas;
    return-object v0
.end method
