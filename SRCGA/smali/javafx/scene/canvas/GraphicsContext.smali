.class public final Ljavafx/scene/canvas/GraphicsContext;
.super Ljava/lang/Object;
.source "GraphicsContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/canvas/GraphicsContext$State;
    }
.end annotation


# static fields
.field private static final numsegs:[I

.field private static final pgtype:[B


# instance fields
.field clipStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sun/javafx/geom/Path2D;",
            ">;"
        }
    .end annotation
.end field

.field private coords:[F

.field curState:Ljavafx/scene/canvas/GraphicsContext$State;

.field path:Lcom/sun/javafx/geom/Path2D;

.field pathDirty:Z

.field private polybuf:[F

.field stateStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljavafx/scene/canvas/GraphicsContext$State;",
            ">;"
        }
    .end annotation
.end field

.field theCanvas:Ljavafx/scene/canvas/Canvas;

.field private txdirty:Z

.field private writer:Ljavafx/scene/image/PixelWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljavafx/scene/canvas/GraphicsContext;->pgtype:[B

    .line 631
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljavafx/scene/canvas/GraphicsContext;->numsegs:[I

    return-void

    .line 624
    nop

    :array_0
    .array-data 1
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
    .end array-data

    .line 631
    nop

    :array_1
    .array-data 4
        0x2
        0x2
        0x4
        0x6
        0x0
    .end array-data
.end method

.method constructor <init>(Ljavafx/scene/canvas/Canvas;)V
    .locals 6

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "theCanvas":Ljavafx/scene/canvas/Canvas;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 623
    move-object v2, v0

    const/4 v3, 0x6

    new-array v3, v3, [F

    iput-object v3, v2, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    .line 704
    move-object v2, v0

    const/16 v3, 0x200

    new-array v3, v3, [F

    iput-object v3, v2, Ljavafx/scene/canvas/GraphicsContext;->polybuf:[F

    .line 500
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/canvas/GraphicsContext;->theCanvas:Ljavafx/scene/canvas/Canvas;

    .line 501
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Path2D;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    iput-object v3, v2, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    .line 502
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/canvas/GraphicsContext;->pathDirty:Z

    .line 504
    move-object v2, v0

    new-instance v3, Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/scene/canvas/GraphicsContext$State;-><init>()V

    iput-object v3, v2, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    .line 505
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Ljavafx/scene/canvas/GraphicsContext;->stateStack:Ljava/util/LinkedList;

    .line 506
    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Ljavafx/scene/canvas/GraphicsContext;->clipStack:Ljava/util/LinkedList;

    .line 507
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/canvas/GraphicsContext;)Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    .locals 2

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method private flushPolyBuf(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;[FIB)V
    .locals 13

    .prologue
    .line 708
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v2, p2

    .local v2, "polybuf":[F
    move/from16 v3, p3

    .local v3, "n":I
    move/from16 v4, p4

    .local v4, "command":B
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v2

    const/4 v10, 0x0

    move v11, v3

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    invoke-virtual/range {v6 .. v11}, Lcom/sun/javafx/geom/transform/Affine2D;->transform([FI[FII)V

    .line 709
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 710
    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 711
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 712
    move-object v6, v1

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 713
    const/16 v6, 0x2a

    move v4, v6

    .line 709
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 715
    :cond_0
    return-void
.end method

.method private getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    .locals 2

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->theCanvas:Ljavafx/scene/canvas/Canvas;

    invoke-virtual {v1}, Ljavafx/scene/canvas/Canvas;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method private static lenSq(DDDD)D
    .locals 14

    .prologue
    .line 1944
    move-wide v0, p0

    .local v0, "x0":D
    move-wide/from16 v2, p2

    .local v2, "y0":D
    move-wide/from16 v4, p4

    .local v4, "x1":D
    move-wide/from16 v6, p6

    .local v6, "y1":D
    move-wide v8, v4

    move-wide v10, v0

    sub-double/2addr v8, v10

    move-wide v4, v8

    .line 1945
    move-wide v8, v6

    move-wide v10, v2

    sub-double/2addr v8, v10

    move-wide v6, v8

    .line 1946
    move-wide v8, v4

    move-wide v10, v4

    mul-double/2addr v8, v10

    move-wide v10, v6

    move-wide v12, v6

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v0, v8

    .end local v0    # "x0":D
    return-wide v0
.end method

.method private markPathDirty()V
    .locals 3

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/canvas/GraphicsContext;->pathDirty:Z

    .line 635
    return-void
.end method

.method private reset()V
    .locals 10

    .prologue
    .line 824
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v6

    move-object v1, v6

    .line 831
    .local v1, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeValuePosition()I

    move-result v6

    const/16 v7, 0x400

    if-gt v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->theCanvas:Ljavafx/scene/canvas/Canvas;

    .line 832
    invoke-virtual {v6}, Ljavafx/scene/canvas/Canvas;->isRendererFallingBehind()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 834
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->reset()V

    .line 835
    move-object v6, v1

    const/16 v7, 0x46

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 836
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/canvas/GraphicsContext;->updateDimensions()V

    .line 837
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljavafx/scene/canvas/GraphicsContext;->txdirty:Z

    .line 838
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljavafx/scene/canvas/GraphicsContext;->pathDirty:Z

    .line 839
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v2, v6

    .line 840
    .local v2, "s":Ljavafx/scene/canvas/GraphicsContext$State;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget v6, v6, Ljavafx/scene/canvas/GraphicsContext$State;->numClipPaths:I

    move v3, v6

    .line 841
    .local v3, "numClipPaths":I
    move-object v6, v0

    new-instance v7, Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljavafx/scene/canvas/GraphicsContext$State;-><init>()V

    iput-object v7, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    .line 842
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 843
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->clipStack:Ljava/util/LinkedList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/geom/Path2D;

    move-object v5, v6

    .line 844
    .local v5, "clip":Lcom/sun/javafx/geom/Path2D;
    move-object v6, v1

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 845
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 842
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 847
    .end local v5    # "clip":Lcom/sun/javafx/geom/Path2D;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move v7, v3

    iput v7, v6, Ljavafx/scene/canvas/GraphicsContext$State;->numClipPaths:I

    .line 848
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljavafx/scene/canvas/GraphicsContext$State;->restore(Ljavafx/scene/canvas/GraphicsContext;)V

    .line 850
    .end local v2    # "s":Ljavafx/scene/canvas/GraphicsContext$State;
    .end local v3    # "numClipPaths":I
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method private resetIfCovers(Ljavafx/scene/paint/Paint;DDDD)V
    .locals 16

    .prologue
    .line 853
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v2, p1

    .local v2, "p":Ljavafx/scene/paint/Paint;
    move-wide/from16 v3, p2

    .local v3, "x":D
    move-wide/from16 v5, p4

    .local v5, "y":D
    move-wide/from16 v7, p6

    .local v7, "w":D
    move-wide/from16 v9, p8

    .local v9, "h":D
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v11, v12

    .line 854
    .local v11, "tx":Lcom/sun/javafx/geom/transform/Affine2D;
    move-object v12, v11

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/Affine2D;->isTranslateOrIdentity()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 855
    move-wide v12, v3

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxt()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v3, v12

    .line 856
    move-wide v12, v5

    move-object v14, v11

    invoke-virtual {v14}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyt()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v5, v12

    .line 857
    move-wide v12, v3

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_0

    move-wide v12, v5

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_0

    move-wide v12, v3

    move-wide v14, v7

    add-double/2addr v12, v14

    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/canvas/GraphicsContext;->theCanvas:Ljavafx/scene/canvas/Canvas;

    .line 858
    invoke-virtual {v14}, Ljavafx/scene/canvas/Canvas;->getWidth()D

    move-result-wide v14

    cmpg-double v12, v12, v14

    if-ltz v12, :cond_0

    move-wide v12, v5

    move-wide v14, v9

    add-double/2addr v12, v14

    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/canvas/GraphicsContext;->theCanvas:Ljavafx/scene/canvas/Canvas;

    .line 859
    invoke-virtual {v14}, Ljavafx/scene/canvas/Canvas;->getHeight()D

    move-result-wide v14

    cmpg-double v12, v12, v14

    if-gez v12, :cond_2

    .line 861
    .line 874
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    goto :goto_0

    .line 867
    :cond_2
    move-object v12, v2

    if-eqz v12, :cond_5

    .line 868
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext$State;->blendop:Ljavafx/scene/effect/BlendMode;

    sget-object v13, Ljavafx/scene/effect/BlendMode;->SRC_OVER:Ljavafx/scene/effect/BlendMode;

    if-eq v12, v13, :cond_3

    goto :goto_0

    .line 869
    :cond_3
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/paint/Paint;->isOpaque()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-wide v12, v12, Ljavafx/scene/canvas/GraphicsContext$State;->globalAlpha:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_5

    :cond_4
    goto :goto_0

    .line 871
    :cond_5
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget v12, v12, Ljavafx/scene/canvas/GraphicsContext$State;->numClipPaths:I

    if-lez v12, :cond_6

    goto :goto_0

    .line 872
    :cond_6
    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext$State;->effect:Ljavafx/scene/effect/Effect;

    if-eqz v12, :cond_7

    goto :goto_0

    .line 873
    :cond_7
    move-object v12, v1

    invoke-direct {v12}, Ljavafx/scene/canvas/GraphicsContext;->reset()V

    .line 874
    goto :goto_0
.end method

.method private tryArcTo(FFFFF)Z
    .locals 89

    .prologue
    .line 1951
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/canvas/GraphicsContext;
    move/from16 v4, p1

    .local v4, "x1":F
    move/from16 v5, p2

    .local v5, "y1":F
    move/from16 v6, p3

    .local v6, "x2":F
    move/from16 v7, p4

    .local v7, "y2":F
    move/from16 v8, p5

    .local v8, "radius":F
    move-object/from16 v76, v3

    move-object/from16 v0, v76

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v76, v0

    invoke-virtual/range {v76 .. v76}, Lcom/sun/javafx/geom/transform/Affine2D;->isTranslateOrIdentity()Z

    move-result v76

    if-eqz v76, :cond_1

    .line 1952
    move-object/from16 v76, v3

    move-object/from16 v0, v76

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v76, v0

    invoke-virtual/range {v76 .. v76}, Lcom/sun/javafx/geom/Path2D;->getCurrentX()F

    move-result v76

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    move-object/from16 v78, v3

    move-object/from16 v0, v78

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxt()D

    move-result-wide v78

    sub-double v76, v76, v78

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v76, v0

    move/from16 v9, v76

    .line 1953
    .local v9, "x0":F
    move-object/from16 v76, v3

    move-object/from16 v0, v76

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v76, v0

    invoke-virtual/range {v76 .. v76}, Lcom/sun/javafx/geom/Path2D;->getCurrentY()F

    move-result v76

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    move-object/from16 v78, v3

    move-object/from16 v0, v78

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyt()D

    move-result-wide v78

    sub-double v76, v76, v78

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v76, v0

    move/from16 v10, v76

    .line 1981
    .local v10, "y0":F
    :goto_0
    move/from16 v76, v9

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    move/from16 v78, v10

    move/from16 v0, v78

    float-to-double v0, v0

    move-wide/from16 v78, v0

    move/from16 v80, v4

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    move/from16 v82, v5

    move/from16 v0, v82

    float-to-double v0, v0

    move-wide/from16 v82, v0

    invoke-static/range {v76 .. v83}, Ljavafx/scene/canvas/GraphicsContext;->lenSq(DDDD)D

    move-result-wide v76

    move-wide/from16 v11, v76

    .line 1982
    .local v11, "lsq01":D
    move/from16 v76, v4

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    move/from16 v78, v5

    move/from16 v0, v78

    float-to-double v0, v0

    move-wide/from16 v78, v0

    move/from16 v80, v6

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    move/from16 v82, v7

    move/from16 v0, v82

    float-to-double v0, v0

    move-wide/from16 v82, v0

    invoke-static/range {v76 .. v83}, Ljavafx/scene/canvas/GraphicsContext;->lenSq(DDDD)D

    move-result-wide v76

    move-wide/from16 v13, v76

    .line 1983
    .local v13, "lsq12":D
    move/from16 v76, v9

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    move/from16 v78, v10

    move/from16 v0, v78

    float-to-double v0, v0

    move-wide/from16 v78, v0

    move/from16 v80, v6

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    move/from16 v82, v7

    move/from16 v0, v82

    float-to-double v0, v0

    move-wide/from16 v82, v0

    invoke-static/range {v76 .. v83}, Ljavafx/scene/canvas/GraphicsContext;->lenSq(DDDD)D

    move-result-wide v76

    move-wide/from16 v15, v76

    .line 1984
    .local v15, "lsq02":D
    move-wide/from16 v76, v11

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v76

    move-wide/from16 v17, v76

    .line 1985
    .local v17, "len01":D
    move-wide/from16 v76, v13

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v76

    move-wide/from16 v19, v76

    .line 1986
    .local v19, "len12":D
    move-wide/from16 v76, v11

    move-wide/from16 v78, v13

    add-double v76, v76, v78

    move-wide/from16 v78, v15

    sub-double v76, v76, v78

    move-wide/from16 v21, v76

    .line 1987
    .local v21, "cosnum":D
    const-wide/high16 v76, 0x4000000000000000L    # 2.0

    move-wide/from16 v78, v17

    mul-double v76, v76, v78

    move-wide/from16 v78, v19

    mul-double v76, v76, v78

    move-wide/from16 v23, v76

    .line 1988
    .local v23, "cosden":D
    move-wide/from16 v76, v23

    const-wide/16 v78, 0x0

    cmpl-double v76, v76, v78

    if-eqz v76, :cond_0

    move/from16 v76, v8

    const/16 v77, 0x0

    cmpg-float v76, v76, v77

    if-gtz v76, :cond_2

    .line 1989
    :cond_0
    const/16 v76, 0x0

    move/from16 v3, v76

    .line 2081
    .end local v3    # "this":Ljavafx/scene/canvas/GraphicsContext;
    .end local v9    # "x0":F
    .end local v10    # "y0":F
    .end local v11    # "lsq01":D
    .end local v13    # "lsq12":D
    .end local v15    # "lsq02":D
    .end local v17    # "len01":D
    .end local v19    # "len12":D
    .end local v21    # "cosnum":D
    .end local v23    # "cosden":D
    :goto_1
    return v3

    .line 1955
    .restart local v3    # "this":Ljavafx/scene/canvas/GraphicsContext;
    :cond_1
    move-object/from16 v76, v3

    move-object/from16 v0, v76

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v76, v0

    const/16 v77, 0x0

    move-object/from16 v78, v3

    move-object/from16 v0, v78

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Lcom/sun/javafx/geom/Path2D;->getCurrentX()F

    move-result v78

    aput v78, v76, v77

    .line 1956
    move-object/from16 v76, v3

    move-object/from16 v0, v76

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v76, v0

    const/16 v77, 0x1

    move-object/from16 v78, v3

    move-object/from16 v0, v78

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Lcom/sun/javafx/geom/Path2D;->getCurrentY()F

    move-result v78

    aput v78, v76, v77

    .line 1958
    move-object/from16 v76, v3

    :try_start_0
    move-object/from16 v0, v76

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v76, v0

    move-object/from16 v77, v3

    move-object/from16 v0, v77

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v77, v0

    const/16 v78, 0x0

    move-object/from16 v79, v3

    move-object/from16 v0, v79

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v79, v0

    const/16 v80, 0x0

    const/16 v81, 0x1

    invoke-virtual/range {v76 .. v81}, Lcom/sun/javafx/geom/transform/Affine2D;->inverseTransform([FI[FII)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1961
    .line 1962
    move-object/from16 v76, v3

    move-object/from16 v0, v76

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v76, v0

    const/16 v77, 0x0

    aget v76, v76, v77

    move/from16 v9, v76

    .line 1963
    .restart local v9    # "x0":F
    move-object/from16 v76, v3

    move-object/from16 v0, v76

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v76, v0

    const/16 v77, 0x1

    aget v76, v76, v77

    move/from16 v10, v76

    .restart local v10    # "y0":F
    goto/16 :goto_0

    .line 1959
    .end local v9    # "x0":F
    .end local v10    # "y0":F
    :catch_0
    move-exception v76

    move-object/from16 v11, v76

    .line 1960
    .local v11, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/16 v76, 0x0

    move/from16 v3, v76

    goto :goto_1

    .line 1991
    .restart local v9    # "x0":F
    .restart local v10    # "y0":F
    .local v11, "lsq01":D
    .restart local v13    # "lsq12":D
    .restart local v15    # "lsq02":D
    .restart local v17    # "len01":D
    .restart local v19    # "len12":D
    .restart local v21    # "cosnum":D
    .restart local v23    # "cosden":D
    :cond_2
    move-wide/from16 v76, v21

    move-wide/from16 v78, v23

    div-double v76, v76, v78

    move-wide/from16 v25, v76

    .line 1992
    .local v25, "cos_2theta":D
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v78, v25

    add-double v76, v76, v78

    move-wide/from16 v27, v76

    .line 1993
    .local v27, "tansq_den":D
    move-wide/from16 v76, v27

    const-wide/16 v78, 0x0

    cmpl-double v76, v76, v78

    if-nez v76, :cond_3

    .line 1994
    const/16 v76, 0x0

    move/from16 v3, v76

    goto/16 :goto_1

    .line 1996
    :cond_3
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v78, v25

    sub-double v76, v76, v78

    move-wide/from16 v78, v27

    div-double v76, v76, v78

    move-wide/from16 v29, v76

    .line 1997
    .local v29, "tansq_theta":D
    move/from16 v76, v8

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v78, v29

    invoke-static/range {v78 .. v79}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v78

    div-double v76, v76, v78

    move-wide/from16 v31, v76

    .line 1998
    .local v31, "A":D
    move/from16 v76, v4

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v78, v31

    move-wide/from16 v80, v17

    div-double v78, v78, v80

    move/from16 v80, v9

    move/from16 v81, v4

    sub-float v80, v80, v81

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v33, v76

    .line 1999
    .local v33, "tx0":D
    move/from16 v76, v5

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v78, v31

    move-wide/from16 v80, v17

    div-double v78, v78, v80

    move/from16 v80, v10

    move/from16 v81, v5

    sub-float v80, v80, v81

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v35, v76

    .line 2000
    .local v35, "ty0":D
    move/from16 v76, v4

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v78, v31

    move-wide/from16 v80, v19

    div-double v78, v78, v80

    move/from16 v80, v6

    move/from16 v81, v4

    sub-float v80, v80, v81

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v37, v76

    .line 2001
    .local v37, "tx1":D
    move/from16 v76, v5

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v78, v31

    move-wide/from16 v80, v19

    div-double v78, v78, v80

    move/from16 v80, v7

    move/from16 v81, v5

    sub-float v80, v80, v81

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v39, v76

    .line 2003
    .local v39, "ty1":D
    move-wide/from16 v76, v33

    move-wide/from16 v78, v37

    add-double v76, v76, v78

    const-wide/high16 v78, 0x4000000000000000L    # 2.0

    div-double v76, v76, v78

    move-wide/from16 v41, v76

    .line 2004
    .local v41, "mx":D
    move-wide/from16 v76, v35

    move-wide/from16 v78, v39

    add-double v76, v76, v78

    const-wide/high16 v78, 0x4000000000000000L    # 2.0

    div-double v76, v76, v78

    move-wide/from16 v43, v76

    .line 2010
    .local v43, "my":D
    move-wide/from16 v76, v41

    move-wide/from16 v78, v43

    move/from16 v80, v4

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    move/from16 v82, v5

    move/from16 v0, v82

    float-to-double v0, v0

    move-wide/from16 v82, v0

    invoke-static/range {v76 .. v83}, Ljavafx/scene/canvas/GraphicsContext;->lenSq(DDDD)D

    move-result-wide v76

    move-wide/from16 v45, v76

    .line 2011
    .local v45, "lenratioden":D
    move-wide/from16 v76, v45

    const-wide/16 v78, 0x0

    cmpl-double v76, v76, v78

    if-nez v76, :cond_4

    .line 2012
    const/16 v76, 0x0

    move/from16 v3, v76

    goto/16 :goto_1

    .line 2014
    :cond_4
    move-wide/from16 v76, v41

    move-wide/from16 v78, v43

    move-wide/from16 v80, v33

    move-wide/from16 v82, v35

    invoke-static/range {v76 .. v83}, Ljavafx/scene/canvas/GraphicsContext;->lenSq(DDDD)D

    move-result-wide v76

    move-wide/from16 v78, v45

    div-double v76, v76, v78

    move-wide/from16 v47, v76

    .line 2015
    .local v47, "lenratio":D
    move-wide/from16 v76, v41

    move-wide/from16 v78, v41

    move/from16 v80, v4

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    sub-double v78, v78, v80

    move-wide/from16 v80, v47

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v49, v76

    .line 2016
    .local v49, "cx":D
    move-wide/from16 v76, v43

    move-wide/from16 v78, v43

    move/from16 v80, v5

    move/from16 v0, v80

    float-to-double v0, v0

    move-wide/from16 v80, v0

    sub-double v78, v78, v80

    move-wide/from16 v80, v47

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v51, v76

    .line 2017
    .local v51, "cy":D
    move-wide/from16 v76, v49

    move-wide/from16 v78, v49

    cmpl-double v76, v76, v78

    if-nez v76, :cond_5

    move-wide/from16 v76, v51

    move-wide/from16 v78, v51

    cmpl-double v76, v76, v78

    if-eqz v76, :cond_6

    .line 2018
    :cond_5
    const/16 v76, 0x0

    move/from16 v3, v76

    goto/16 :goto_1

    .line 2022
    :cond_6
    move-wide/from16 v76, v33

    move/from16 v78, v9

    move/from16 v0, v78

    float-to-double v0, v0

    move-wide/from16 v78, v0

    cmpl-double v76, v76, v78

    if-nez v76, :cond_7

    move-wide/from16 v76, v35

    move/from16 v78, v10

    move/from16 v0, v78

    float-to-double v0, v0

    move-wide/from16 v78, v0

    cmpl-double v76, v76, v78

    if-eqz v76, :cond_8

    .line 2023
    :cond_7
    move-object/from16 v76, v3

    move-wide/from16 v77, v33

    move-wide/from16 v79, v35

    invoke-virtual/range {v76 .. v80}, Ljavafx/scene/canvas/GraphicsContext;->lineTo(DD)V

    .line 2038
    :cond_8
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v78, v25

    sub-double v76, v76, v78

    const-wide/high16 v78, 0x4000000000000000L    # 2.0

    div-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v76

    move-wide/from16 v53, v76

    .line 2039
    .local v53, "coshalfarc":D
    move-wide/from16 v76, v35

    move-wide/from16 v78, v51

    sub-double v76, v76, v78

    move-wide/from16 v78, v37

    move-wide/from16 v80, v49

    sub-double v78, v78, v80

    mul-double v76, v76, v78

    move-wide/from16 v78, v39

    move-wide/from16 v80, v51

    sub-double v78, v78, v80

    move-wide/from16 v80, v33

    move-wide/from16 v82, v49

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    cmpl-double v76, v76, v78

    if-lez v76, :cond_a

    const/16 v76, 0x1

    :goto_2
    move/from16 v55, v76

    .line 2047
    .local v55, "ccw":Z
    move-wide/from16 v76, v25

    const-wide/16 v78, 0x0

    cmpg-double v76, v76, v78

    if-gtz v76, :cond_b

    .line 2049
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v78, v25

    add-double v76, v76, v78

    const-wide/high16 v78, 0x4000000000000000L    # 2.0

    div-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v76

    move-wide/from16 v56, v76

    .line 2050
    .local v56, "sinhalfarc":D
    const-wide v76, 0x3ff5555555555555L    # 1.3333333333333333

    move-wide/from16 v78, v56

    mul-double v76, v76, v78

    const-wide/high16 v78, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v80, v53

    add-double v78, v78, v80

    div-double v76, v76, v78

    move-wide/from16 v58, v76

    .line 2051
    .local v58, "cv":D
    move/from16 v76, v55

    if-eqz v76, :cond_9

    move-wide/from16 v76, v58

    move-wide/from16 v0, v76

    neg-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v58, v76

    .line 2052
    :cond_9
    move-wide/from16 v76, v33

    move-wide/from16 v78, v58

    move-wide/from16 v80, v35

    move-wide/from16 v82, v51

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    move-wide/from16 v60, v76

    .line 2053
    .local v60, "cpx0":D
    move-wide/from16 v76, v35

    move-wide/from16 v78, v58

    move-wide/from16 v80, v33

    move-wide/from16 v82, v49

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v62, v76

    .line 2054
    .local v62, "cpy0":D
    move-wide/from16 v76, v37

    move-wide/from16 v78, v58

    move-wide/from16 v80, v39

    move-wide/from16 v82, v51

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v64, v76

    .line 2055
    .local v64, "cpx1":D
    move-wide/from16 v76, v39

    move-wide/from16 v78, v58

    move-wide/from16 v80, v37

    move-wide/from16 v82, v49

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    move-wide/from16 v66, v76

    .line 2056
    .local v66, "cpy1":D
    move-object/from16 v76, v3

    move-wide/from16 v77, v60

    move-wide/from16 v79, v62

    move-wide/from16 v81, v64

    move-wide/from16 v83, v66

    move-wide/from16 v85, v37

    move-wide/from16 v87, v39

    invoke-virtual/range {v76 .. v88}, Ljavafx/scene/canvas/GraphicsContext;->bezierCurveTo(DDDDDD)V

    .line 2057
    .line 2081
    .end local v56    # "sinhalfarc":D
    .end local v58    # "cv":D
    .end local v60    # "cpx0":D
    .end local v62    # "cpy0":D
    .end local v64    # "cpx1":D
    .end local v66    # "cpy1":D
    :goto_3
    const/16 v76, 0x1

    move/from16 v3, v76

    goto/16 :goto_1

    .line 2039
    .end local v55    # "ccw":Z
    :cond_a
    const/16 v76, 0x0

    goto/16 :goto_2

    .line 2063
    .restart local v55    # "ccw":Z
    :cond_b
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v78, v53

    sub-double v76, v76, v78

    const-wide/high16 v78, 0x4000000000000000L    # 2.0

    div-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v76

    move-wide/from16 v56, v76

    .line 2064
    .local v56, "sinqtrarc":D
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v78, v53

    add-double v76, v76, v78

    const-wide/high16 v78, 0x4000000000000000L    # 2.0

    div-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v76

    move-wide/from16 v58, v76

    .line 2065
    .local v58, "cosqtrarc":D
    const-wide v76, 0x3ff5555555555555L    # 1.3333333333333333

    move-wide/from16 v78, v56

    mul-double v76, v76, v78

    const-wide/high16 v78, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v80, v58

    add-double v78, v78, v80

    div-double v76, v76, v78

    move-wide/from16 v60, v76

    .line 2066
    .local v60, "cv":D
    move/from16 v76, v55

    if-eqz v76, :cond_c

    move-wide/from16 v76, v60

    move-wide/from16 v0, v76

    neg-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v60, v76

    .line 2067
    :cond_c
    move/from16 v76, v8

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v76, v0

    move-wide/from16 v78, v45

    invoke-static/range {v78 .. v79}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v78

    div-double v76, v76, v78

    move-wide/from16 v62, v76

    .line 2068
    .local v62, "midratio":D
    move-wide/from16 v76, v49

    move/from16 v78, v4

    move/from16 v0, v78

    float-to-double v0, v0

    move-wide/from16 v78, v0

    move-wide/from16 v80, v41

    sub-double v78, v78, v80

    move-wide/from16 v80, v62

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v64, v76

    .line 2069
    .local v64, "midarcx":D
    move-wide/from16 v76, v51

    move/from16 v78, v5

    move/from16 v0, v78

    float-to-double v0, v0

    move-wide/from16 v78, v0

    move-wide/from16 v80, v43

    sub-double v78, v78, v80

    move-wide/from16 v80, v62

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v66, v76

    .line 2070
    .local v66, "midarcy":D
    move-wide/from16 v76, v33

    move-wide/from16 v78, v60

    move-wide/from16 v80, v35

    move-wide/from16 v82, v51

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    move-wide/from16 v68, v76

    .line 2071
    .local v68, "cpx0":D
    move-wide/from16 v76, v35

    move-wide/from16 v78, v60

    move-wide/from16 v80, v33

    move-wide/from16 v82, v49

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v70, v76

    .line 2072
    .local v70, "cpy0":D
    move-wide/from16 v76, v64

    move-wide/from16 v78, v60

    move-wide/from16 v80, v66

    move-wide/from16 v82, v51

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v72, v76

    .line 2073
    .local v72, "cpx1":D
    move-wide/from16 v76, v66

    move-wide/from16 v78, v60

    move-wide/from16 v80, v64

    move-wide/from16 v82, v49

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    move-wide/from16 v74, v76

    .line 2074
    .local v74, "cpy1":D
    move-object/from16 v76, v3

    move-wide/from16 v77, v68

    move-wide/from16 v79, v70

    move-wide/from16 v81, v72

    move-wide/from16 v83, v74

    move-wide/from16 v85, v64

    move-wide/from16 v87, v66

    invoke-virtual/range {v76 .. v88}, Ljavafx/scene/canvas/GraphicsContext;->bezierCurveTo(DDDDDD)V

    .line 2075
    move-wide/from16 v76, v64

    move-wide/from16 v78, v60

    move-wide/from16 v80, v66

    move-wide/from16 v82, v51

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    move-wide/from16 v68, v76

    .line 2076
    move-wide/from16 v76, v66

    move-wide/from16 v78, v60

    move-wide/from16 v80, v64

    move-wide/from16 v82, v49

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v70, v76

    .line 2077
    move-wide/from16 v76, v37

    move-wide/from16 v78, v60

    move-wide/from16 v80, v39

    move-wide/from16 v82, v51

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    add-double v76, v76, v78

    move-wide/from16 v72, v76

    .line 2078
    move-wide/from16 v76, v39

    move-wide/from16 v78, v60

    move-wide/from16 v80, v37

    move-wide/from16 v82, v49

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    sub-double v76, v76, v78

    move-wide/from16 v74, v76

    .line 2079
    move-object/from16 v76, v3

    move-wide/from16 v77, v68

    move-wide/from16 v79, v70

    move-wide/from16 v81, v72

    move-wide/from16 v83, v74

    move-wide/from16 v85, v37

    move-wide/from16 v87, v39

    invoke-virtual/range {v76 .. v88}, Ljavafx/scene/canvas/GraphicsContext;->bezierCurveTo(DDDDDD)V

    goto/16 :goto_3
.end method

.method private updateTransform()V
    .locals 6

    .prologue
    .line 803
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/canvas/GraphicsContext;->txdirty:Z

    if-eqz v3, :cond_0

    .line 804
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/canvas/GraphicsContext;->txdirty:Z

    .line 805
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v3

    move-object v2, v3

    .line 806
    .local v2, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v3, v2

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 807
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putDouble(D)V

    .line 808
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putDouble(D)V

    .line 809
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxt()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putDouble(D)V

    .line 810
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putDouble(D)V

    .line 811
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putDouble(D)V

    .line 812
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyt()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putDouble(D)V

    .line 814
    .end local v2    # "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    :cond_0
    return-void
.end method

.method private writeArcType(Ljavafx/scene/shape/ArcType;)V
    .locals 6

    .prologue
    .line 665
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "closure":Ljavafx/scene/shape/ArcType;
    sget-object v3, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$ArcType:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/ArcType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 669
    .line 672
    :goto_0
    return-void

    .line 666
    :pswitch_0
    const/4 v3, 0x0

    move v2, v3

    .line 671
    .local v2, "type":B
    :goto_1
    move-object v3, v0

    move v4, v2

    const/16 v5, 0xf

    invoke-direct {v3, v4, v5}, Ljavafx/scene/canvas/GraphicsContext;->writeParam(BB)V

    .line 672
    goto :goto_0

    .line 667
    .end local v2    # "type":B
    :pswitch_1
    const/4 v3, 0x1

    move v2, v3

    .restart local v2    # "type":B
    goto :goto_1

    .line 668
    .end local v2    # "type":B
    :pswitch_2
    const/4 v3, 0x2

    move v2, v3

    .restart local v2    # "type":B
    goto :goto_1

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private writeImage(Ljavafx/scene/image/Image;DDDD)V
    .locals 24

    .prologue
    .line 749
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v1, p1

    .local v1, "img":Ljavafx/scene/image/Image;
    move-wide/from16 v2, p2

    .local v2, "dx":D
    move-wide/from16 v4, p4

    .local v4, "dy":D
    move-wide/from16 v6, p6

    .local v6, "dw":D
    move-wide/from16 v8, p8

    .local v8, "dh":D
    move-object v12, v1

    if-eqz v12, :cond_0

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v12

    move-object v10, v12

    .line 751
    .local v10, "platformImg":Ljava/lang/Object;
    move-object v12, v10

    if-nez v12, :cond_2

    goto :goto_0

    .line 752
    :cond_2
    move-object v12, v0

    invoke-direct {v12}, Ljavafx/scene/canvas/GraphicsContext;->updateTransform()V

    .line 753
    move-object v12, v0

    invoke-direct {v12}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v12

    move-object v11, v12

    .line 754
    .local v11, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v12, v0

    move-object v13, v11

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    const/16 v22, 0x32

    invoke-direct/range {v12 .. v22}, Ljavafx/scene/canvas/GraphicsContext;->writeRectParams(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;DDDDB)V

    .line 755
    move-object v12, v11

    move-object v13, v10

    invoke-virtual {v12, v13}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 756
    goto :goto_0
.end method

.method private writeImage(Ljavafx/scene/image/Image;DDDDDDDD)V
    .locals 34

    .prologue
    .line 762
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v3, p1

    .local v3, "img":Ljavafx/scene/image/Image;
    move-wide/from16 v4, p2

    .local v4, "dx":D
    move-wide/from16 v6, p4

    .local v6, "dy":D
    move-wide/from16 v8, p6

    .local v8, "dw":D
    move-wide/from16 v10, p8

    .local v10, "dh":D
    move-wide/from16 v12, p10

    .local v12, "sx":D
    move-wide/from16 v14, p12

    .local v14, "sy":D
    move-wide/from16 v16, p14

    .local v16, "sw":D
    move-wide/from16 v18, p16

    .local v18, "sh":D
    move-object/from16 v22, v3

    if-eqz v22, :cond_0

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/image/Image;->getProgress()D

    move-result-wide v22

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v20, v22

    .line 764
    .local v20, "platformImg":Ljava/lang/Object;
    move-object/from16 v22, v20

    if-nez v22, :cond_2

    goto :goto_0

    .line 765
    :cond_2
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Ljavafx/scene/canvas/GraphicsContext;->updateTransform()V

    .line 766
    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v22}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v22

    move-object/from16 v21, v22

    .line 767
    .local v21, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object/from16 v22, v2

    move-object/from16 v23, v21

    move-wide/from16 v24, v4

    move-wide/from16 v26, v6

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    const/16 v32, 0x33

    invoke-direct/range {v22 .. v32}, Ljavafx/scene/canvas/GraphicsContext;->writeRectParams(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;DDDDB)V

    .line 768
    move-object/from16 v22, v21

    move-wide/from16 v23, v12

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 769
    move-object/from16 v22, v21

    move-wide/from16 v23, v14

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 770
    move-object/from16 v22, v21

    move-wide/from16 v23, v16

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 771
    move-object/from16 v22, v21

    move-wide/from16 v23, v18

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 772
    move-object/from16 v22, v21

    move-object/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 773
    goto :goto_0
.end method

.method private writeOp4(DDDDB)V
    .locals 21

    .prologue
    .line 686
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move/from16 v9, p9

    .local v9, "command":B
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/canvas/GraphicsContext;->updateTransform()V

    .line 687
    move-object v10, v0

    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v11

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move/from16 v20, v9

    invoke-direct/range {v10 .. v20}, Ljavafx/scene/canvas/GraphicsContext;->writeRectParams(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;DDDDB)V

    .line 688
    return-void
.end method

.method private writeOp6(DDDDDDB)V
    .locals 21

    .prologue
    .line 693
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v3, p1

    .local v3, "x":D
    move-wide/from16 v5, p3

    .local v5, "y":D
    move-wide/from16 v7, p5

    .local v7, "w":D
    move-wide/from16 v9, p7

    .local v9, "h":D
    move-wide/from16 v11, p9

    .local v11, "v1":D
    move-wide/from16 v13, p11

    .local v13, "v2":D
    move/from16 v15, p13

    .local v15, "command":B
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Ljavafx/scene/canvas/GraphicsContext;->updateTransform()V

    .line 694
    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v17}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v17

    move-object/from16 v16, v17

    .line 695
    .local v16, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object/from16 v17, v16

    move/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 696
    move-object/from16 v17, v16

    move-wide/from16 v18, v3

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 697
    move-object/from16 v17, v16

    move-wide/from16 v18, v5

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 698
    move-object/from16 v17, v16

    move-wide/from16 v18, v7

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 699
    move-object/from16 v17, v16

    move-wide/from16 v18, v9

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 700
    move-object/from16 v17, v16

    move-wide/from16 v18, v11

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 701
    move-object/from16 v17, v16

    move-wide/from16 v18, v13

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 702
    return-void
.end method

.method private writePaint(Ljavafx/scene/paint/Paint;B)V
    .locals 7

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "p":Ljavafx/scene/paint/Paint;
    move v2, p2

    .local v2, "command":B
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v4

    move-object v3, v4

    .line 659
    .local v3, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 660
    move-object v4, v3

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 661
    return-void
.end method

.method private writeParam(BB)V
    .locals 6

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move v1, p1

    .local v1, "v":B
    move v2, p2

    .local v2, "command":B
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v4

    move-object v3, v4

    .line 797
    .local v3, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 798
    move-object v4, v3

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 799
    return-void
.end method

.method private writePath(B)V
    .locals 9

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move v1, p1

    .local v1, "command":B
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/canvas/GraphicsContext;->updateTransform()V

    .line 639
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v6

    move-object v2, v6

    .line 640
    .local v2, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v6, v0

    iget-boolean v6, v6, Ljavafx/scene/canvas/GraphicsContext;->pathDirty:Z

    if-eqz v6, :cond_2

    .line 641
    move-object v6, v2

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 642
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/Path2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v6

    move-object v3, v6

    .line 643
    .local v3, "pi":Lcom/sun/javafx/geom/PathIterator;
    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v6

    if-nez v6, :cond_1

    .line 644
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    invoke-interface {v6, v7}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v6

    move v4, v6

    .line 645
    .local v4, "pitype":I
    move-object v6, v2

    sget-object v7, Ljavafx/scene/canvas/GraphicsContext;->pgtype:[B

    move v8, v4

    aget-byte v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 646
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    sget-object v7, Ljavafx/scene/canvas/GraphicsContext;->numsegs:[I

    move v8, v4

    aget v7, v7, v8

    if-ge v6, v7, :cond_0

    .line 647
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move v8, v5

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 646
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 649
    :cond_0
    move-object v6, v3

    invoke-interface {v6}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 650
    goto :goto_0

    .line 651
    .end local v4    # "pitype":I
    .end local v5    # "i":I
    :cond_1
    move-object v6, v2

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 652
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/canvas/GraphicsContext;->pathDirty:Z

    .line 654
    .end local v3    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :cond_2
    move-object v6, v2

    move v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 655
    return-void
.end method

.method private writePoly([D[DIZB)V
    .locals 15

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v1, p1

    .local v1, "xPoints":[D
    move-object/from16 v2, p2

    .local v2, "yPoints":[D
    move/from16 v3, p3

    .local v3, "nPoints":I
    move/from16 v4, p4

    .local v4, "close":Z
    move/from16 v5, p5

    .local v5, "command":B
    move-object v10, v1

    if-eqz v10, :cond_0

    move-object v10, v2

    if-nez v10, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v10

    move-object v6, v10

    .line 721
    .local v6, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v10, v6

    const/16 v11, 0x28

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 722
    const/4 v10, 0x0

    move v7, v10

    .line 723
    .local v7, "pos":I
    const/16 v10, 0x29

    move v8, v10

    .line 724
    .local v8, "polycmd":B
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_1
    move v10, v9

    move v11, v3

    if-ge v10, v11, :cond_3

    .line 725
    move v10, v7

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/canvas/GraphicsContext;->polybuf:[F

    array-length v11, v11

    if-lt v10, v11, :cond_2

    .line 726
    move-object v10, v0

    move-object v11, v6

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext;->polybuf:[F

    move v13, v7

    move v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/canvas/GraphicsContext;->flushPolyBuf(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;[FIB)V

    .line 727
    const/4 v10, 0x0

    move v7, v10

    .line 728
    const/16 v10, 0x2a

    move v8, v10

    .line 730
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->polybuf:[F

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    move-object v12, v1

    move v13, v9

    aget-wide v12, v12, v13

    double-to-float v12, v12

    aput v12, v10, v11

    .line 731
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->polybuf:[F

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    move-object v12, v2

    move v13, v9

    aget-wide v12, v12, v13

    double-to-float v12, v12

    aput v12, v10, v11

    .line 724
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 733
    :cond_3
    move-object v10, v0

    move-object v11, v6

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext;->polybuf:[F

    move v13, v7

    move v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/canvas/GraphicsContext;->flushPolyBuf(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;[FIB)V

    .line 734
    move v10, v4

    if-eqz v10, :cond_4

    .line 735
    move-object v10, v6

    const/16 v11, 0x2d

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 737
    :cond_4
    move-object v10, v6

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 740
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/canvas/GraphicsContext;->updateTransform()V

    .line 741
    move-object v10, v6

    move v11, v5

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 743
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/canvas/GraphicsContext;->markPathDirty()V

    .line 744
    goto :goto_0
.end method

.method private writeRectParams(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;DDDDB)V
    .locals 14

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-wide/from16 v6, p6

    .local v6, "w":D
    move-wide/from16 v8, p8

    .local v8, "h":D
    move/from16 v10, p10

    .local v10, "command":B
    move-object v11, v1

    move v12, v10

    invoke-virtual {v11, v12}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 679
    move-object v11, v1

    move-wide v12, v2

    double-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 680
    move-object v11, v1

    move-wide v12, v4

    double-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 681
    move-object v11, v1

    move-wide v12, v6

    double-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 682
    move-object v11, v1

    move-wide v12, v8

    double-to-float v12, v12

    invoke-virtual {v11, v12}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 683
    return-void
.end method

.method private writeText(Ljava/lang/String;DDDB)V
    .locals 14

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-wide/from16 v6, p6

    .local v6, "maxWidth":D
    move/from16 v8, p8

    .local v8, "command":B
    move-object v10, v1

    if-nez v10, :cond_0

    .line 787
    :goto_0
    return-void

    .line 779
    :cond_0
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/canvas/GraphicsContext;->updateTransform()V

    .line 780
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v10

    move-object v9, v10

    .line 781
    .local v9, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v10, v9

    move v11, v8

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 782
    move-object v10, v9

    move-wide v11, v2

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 783
    move-object v10, v9

    move-wide v11, v4

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 784
    move-object v10, v9

    move-wide v11, v6

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 785
    move-object v10, v9

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/canvas/GraphicsContext;->theCanvas:Ljavafx/scene/canvas/Canvas;

    invoke-virtual {v11}, Ljavafx/scene/canvas/Canvas;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v11

    sget-object v12, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putBoolean(Z)V

    .line 786
    move-object v10, v9

    move-object v11, v1

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 787
    goto :goto_0

    .line 785
    :cond_1
    const/4 v11, 0x0

    goto :goto_1
.end method


# virtual methods
.method public appendSVGPath(Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 2171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v1, p1

    .local v1, "svgpath":Ljava/lang/String;
    move-object v8, v1

    if-nez v8, :cond_0

    .line 2230
    :goto_0
    return-void

    .line 2172
    :cond_0
    const/4 v8, 0x1

    move v2, v8

    .line 2173
    .local v2, "prependMoveto":Z
    const/4 v8, 0x1

    move v3, v8

    .line 2174
    .local v3, "skipMoveto":Z
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_1
    move v8, v4

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 2175
    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 2196
    .line 2198
    :cond_1
    :goto_2
    new-instance v8, Lcom/sun/javafx/geom/Path2D;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object v4, v8

    .line 2199
    .local v4, "p2d":Lcom/sun/javafx/geom/Path2D;
    move v8, v2

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D;->getNumCommands()I

    move-result v8

    if-lez v8, :cond_5

    .line 2201
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/Affine2D;->isTranslateOrIdentity()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2202
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D;->getCurrentX()F

    move-result v8

    float-to-double v8, v8

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxt()D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v8, v8

    move v5, v8

    .line 2203
    .local v5, "x0":F
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D;->getCurrentY()F

    move-result v8

    float-to-double v8, v8

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyt()D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v8, v8

    move v6, v8

    .line 2214
    .local v6, "y0":F
    :goto_3
    move-object v8, v4

    move v9, v5

    move v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 2215
    .line 2219
    .end local v5    # "x0":F
    .end local v6    # "y0":F
    :goto_4
    move-object v8, v4

    move-object v9, v1

    :try_start_0
    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Path2D;->appendSVGPath(Ljava/lang/String;)V

    .line 2220
    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v9, v9, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Path2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v8

    move-object v5, v8

    .line 2221
    .local v5, "pi":Lcom/sun/javafx/geom/PathIterator;
    move v8, v3

    if-eqz v8, :cond_2

    .line 2224
    move-object v8, v5

    invoke-interface {v8}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 2226
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/PathIterator;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/javafx/geom/IllegalPathStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2229
    .line 2230
    .end local v5    # "pi":Lcom/sun/javafx/geom/PathIterator;
    :goto_5
    goto/16 :goto_0

    .line 2180
    .line 2174
    .local v4, "i":I
    :sswitch_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 2182
    :sswitch_1
    const/4 v8, 0x0

    move v14, v8

    move v8, v14

    move v9, v14

    move v3, v9

    move v2, v8

    .line 2183
    goto :goto_2

    .line 2185
    :sswitch_2
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/Path2D;->getNumCommands()I

    move-result v8

    if-nez v8, :cond_3

    .line 2187
    const/4 v8, 0x0

    move v2, v8

    .line 2193
    :cond_3
    const/4 v8, 0x0

    move v3, v8

    goto/16 :goto_2

    .line 2205
    .local v4, "p2d":Lcom/sun/javafx/geom/Path2D;
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v10}, Lcom/sun/javafx/geom/Path2D;->getCurrentX()F

    move-result v10

    aput v10, v8, v9

    .line 2206
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v10}, Lcom/sun/javafx/geom/Path2D;->getCurrentY()F

    move-result v10

    aput v10, v8, v9

    .line 2208
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/sun/javafx/geom/transform/Affine2D;->inverseTransform([FI[FII)V
    :try_end_1
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2210
    .line 2211
    :goto_6
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    move v5, v8

    .line 2212
    .local v5, "x0":F
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    move v6, v8

    .restart local v6    # "y0":F
    goto :goto_3

    .line 2209
    .end local v5    # "x0":F
    .end local v6    # "y0":F
    :catch_0
    move-exception v8

    move-object v7, v8

    goto :goto_6

    .line 2216
    :cond_5
    const/4 v8, 0x0

    move v3, v8

    goto :goto_4

    .line 2227
    :catch_1
    move-exception v8

    :goto_7
    move-object v5, v8

    goto :goto_5

    :catch_2
    move-exception v8

    goto :goto_7

    .line 2175
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x4d -> :sswitch_1
        0x6d -> :sswitch_2
    .end sparse-switch
.end method

.method public applyEffect(Ljavafx/scene/effect/Effect;)V
    .locals 6

    .prologue
    .line 2973
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 2979
    :goto_0
    return-void

    .line 2974
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v4

    move-object v2, v4

    .line 2975
    .local v2, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v4, v2

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 2976
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Effect;->impl_copy()Ljavafx/scene/effect/Effect;

    move-result-object v4

    move-object v3, v4

    .line 2977
    .local v3, "effect":Ljavafx/scene/effect/Effect;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 2978
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 2979
    goto :goto_0
.end method

.method public arc(DDDDDD)V
    .locals 27

    .prologue
    .line 2107
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v4, p1

    .local v4, "centerX":D
    move-wide/from16 v6, p3

    .local v6, "centerY":D
    move-wide/from16 v8, p5

    .local v8, "radiusX":D
    move-wide/from16 v10, p7

    .local v10, "radiusY":D
    move-wide/from16 v12, p9

    .local v12, "startAngle":D
    move-wide/from16 v14, p11

    .local v14, "length":D
    new-instance v17, Lcom/sun/javafx/geom/Arc2D;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-wide/from16 v19, v4

    move-wide/from16 v21, v8

    sub-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-wide/from16 v21, v8

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-wide/from16 v22, v10

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-wide/from16 v23, v12

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v24, v14

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-direct/range {v18 .. v25}, Lcom/sun/javafx/geom/Arc2D;-><init>(FFFFFFI)V

    move-object/from16 v16, v17

    .line 2114
    .local v16, "arc":Lcom/sun/javafx/geom/Arc2D;
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v17, v0

    move-object/from16 v18, v16

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/geom/Arc2D;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/geom/Path2D;->append(Lcom/sun/javafx/geom/PathIterator;Z)V

    .line 2115
    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v17}, Ljavafx/scene/canvas/GraphicsContext;->markPathDirty()V

    .line 2116
    return-void
.end method

.method public arcTo(DDDDD)V
    .locals 21

    .prologue
    .line 1933
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v4, p1

    .local v4, "x1":D
    move-wide/from16 v6, p3

    .local v6, "y1":D
    move-wide/from16 v8, p5

    .local v8, "x2":D
    move-wide/from16 v10, p7

    .local v10, "y2":D
    move-wide/from16 v12, p9

    .local v12, "radius":D
    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v14}, Lcom/sun/javafx/geom/Path2D;->getNumCommands()I

    move-result v14

    if-nez v14, :cond_1

    .line 1934
    move-object v14, v3

    move-wide v15, v4

    move-wide/from16 v17, v6

    invoke-virtual/range {v14 .. v18}, Ljavafx/scene/canvas/GraphicsContext;->moveTo(DD)V

    .line 1935
    move-object v14, v3

    move-wide v15, v4

    move-wide/from16 v17, v6

    invoke-virtual/range {v14 .. v18}, Ljavafx/scene/canvas/GraphicsContext;->lineTo(DD)V

    .line 1941
    :cond_0
    :goto_0
    return-void

    .line 1936
    :cond_1
    move-object v14, v3

    move-wide v15, v4

    double-to-float v15, v15

    move-wide/from16 v16, v6

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-wide/from16 v17, v8

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-wide/from16 v18, v10

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move-wide/from16 v19, v12

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v14 .. v19}, Ljavafx/scene/canvas/GraphicsContext;->tryArcTo(FFFFF)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1939
    move-object v14, v3

    move-wide v15, v4

    move-wide/from16 v17, v6

    invoke-virtual/range {v14 .. v18}, Ljavafx/scene/canvas/GraphicsContext;->lineTo(DD)V

    goto :goto_0
.end method

.method public beginPath()V
    .locals 2

    .prologue
    .line 1773
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Path2D;->reset()V

    .line 1774
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/canvas/GraphicsContext;->markPathDirty()V

    .line 1775
    return-void
.end method

.method public bezierCurveTo(DDDDDD)V
    .locals 25

    .prologue
    .line 1869
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v4, p1

    .local v4, "xc1":D
    move-wide/from16 v6, p3

    .local v6, "yc1":D
    move-wide/from16 v8, p5

    .local v8, "xc2":D
    move-wide/from16 v10, p7

    .local v10, "yc2":D
    move-wide/from16 v12, p9

    .local v12, "x1":D
    move-wide/from16 v14, p11

    .local v14, "y1":D
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-wide/from16 v18, v4

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 1870
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-wide/from16 v18, v6

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 1871
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move-wide/from16 v18, v8

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 1872
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v16, v0

    const/16 v17, 0x3

    move-wide/from16 v18, v10

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 1873
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v16, v0

    const/16 v17, 0x4

    move-wide/from16 v18, v12

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 1874
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v16, v0

    const/16 v17, 0x5

    move-wide/from16 v18, v14

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 1875
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x3

    invoke-virtual/range {v16 .. v21}, Lcom/sun/javafx/geom/transform/Affine2D;->transform([FI[FII)V

    .line 1876
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/Path2D;->getNumCommands()I

    move-result v16

    if-nez v16, :cond_0

    .line 1877
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 1879
    :cond_0
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget v21, v21, v22

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v22, v22, v23

    invoke-virtual/range {v16 .. v22}, Lcom/sun/javafx/geom/Path2D;->curveTo(FFFFFF)V

    .line 1880
    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v16}, Ljavafx/scene/canvas/GraphicsContext;->markPathDirty()V

    .line 1881
    return-void
.end method

.method public clearRect(DDDD)V
    .locals 21

    .prologue
    .line 2338
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    .line 2339
    move-object v10, v1

    const/4 v11, 0x0

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    invoke-direct/range {v10 .. v19}, Ljavafx/scene/canvas/GraphicsContext;->resetIfCovers(Ljavafx/scene/paint/Paint;DDDD)V

    .line 2340
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    const/16 v19, 0x16

    invoke-direct/range {v10 .. v19}, Ljavafx/scene/canvas/GraphicsContext;->writeOp4(DDDDB)V

    .line 2342
    :cond_0
    return-void
.end method

.method public clip()V
    .locals 7

    .prologue
    .line 2303
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    new-instance v3, Lcom/sun/javafx/geom/Path2D;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/Path2D;-><init>(Lcom/sun/javafx/geom/Shape;)V

    move-object v1, v3

    .line 2304
    .local v1, "clip":Lcom/sun/javafx/geom/Path2D;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->clipStack:Ljava/util/LinkedList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2305
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->numClipPaths:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/canvas/GraphicsContext$State;->numClipPaths:I

    .line 2306
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v3

    move-object v2, v3

    .line 2307
    .local v2, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v3, v2

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 2308
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 2309
    return-void
.end method

.method public closePath()V
    .locals 2

    .prologue
    .line 2241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Path2D;->getNumCommands()I

    move-result v1

    if-lez v1, :cond_0

    .line 2242
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Path2D;->closePath()V

    .line 2243
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/canvas/GraphicsContext;->markPathDirty()V

    .line 2245
    :cond_0
    return-void
.end method

.method public drawImage(Ljavafx/scene/image/Image;DD)V
    .locals 20

    .prologue
    .line 2635
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v1, p1

    .local v1, "img":Ljavafx/scene/image/Image;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-object v10, v1

    if-nez v10, :cond_0

    .line 2639
    :goto_0
    return-void

    .line 2636
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v10

    move-wide v6, v10

    .line 2637
    .local v6, "sw":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v10

    move-wide v8, v10

    .line 2638
    .local v8, "sh":D
    move-object v10, v0

    move-object v11, v1

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    invoke-direct/range {v10 .. v19}, Ljavafx/scene/canvas/GraphicsContext;->writeImage(Ljavafx/scene/image/Image;DDDD)V

    .line 2639
    goto :goto_0
.end method

.method public drawImage(Ljavafx/scene/image/Image;DDDD)V
    .locals 20

    .prologue
    .line 2659
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v1, p1

    .local v1, "img":Ljavafx/scene/image/Image;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-wide/from16 v6, p6

    .local v6, "w":D
    move-wide/from16 v8, p8

    .local v8, "h":D
    move-object v10, v0

    move-object v11, v1

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    invoke-direct/range {v10 .. v19}, Ljavafx/scene/canvas/GraphicsContext;->writeImage(Ljavafx/scene/image/Image;DDDD)V

    .line 2660
    return-void
.end method

.method public drawImage(Ljavafx/scene/image/Image;DDDDDDDD)V
    .locals 36

    .prologue
    .line 2687
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v1, p1

    .local v1, "img":Ljavafx/scene/image/Image;
    move-wide/from16 v2, p2

    .local v2, "sx":D
    move-wide/from16 v4, p4

    .local v4, "sy":D
    move-wide/from16 v6, p6

    .local v6, "sw":D
    move-wide/from16 v8, p8

    .local v8, "sh":D
    move-wide/from16 v10, p10

    .local v10, "dx":D
    move-wide/from16 v12, p12

    .local v12, "dy":D
    move-wide/from16 v14, p14

    .local v14, "dw":D
    move-wide/from16 v16, p16

    .local v16, "dh":D
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    move-wide/from16 v26, v16

    move-wide/from16 v28, v2

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    invoke-direct/range {v18 .. v35}, Ljavafx/scene/canvas/GraphicsContext;->writeImage(Ljavafx/scene/image/Image;DDDDDDDD)V

    .line 2688
    return-void
.end method

.method public fill()V
    .locals 3

    .prologue
    .line 2263
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljavafx/scene/canvas/GraphicsContext;->writePath(B)V

    .line 2264
    return-void
.end method

.method public fillArc(DDDDDDLjavafx/scene/shape/ArcType;)V
    .locals 29

    .prologue
    .line 2451
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-wide/from16 v10, p9

    .local v10, "startAngle":D
    move-wide/from16 v12, p11

    .local v12, "arcExtent":D
    move-object/from16 v14, p13

    .local v14, "closure":Ljavafx/scene/shape/ArcType;
    move-wide v15, v6

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-eqz v15, :cond_0

    move-wide v15, v8

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-eqz v15, :cond_0

    move-object v15, v14

    if-eqz v15, :cond_0

    .line 2452
    move-object v15, v1

    move-object/from16 v16, v14

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/canvas/GraphicsContext;->writeArcType(Ljavafx/scene/shape/ArcType;)V

    .line 2453
    move-object v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v12

    const/16 v28, 0x1c

    invoke-direct/range {v15 .. v28}, Ljavafx/scene/canvas/GraphicsContext;->writeOp6(DDDDDDB)V

    .line 2455
    :cond_0
    return-void
.end method

.method public fillOval(DDDD)V
    .locals 21

    .prologue
    .line 2403
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    .line 2404
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    const/16 v19, 0x18

    invoke-direct/range {v10 .. v19}, Ljavafx/scene/canvas/GraphicsContext;->writeOp4(DDDDB)V

    .line 2406
    :cond_0
    return-void
.end method

.method public fillPolygon([D[DI)V
    .locals 10

    .prologue
    .line 2571
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "xPoints":[D
    move-object v2, p2

    .local v2, "yPoints":[D
    move v3, p3

    .local v3, "nPoints":I
    move v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 2572
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    const/16 v9, 0x2f

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/canvas/GraphicsContext;->writePoly([D[DIZB)V

    .line 2574
    :cond_0
    return-void
.end method

.method public fillRect(DDDD)V
    .locals 21

    .prologue
    .line 2360
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    .line 2361
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v11, v11, Ljavafx/scene/canvas/GraphicsContext$State;->fill:Ljavafx/scene/paint/Paint;

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    invoke-direct/range {v10 .. v19}, Ljavafx/scene/canvas/GraphicsContext;->resetIfCovers(Ljavafx/scene/paint/Paint;DDDD)V

    .line 2362
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    const/16 v19, 0x14

    invoke-direct/range {v10 .. v19}, Ljavafx/scene/canvas/GraphicsContext;->writeOp4(DDDDB)V

    .line 2364
    :cond_0
    return-void
.end method

.method public fillRoundRect(DDDDDD)V
    .locals 29

    .prologue
    .line 2505
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-wide/from16 v10, p9

    .local v10, "arcWidth":D
    move-wide/from16 v12, p11

    .local v12, "arcHeight":D
    move-wide v14, v6

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_0

    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_0

    .line 2506
    move-object v14, v1

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    const/16 v27, 0x1a

    invoke-direct/range {v14 .. v27}, Ljavafx/scene/canvas/GraphicsContext;->writeOp6(DDDDDDB)V

    .line 2508
    :cond_0
    return-void
.end method

.method public fillText(Ljava/lang/String;DD)V
    .locals 16

    .prologue
    .line 1652
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v1, p1

    .local v1, "text":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    const-wide/16 v12, 0x0

    const/16 v14, 0x1e

    invoke-direct/range {v6 .. v14}, Ljavafx/scene/canvas/GraphicsContext;->writeText(Ljava/lang/String;DDDB)V

    .line 1653
    return-void
.end method

.method public fillText(Ljava/lang/String;DDD)V
    .locals 18

    .prologue
    .line 1696
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v1, p1

    .local v1, "text":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-wide/from16 v6, p6

    .local v6, "maxWidth":D
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 1698
    :goto_0
    return-void

    .line 1697
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    const/16 v16, 0x1e

    invoke-direct/range {v8 .. v16}, Ljavafx/scene/canvas/GraphicsContext;->writeText(Ljava/lang/String;DDDB)V

    .line 1698
    goto :goto_0
.end method

.method public getCanvas()Ljavafx/scene/canvas/Canvas;
    .locals 2

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->theCanvas:Ljavafx/scene/canvas/Canvas;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getEffect(Ljavafx/scene/effect/Effect;)Ljavafx/scene/effect/Effect;
    .locals 3

    .prologue
    .line 2954
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext$State;->effect:Ljavafx/scene/effect/Effect;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext$State;->effect:Ljavafx/scene/effect/Effect;

    invoke-virtual {v2}, Ljavafx/scene/effect/Effect;->impl_copy()Ljavafx/scene/effect/Effect;

    move-result-object v2

    goto :goto_0
.end method

.method public getFill()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->fill:Ljavafx/scene/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getFillRule()Ljavafx/scene/shape/FillRule;
    .locals 2

    .prologue
    .line 1760
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->fillRule:Ljavafx/scene/shape/FillRule;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getFont()Ljavafx/scene/text/Font;
    .locals 2

    .prologue
    .line 1498
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->font:Ljavafx/scene/text/Font;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getFontSmoothingType()Ljavafx/scene/text/FontSmoothingType;
    .locals 2

    .prologue
    .line 1538
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->fontsmoothing:Ljavafx/scene/text/FontSmoothingType;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getGlobalAlpha()D
    .locals 3

    .prologue
    .line 1115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-wide v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->globalAlpha:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-wide v0
.end method

.method public getGlobalBlendMode()Ljavafx/scene/effect/BlendMode;
    .locals 2

    .prologue
    .line 1147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->blendop:Ljavafx/scene/effect/BlendMode;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getLineCap()Ljavafx/scene/shape/StrokeLineCap;
    .locals 2

    .prologue
    .line 1280
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->linecap:Ljavafx/scene/shape/StrokeLineCap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getLineDashOffset()D
    .locals 3

    .prologue
    .line 1466
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-wide v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->dashOffset:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-wide v0
.end method

.method public getLineDashes()[D
    .locals 3

    .prologue
    .line 1428
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    if-nez v1, :cond_0

    .line 1429
    const/4 v1, 0x0

    move-object v0, v1

    .line 1431
    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getLineJoin()Ljavafx/scene/shape/StrokeLineJoin;
    .locals 2

    .prologue
    .line 1317
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->linejoin:Ljavafx/scene/shape/StrokeLineJoin;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getLineWidth()D
    .locals 3

    .prologue
    .line 1243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-wide v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->linewidth:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-wide v0
.end method

.method public getMiterLimit()D
    .locals 3

    .prologue
    .line 1353
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-wide v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->miterlimit:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-wide v0
.end method

.method public getPixelWriter()Ljavafx/scene/image/PixelWriter;
    .locals 6

    .prologue
    .line 2704
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->writer:Ljavafx/scene/image/PixelWriter;

    if-nez v1, :cond_0

    .line 2705
    move-object v1, v0

    new-instance v2, Ljavafx/scene/canvas/GraphicsContext$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/canvas/GraphicsContext$1;-><init>(Ljavafx/scene/canvas/GraphicsContext;)V

    iput-object v2, v1, Ljavafx/scene/canvas/GraphicsContext;->writer:Ljavafx/scene/image/PixelWriter;

    .line 2915
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->writer:Ljavafx/scene/image/PixelWriter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getStroke()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 1207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->stroke:Ljavafx/scene/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getTextAlign()Ljavafx/scene/text/TextAlignment;
    .locals 2

    .prologue
    .line 1593
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->textalign:Ljavafx/scene/text/TextAlignment;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getTextBaseline()Ljavafx/geometry/VPos;
    .locals 2

    .prologue
    .line 1631
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext$State;->textbaseline:Ljavafx/geometry/VPos;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getTransform()Ljavafx/scene/transform/Affine;
    .locals 3

    .prologue
    .line 1081
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/canvas/GraphicsContext;->getTransform(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v0
.end method

.method public getTransform(Ljavafx/scene/transform/Affine;)Ljavafx/scene/transform/Affine;
    .locals 7

    .prologue
    .line 1055
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v2, p1

    .local v2, "xform":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1056
    new-instance v3, Ljavafx/scene/transform/Affine;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljavafx/scene/transform/Affine;-><init>()V

    move-object v2, v3

    .line 1059
    :cond_0
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMxx(D)V

    .line 1060
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMxy(D)V

    .line 1061
    move-object v3, v2

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMxz(D)V

    .line 1062
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxt()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setTx(D)V

    .line 1063
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyx()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMyx(D)V

    .line 1064
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyy()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMyy(D)V

    .line 1065
    move-object v3, v2

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMyz(D)V

    .line 1066
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyt()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setTy(D)V

    .line 1067
    move-object v3, v2

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMzx(D)V

    .line 1068
    move-object v3, v2

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMzy(D)V

    .line 1069
    move-object v3, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setMzz(D)V

    .line 1070
    move-object v3, v2

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/transform/Affine;->setTz(D)V

    .line 1072
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return-object v1
.end method

.method public isPointInPath(DD)Z
    .locals 11

    .prologue
    .line 2322
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, p3

    .local v4, "y":D
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-wide v7, v2

    double-to-float v7, v7

    move-wide v8, v4

    double-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/Path2D;->contains(FF)Z

    move-result v6

    move v1, v6

    .end local v1    # "this":Ljavafx/scene/canvas/GraphicsContext;
    return v1
.end method

.method public lineTo(DD)V
    .locals 13

    .prologue
    .line 1813
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide v2, p1

    .local v2, "x1":D
    move-wide/from16 v4, p3

    .local v4, "y1":D
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v7, 0x0

    move-wide v8, v2

    double-to-float v8, v8

    aput v8, v6, v7

    .line 1814
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v7, 0x1

    move-wide v8, v4

    double-to-float v8, v8

    aput v8, v6, v7

    .line 1815
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/sun/javafx/geom/transform/Affine2D;->transform([FI[FII)V

    .line 1816
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D;->getNumCommands()I

    move-result v6

    if-nez v6, :cond_0

    .line 1817
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 1819
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 1820
    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/canvas/GraphicsContext;->markPathDirty()V

    .line 1821
    return-void
.end method

.method public moveTo(DD)V
    .locals 13

    .prologue
    .line 1791
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide v2, p1

    .local v2, "x0":D
    move-wide/from16 v4, p3

    .local v4, "y0":D
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v7, 0x0

    move-wide v8, v2

    double-to-float v8, v8

    aput v8, v6, v7

    .line 1792
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v7, 0x1

    move-wide v8, v4

    double-to-float v8, v8

    aput v8, v6, v7

    .line 1793
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/sun/javafx/geom/transform/Affine2D;->transform([FI[FII)V

    .line 1794
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 1795
    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/canvas/GraphicsContext;->markPathDirty()V

    .line 1796
    return-void
.end method

.method public quadraticCurveTo(DDDD)V
    .locals 17

    .prologue
    .line 1839
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v2, p1

    .local v2, "xc":D
    move-wide/from16 v4, p3

    .local v4, "yc":D
    move-wide/from16 v6, p5

    .local v6, "x1":D
    move-wide/from16 v8, p7

    .local v8, "y1":D
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v11, 0x0

    move-wide v12, v2

    double-to-float v12, v12

    aput v12, v10, v11

    .line 1840
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v11, 0x1

    move-wide v12, v4

    double-to-float v12, v12

    aput v12, v10, v11

    .line 1841
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v11, 0x2

    move-wide v12, v6

    double-to-float v12, v12

    aput v12, v10, v11

    .line 1842
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v11, 0x3

    move-wide v12, v8

    double-to-float v12, v12

    aput v12, v10, v11

    .line 1843
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v12, 0x0

    move-object v13, v1

    iget-object v13, v13, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual/range {v10 .. v15}, Lcom/sun/javafx/geom/transform/Affine2D;->transform([FI[FII)V

    .line 1844
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v10}, Lcom/sun/javafx/geom/Path2D;->getNumCommands()I

    move-result v10

    if-nez v10, :cond_0

    .line 1845
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 1847
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object v12, v1

    iget-object v12, v12, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object v13, v1

    iget-object v13, v13, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    const/4 v15, 0x3

    aget v14, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/sun/javafx/geom/Path2D;->quadTo(FFFF)V

    .line 1848
    move-object v10, v1

    invoke-direct {v10}, Ljavafx/scene/canvas/GraphicsContext;->markPathDirty()V

    .line 1849
    return-void
.end method

.method public rect(DDDD)V
    .locals 25

    .prologue
    .line 2134
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "w":D
    move-wide/from16 v10, p7

    .local v10, "h":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-wide/from16 v20, v4

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 2135
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-wide/from16 v20, v6

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 2136
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-wide/from16 v20, v8

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 2137
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 2138
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput v20, v18, v19

    .line 2139
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x5

    move-wide/from16 v20, v10

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 2140
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x3

    invoke-virtual/range {v18 .. v23}, Lcom/sun/javafx/geom/transform/Affine2D;->deltaTransform([FI[FII)V

    .line 2141
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxt()D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v12, v18

    .line 2142
    .local v12, "x0":F
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyt()D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move/from16 v13, v18

    .line 2143
    .local v13, "y0":F
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    move/from16 v14, v18

    .line 2144
    .local v14, "dx1":F
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget v18, v18, v19

    move/from16 v15, v18

    .line 2145
    .local v15, "dy1":F
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x4

    aget v18, v18, v19

    move/from16 v16, v18

    .line 2146
    .local v16, "dx2":F
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->coords:[F

    move-object/from16 v18, v0

    const/16 v19, 0x5

    aget v18, v18, v19

    move/from16 v17, v18

    .line 2147
    .local v17, "dy2":F
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v18, v0

    move/from16 v19, v12

    move/from16 v20, v13

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 2148
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v18, v0

    move/from16 v19, v12

    move/from16 v20, v14

    add-float v19, v19, v20

    move/from16 v20, v13

    move/from16 v21, v15

    add-float v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 2149
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v18, v0

    move/from16 v19, v12

    move/from16 v20, v14

    add-float v19, v19, v20

    move/from16 v20, v16

    add-float v19, v19, v20

    move/from16 v20, v13

    move/from16 v21, v15

    add-float v20, v20, v21

    move/from16 v21, v17

    add-float v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 2150
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v18, v0

    move/from16 v19, v12

    move/from16 v20, v16

    add-float v19, v19, v20

    move/from16 v20, v13

    move/from16 v21, v17

    add-float v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 2151
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/canvas/GraphicsContext;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/Path2D;->closePath()V

    .line 2152
    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/canvas/GraphicsContext;->markPathDirty()V

    .line 2154
    return-void
.end method

.method public restore()V
    .locals 4

    .prologue
    .line 939
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext;->stateStack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 940
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext;->stateStack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v1, v2

    .line 941
    .local v1, "savedState":Ljavafx/scene/canvas/GraphicsContext$State;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljavafx/scene/canvas/GraphicsContext$State;->restore(Ljavafx/scene/canvas/GraphicsContext;)V

    .line 942
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/canvas/GraphicsContext;->txdirty:Z

    .line 944
    .end local v1    # "savedState":Ljavafx/scene/canvas/GraphicsContext$State;
    :cond_0
    return-void
.end method

.method public rotate(D)V
    .locals 7

    .prologue
    .line 971
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide v1, p1

    .local v1, "degrees":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(D)V

    .line 972
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/canvas/GraphicsContext;->txdirty:Z

    .line 973
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 911
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/canvas/GraphicsContext;->stateStack:Ljava/util/LinkedList;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    invoke-virtual {v2}, Ljavafx/scene/canvas/GraphicsContext$State;->copy()Ljavafx/scene/canvas/GraphicsContext$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 912
    return-void
.end method

.method public scale(DD)V
    .locals 11

    .prologue
    .line 962
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v5, v5, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 963
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Ljavafx/scene/canvas/GraphicsContext;->txdirty:Z

    .line 964
    return-void
.end method

.method public setEffect(Ljavafx/scene/effect/Effect;)V
    .locals 5

    .prologue
    .line 2928
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v3

    move-object v2, v3

    .line 2929
    .local v2, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v3, v2

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 2930
    move-object v3, v1

    if-nez v3, :cond_0

    .line 2931
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/canvas/GraphicsContext$State;->effect:Ljavafx/scene/effect/Effect;

    .line 2932
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 2938
    :goto_0
    return-void

    .line 2934
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/Effect;->impl_copy()Ljavafx/scene/effect/Effect;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/canvas/GraphicsContext$State;->effect:Ljavafx/scene/effect/Effect;

    .line 2935
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->effect:Ljavafx/scene/effect/Effect;

    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 2936
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->effect:Ljavafx/scene/effect/Effect;

    invoke-virtual {v4}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setFill(Ljavafx/scene/paint/Paint;)V
    .locals 5

    .prologue
    .line 1161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "p":Ljavafx/scene/paint/Paint;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext$State;->fill:Ljavafx/scene/paint/Paint;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1162
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/canvas/GraphicsContext$State;->fill:Ljavafx/scene/paint/Paint;

    .line 1163
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->writePaint(Ljavafx/scene/paint/Paint;B)V

    .line 1165
    :cond_0
    return-void
.end method

.method public setFillRule(Ljavafx/scene/shape/FillRule;)V
    .locals 6

    .prologue
    .line 1737
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "fillRule":Ljavafx/scene/shape/FillRule;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->fillRule:Ljavafx/scene/shape/FillRule;

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 1739
    move-object v3, v1

    sget-object v4, Ljavafx/scene/shape/FillRule;->EVEN_ODD:Ljavafx/scene/shape/FillRule;

    if-ne v3, v4, :cond_1

    .line 1740
    const/4 v3, 0x1

    move v2, v3

    .line 1744
    .local v2, "b":B
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/canvas/GraphicsContext$State;->fillRule:Ljavafx/scene/shape/FillRule;

    .line 1745
    move-object v3, v0

    move v4, v2

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljavafx/scene/canvas/GraphicsContext;->writeParam(BB)V

    .line 1747
    .end local v2    # "b":B
    :cond_0
    return-void

    .line 1742
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    .restart local v2    # "b":B
    goto :goto_0
.end method

.method public setFont(Ljavafx/scene/text/Font;)V
    .locals 5

    .prologue
    .line 1480
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "f":Ljavafx/scene/text/Font;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->font:Ljavafx/scene/text/Font;

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 1481
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/canvas/GraphicsContext$State;->font:Ljavafx/scene/text/Font;

    .line 1482
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v3

    move-object v2, v3

    .line 1483
    .local v2, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v3, v2

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 1484
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/text/Font;->impl_getNativeFont()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 1486
    .end local v2    # "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    :cond_0
    return-void
.end method

.method public setFontSmoothingType(Ljavafx/scene/text/FontSmoothingType;)V
    .locals 5

    .prologue
    .line 1521
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "fontsmoothing":Ljavafx/scene/text/FontSmoothingType;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->fontsmoothing:Ljavafx/scene/text/FontSmoothingType;

    if-eq v2, v3, :cond_0

    .line 1522
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/canvas/GraphicsContext$State;->fontsmoothing:Ljavafx/scene/text/FontSmoothingType;

    .line 1523
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/text/FontSmoothingType;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->writeParam(BB)V

    .line 1525
    :cond_0
    return-void
.end method

.method public setGlobalAlpha(D)V
    .locals 9

    .prologue
    .line 1098
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide v2, p1

    .local v2, "alpha":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-wide v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->globalAlpha:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 1099
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/canvas/GraphicsContext$State;->globalAlpha:D

    .line 1100
    move-wide v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v2, v4

    .line 1101
    move-object v4, v1

    move-wide v5, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/canvas/GraphicsContext;->writeParam(DB)V

    .line 1103
    :cond_0
    return-void

    .line 1100
    :cond_1
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    move-wide v4, v2

    goto :goto_0
.end method

.method public setGlobalBlendMode(Ljavafx/scene/effect/BlendMode;)V
    .locals 5

    .prologue
    .line 1129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "op":Ljavafx/scene/effect/BlendMode;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->blendop:Ljavafx/scene/effect/BlendMode;

    if-eq v3, v4, :cond_0

    .line 1130
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v3

    move-object v2, v3

    .line 1131
    .local v2, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/canvas/GraphicsContext$State;->blendop:Ljavafx/scene/effect/BlendMode;

    .line 1132
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 1133
    move-object v3, v2

    move-object v4, v1

    invoke-static {v4}, Ljavafx/scene/effect/Blend;->impl_getToolkitMode(Ljavafx/scene/effect/BlendMode;)Lcom/sun/scenario/effect/Blend$Mode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 1135
    .end local v2    # "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    :cond_0
    return-void
.end method

.method public setLineCap(Ljavafx/scene/shape/StrokeLineCap;)V
    .locals 6

    .prologue
    .line 1257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "cap":Ljavafx/scene/shape/StrokeLineCap;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->linecap:Ljavafx/scene/shape/StrokeLineCap;

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 1259
    sget-object v3, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$StrokeLineCap:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/StrokeLineCap;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1263
    .line 1268
    :goto_0
    return-void

    .line 1260
    :pswitch_0
    const/4 v3, 0x0

    move v2, v3

    .line 1265
    .local v2, "v":B
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/canvas/GraphicsContext$State;->linecap:Ljavafx/scene/shape/StrokeLineCap;

    .line 1266
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/canvas/GraphicsContext;->writeParam(BB)V

    .line 1268
    .end local v2    # "v":B
    :cond_0
    goto :goto_0

    .line 1261
    :pswitch_1
    const/4 v3, 0x1

    move v2, v3

    .restart local v2    # "v":B
    goto :goto_1

    .line 1262
    .end local v2    # "v":B
    :pswitch_2
    const/4 v3, 0x2

    move v2, v3

    .restart local v2    # "v":B
    goto :goto_1

    .line 1259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLineDashOffset(D)V
    .locals 9

    .prologue
    .line 1449
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide v2, p1

    .local v2, "dashOffset":D
    move-wide v4, v2

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move-wide v4, v2

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 1450
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/canvas/GraphicsContext$State;->dashOffset:D

    .line 1451
    move-object v4, v1

    move-wide v5, v2

    const/16 v7, 0x12

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/canvas/GraphicsContext;->writeParam(DB)V

    .line 1453
    :cond_0
    return-void
.end method

.method public varargs setLineDashes([D)V
    .locals 11

    .prologue
    .line 1376
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "dashes":[D
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    array-length v6, v6

    if-nez v6, :cond_2

    .line 1377
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    if-nez v6, :cond_1

    .line 1378
    .line 1413
    :goto_0
    return-void

    .line 1380
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    const/4 v7, 0x0

    iput-object v7, v6, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    .line 1410
    :goto_1
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v6

    move-object v2, v6

    .line 1411
    .local v2, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v6, v2

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 1412
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v7, v7, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putObject(Ljava/lang/Object;)V

    .line 1413
    goto :goto_0

    .line 1382
    .end local v2    # "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    :cond_2
    const/4 v6, 0x1

    move v2, v6

    .line 1383
    .local v2, "allZeros":Z
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_2
    move v6, v3

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_5

    .line 1384
    move-object v6, v1

    move v7, v3

    aget-wide v6, v6, v7

    move-wide v4, v6

    .line 1385
    .local v4, "d":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_4

    move-wide v6, v4

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v6, v6, v8

    if-gez v6, :cond_4

    .line 1388
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    .line 1389
    const/4 v6, 0x0

    move v2, v6

    .line 1383
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1392
    :cond_4
    goto :goto_0

    .line 1395
    .end local v4    # "d":D
    :cond_5
    move v6, v2

    if-eqz v6, :cond_7

    .line 1396
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    if-nez v6, :cond_6

    .line 1397
    goto :goto_0

    .line 1399
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    const/4 v7, 0x0

    iput-object v7, v6, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    goto :goto_1

    .line 1401
    :cond_7
    move-object v6, v1

    array-length v6, v6

    move v3, v6

    .line 1402
    .local v3, "dashlen":I
    move v6, v3

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_8

    .line 1403
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v7, v1

    move v8, v3

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    goto :goto_1

    .line 1405
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v7, v1

    move v8, v3

    const/4 v9, 0x2

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    .line 1406
    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v8, v8, Ljavafx/scene/canvas/GraphicsContext$State;->dashes:[D

    move v9, v3

    move v10, v3

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public setLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)V
    .locals 6

    .prologue
    .line 1294
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "join":Ljavafx/scene/shape/StrokeLineJoin;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->linejoin:Ljavafx/scene/shape/StrokeLineJoin;

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 1296
    sget-object v3, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$shape$StrokeLineJoin:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/StrokeLineJoin;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1300
    .line 1305
    :goto_0
    return-void

    .line 1297
    :pswitch_0
    const/4 v3, 0x0

    move v2, v3

    .line 1302
    .local v2, "v":B
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/canvas/GraphicsContext$State;->linejoin:Ljavafx/scene/shape/StrokeLineJoin;

    .line 1303
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x6

    invoke-direct {v3, v4, v5}, Ljavafx/scene/canvas/GraphicsContext;->writeParam(BB)V

    .line 1305
    .end local v2    # "v":B
    :cond_0
    goto :goto_0

    .line 1298
    :pswitch_1
    const/4 v3, 0x2

    move v2, v3

    .restart local v2    # "v":B
    goto :goto_1

    .line 1299
    .end local v2    # "v":B
    :pswitch_2
    const/4 v3, 0x1

    move v2, v3

    .restart local v2    # "v":B
    goto :goto_1

    .line 1296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLineWidth(D)V
    .locals 9

    .prologue
    .line 1225
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide v2, p1

    .local v2, "lw":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move-wide v4, v2

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 1226
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-wide v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->linewidth:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 1227
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/canvas/GraphicsContext$State;->linewidth:D

    .line 1228
    move-object v4, v1

    move-wide v5, v2

    const/4 v7, 0x4

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/canvas/GraphicsContext;->writeParam(DB)V

    .line 1231
    :cond_0
    return-void
.end method

.method public setMiterLimit(D)V
    .locals 9

    .prologue
    .line 1335
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide v2, p1

    .local v2, "ml":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move-wide v4, v2

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 1336
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-wide v4, v4, Ljavafx/scene/canvas/GraphicsContext$State;->miterlimit:D

    move-wide v6, v2

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 1337
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/canvas/GraphicsContext$State;->miterlimit:D

    .line 1338
    move-object v4, v1

    move-wide v5, v2

    const/4 v7, 0x7

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/scene/canvas/GraphicsContext;->writeParam(DB)V

    .line 1341
    :cond_0
    return-void
.end method

.method public setStroke(Ljavafx/scene/paint/Paint;)V
    .locals 5

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "p":Ljavafx/scene/paint/Paint;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext$State;->stroke:Ljavafx/scene/paint/Paint;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 1192
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/canvas/GraphicsContext$State;->stroke:Ljavafx/scene/paint/Paint;

    .line 1193
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Ljavafx/scene/canvas/GraphicsContext;->writePaint(Ljavafx/scene/paint/Paint;B)V

    .line 1195
    :cond_0
    return-void
.end method

.method public setTextAlign(Ljavafx/scene/text/TextAlignment;)V
    .locals 6

    .prologue
    .line 1568
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "align":Ljavafx/scene/text/TextAlignment;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->textalign:Ljavafx/scene/text/TextAlignment;

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 1570
    sget-object v3, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$scene$text$TextAlignment:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/text/TextAlignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1575
    .line 1580
    :goto_0
    return-void

    .line 1571
    :pswitch_0
    const/4 v3, 0x0

    move v2, v3

    .line 1577
    .local v2, "a":B
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/canvas/GraphicsContext$State;->textalign:Ljavafx/scene/text/TextAlignment;

    .line 1578
    move-object v3, v0

    move v4, v2

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Ljavafx/scene/canvas/GraphicsContext;->writeParam(BB)V

    .line 1580
    .end local v2    # "a":B
    :cond_0
    goto :goto_0

    .line 1572
    :pswitch_1
    const/4 v3, 0x1

    move v2, v3

    .restart local v2    # "a":B
    goto :goto_1

    .line 1573
    .end local v2    # "a":B
    :pswitch_2
    const/4 v3, 0x2

    move v2, v3

    .restart local v2    # "a":B
    goto :goto_1

    .line 1574
    .end local v2    # "a":B
    :pswitch_3
    const/4 v3, 0x3

    move v2, v3

    .restart local v2    # "a":B
    goto :goto_1

    .line 1570
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setTextBaseline(Ljavafx/geometry/VPos;)V
    .locals 6

    .prologue
    .line 1607
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "baseline":Ljavafx/geometry/VPos;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->textbaseline:Ljavafx/geometry/VPos;

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 1609
    sget-object v3, Ljavafx/scene/canvas/GraphicsContext$2;->$SwitchMap$javafx$geometry$VPos:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1614
    .line 1619
    :goto_0
    return-void

    .line 1610
    :pswitch_0
    const/4 v3, 0x0

    move v2, v3

    .line 1616
    .local v2, "b":B
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/canvas/GraphicsContext$State;->textbaseline:Ljavafx/geometry/VPos;

    .line 1617
    move-object v3, v0

    move v4, v2

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Ljavafx/scene/canvas/GraphicsContext;->writeParam(BB)V

    .line 1619
    .end local v2    # "b":B
    :cond_0
    goto :goto_0

    .line 1611
    :pswitch_1
    const/4 v3, 0x1

    move v2, v3

    .restart local v2    # "b":B
    goto :goto_1

    .line 1612
    .end local v2    # "b":B
    :pswitch_2
    const/4 v3, 0x2

    move v2, v3

    .restart local v2    # "b":B
    goto :goto_1

    .line 1613
    .end local v2    # "b":B
    :pswitch_3
    const/4 v3, 0x3

    move v2, v3

    .restart local v2    # "b":B
    goto :goto_1

    .line 1609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setTransform(DDDDDD)V
    .locals 27

    .prologue
    .line 1021
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v1, p1

    .local v1, "mxx":D
    move-wide/from16 v3, p3

    .local v3, "myx":D
    move-wide/from16 v5, p5

    .local v5, "mxy":D
    move-wide/from16 v7, p7

    .local v7, "myy":D
    move-wide/from16 v9, p9

    .local v9, "mxt":D
    move-wide/from16 v11, p11

    .local v11, "myt":D
    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v13, v13, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v24, v11

    invoke-virtual/range {v13 .. v25}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(DDDDDD)V

    .line 1024
    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Ljavafx/scene/canvas/GraphicsContext;->txdirty:Z

    .line 1025
    return-void
.end method

.method public setTransform(Ljavafx/scene/transform/Affine;)V
    .locals 16

    .prologue
    .line 1035
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v2, p1

    .local v2, "xform":Ljavafx/scene/transform/Affine;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v6

    move-object v8, v2

    .line 1036
    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v10

    move-object v12, v2

    .line 1037
    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    .line 1035
    invoke-virtual/range {v3 .. v15}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(DDDDDD)V

    .line 1038
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/canvas/GraphicsContext;->txdirty:Z

    .line 1039
    return-void
.end method

.method public stroke()V
    .locals 3

    .prologue
    .line 2282
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, v0

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljavafx/scene/canvas/GraphicsContext;->writePath(B)V

    .line 2283
    return-void
.end method

.method public strokeArc(DDDDDDLjavafx/scene/shape/ArcType;)V
    .locals 29

    .prologue
    .line 2479
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-wide/from16 v10, p9

    .local v10, "startAngle":D
    move-wide/from16 v12, p11

    .local v12, "arcExtent":D
    move-object/from16 v14, p13

    .local v14, "closure":Ljavafx/scene/shape/ArcType;
    move-wide v15, v6

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-eqz v15, :cond_0

    move-wide v15, v8

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-eqz v15, :cond_0

    move-object v15, v14

    if-eqz v15, :cond_0

    .line 2480
    move-object v15, v1

    move-object/from16 v16, v14

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/canvas/GraphicsContext;->writeArcType(Ljavafx/scene/shape/ArcType;)V

    .line 2481
    move-object v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v12

    const/16 v28, 0x1d

    invoke-direct/range {v15 .. v28}, Ljavafx/scene/canvas/GraphicsContext;->writeOp6(DDDDDDB)V

    .line 2483
    :cond_0
    return-void
.end method

.method public strokeLine(DDDD)V
    .locals 19

    .prologue
    .line 2551
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v1, p1

    .local v1, "x1":D
    move-wide/from16 v3, p3

    .local v3, "y1":D
    move-wide/from16 v5, p5

    .local v5, "x2":D
    move-wide/from16 v7, p7

    .local v7, "y2":D
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    const/16 v18, 0x17

    invoke-direct/range {v9 .. v18}, Ljavafx/scene/canvas/GraphicsContext;->writeOp4(DDDDB)V

    .line 2552
    return-void
.end method

.method public strokeOval(DDDD)V
    .locals 21

    .prologue
    .line 2424
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 2425
    :cond_0
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    const/16 v19, 0x19

    invoke-direct/range {v10 .. v19}, Ljavafx/scene/canvas/GraphicsContext;->writeOp4(DDDDB)V

    .line 2427
    :cond_1
    return-void
.end method

.method public strokePolygon([D[DI)V
    .locals 10

    .prologue
    .line 2592
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "xPoints":[D
    move-object v2, p2

    .local v2, "yPoints":[D
    move v3, p3

    .local v3, "nPoints":I
    move v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 2593
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    const/16 v9, 0x30

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/canvas/GraphicsContext;->writePoly([D[DIZB)V

    .line 2595
    :cond_0
    return-void
.end method

.method public strokePolyline([D[DI)V
    .locals 10

    .prologue
    .line 2614
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v1, p1

    .local v1, "xPoints":[D
    move-object v2, p2

    .local v2, "yPoints":[D
    move v3, p3

    .local v3, "nPoints":I
    move v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 2615
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    const/16 v9, 0x30

    invoke-direct/range {v4 .. v9}, Ljavafx/scene/canvas/GraphicsContext;->writePoly([D[DIZB)V

    .line 2617
    :cond_0
    return-void
.end method

.method public strokeRect(DDDD)V
    .locals 21

    .prologue
    .line 2382
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 2383
    :cond_0
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    const/16 v19, 0x15

    invoke-direct/range {v10 .. v19}, Ljavafx/scene/canvas/GraphicsContext;->writeOp4(DDDDB)V

    .line 2385
    :cond_1
    return-void
.end method

.method public strokeRoundRect(DDDDDD)V
    .locals 29

    .prologue
    .line 2530
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-wide/from16 v10, p9

    .local v10, "arcWidth":D
    move-wide/from16 v12, p11

    .local v12, "arcHeight":D
    move-wide v14, v6

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_0

    move-wide v14, v8

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_0

    .line 2531
    move-object v14, v1

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    move-wide/from16 v25, v12

    const/16 v27, 0x1b

    invoke-direct/range {v14 .. v27}, Ljavafx/scene/canvas/GraphicsContext;->writeOp6(DDDDDDB)V

    .line 2533
    :cond_0
    return-void
.end method

.method public strokeText(Ljava/lang/String;DD)V
    .locals 16

    .prologue
    .line 1673
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v1, p1

    .local v1, "text":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    const-wide/16 v12, 0x0

    const/16 v14, 0x1f

    invoke-direct/range {v6 .. v14}, Ljavafx/scene/canvas/GraphicsContext;->writeText(Ljava/lang/String;DDDB)V

    .line 1674
    return-void
.end method

.method public strokeText(Ljava/lang/String;DDD)V
    .locals 18

    .prologue
    .line 1720
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v1, p1

    .local v1, "text":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-wide/from16 v6, p6

    .local v6, "maxWidth":D
    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 1722
    :goto_0
    return-void

    .line 1721
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    const/16 v16, 0x1f

    invoke-direct/range {v8 .. v16}, Ljavafx/scene/canvas/GraphicsContext;->writeText(Ljava/lang/String;DDDB)V

    .line 1722
    goto :goto_0
.end method

.method public transform(DDDDDD)V
    .locals 27

    .prologue
    .line 989
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide/from16 v1, p1

    .local v1, "mxx":D
    move-wide/from16 v3, p3

    .local v3, "myx":D
    move-wide/from16 v5, p5

    .local v5, "mxy":D
    move-wide/from16 v7, p7

    .local v7, "myy":D
    move-wide/from16 v9, p9

    .local v9, "mxt":D
    move-wide/from16 v11, p11

    .local v11, "myt":D
    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v13, v13, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-wide v14, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, v9

    move-wide/from16 v20, v3

    move-wide/from16 v22, v7

    move-wide/from16 v24, v11

    invoke-virtual/range {v13 .. v25}, Lcom/sun/javafx/geom/transform/Affine2D;->concatenate(DDDDDD)V

    .line 991
    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Ljavafx/scene/canvas/GraphicsContext;->txdirty:Z

    .line 992
    return-void
.end method

.method public transform(Ljavafx/scene/transform/Affine;)V
    .locals 16

    .prologue
    .line 1002
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object/from16 v2, p1

    .local v2, "xform":Ljavafx/scene/transform/Affine;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1006
    :goto_0
    return-void

    .line 1003
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v3, v3, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/transform/Affine;->getMxx()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/transform/Affine;->getMxy()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/transform/Affine;->getTx()D

    move-result-wide v8

    move-object v10, v2

    .line 1004
    invoke-virtual {v10}, Ljavafx/scene/transform/Affine;->getMyx()D

    move-result-wide v10

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/transform/Affine;->getMyy()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/transform/Affine;->getTy()D

    move-result-wide v14

    .line 1003
    invoke-virtual/range {v3 .. v15}, Lcom/sun/javafx/geom/transform/Affine2D;->concatenate(DDDDDD)V

    .line 1005
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/canvas/GraphicsContext;->txdirty:Z

    .line 1006
    goto :goto_0
.end method

.method public translate(DD)V
    .locals 11

    .prologue
    .line 952
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/canvas/GraphicsContext;->curState:Ljavafx/scene/canvas/GraphicsContext$State;

    iget-object v5, v5, Ljavafx/scene/canvas/GraphicsContext$State;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 953
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Ljavafx/scene/canvas/GraphicsContext;->txdirty:Z

    .line 954
    return-void
.end method

.method updateDimensions()V
    .locals 6

    .prologue
    .line 817
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v3

    move-object v2, v3

    .line 818
    .local v2, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v3, v2

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 819
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->theCanvas:Ljavafx/scene/canvas/Canvas;

    invoke-virtual {v4}, Ljavafx/scene/canvas/Canvas;->getWidth()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 820
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/canvas/GraphicsContext;->theCanvas:Ljavafx/scene/canvas/Canvas;

    invoke-virtual {v4}, Ljavafx/scene/canvas/Canvas;->getHeight()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 821
    return-void
.end method

.method writeParam(DB)V
    .locals 9

    .prologue
    .line 790
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/canvas/GraphicsContext;
    move-wide v1, p1

    .local v1, "v":D
    move v3, p3

    .local v3, "command":B
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/canvas/GraphicsContext;->getBuffer()Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v5

    move-object v4, v5

    .line 791
    .local v4, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 792
    move-object v5, v4

    move-wide v6, v1

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putFloat(F)V

    .line 793
    return-void
.end method
