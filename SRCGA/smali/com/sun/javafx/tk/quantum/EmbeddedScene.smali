.class final Lcom/sun/javafx/tk/quantum/EmbeddedScene;
.super Lcom/sun/javafx/tk/quantum/GlassScene;
.source "EmbeddedScene.java"

# interfaces
.implements Lcom/sun/javafx/embed/EmbeddedSceneInterface;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final embeddedDnD:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

.field private host:Lcom/sun/javafx/embed/HostInterface;

.field private paintRenderJob:Lcom/sun/javafx/tk/quantum/PaintRenderJob;

.field private painter:Lcom/sun/javafx/tk/quantum/UploadingPainter;

.field private renderScale:F

.field private volatile texBits:Ljava/nio/IntBuffer;

.field private volatile texLineStride:I

.field private volatile texScaleFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/javafx/embed/HostInterface;ZZ)V
    .locals 12

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, p1

    .local v1, "host":Lcom/sun/javafx/embed/HostInterface;
    move v2, p2

    .local v2, "depthBuffer":Z
    move v3, p3

    .local v3, "msaa":Z
    move-object v5, v0

    move v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GlassScene;-><init>(ZZ)V

    .line 67
    move-object v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texScaleFactor:F

    .line 71
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/tk/quantum/EmbeddedState;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/javafx/tk/quantum/EmbeddedState;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneState:Lcom/sun/javafx/tk/quantum/SceneState;

    .line 73
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->host:Lcom/sun/javafx/embed/HostInterface;

    .line 74
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->embeddedDnD:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    .line 76
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v5

    move-object v4, v5

    .line 77
    .local v4, "collector":Lcom/sun/javafx/tk/quantum/PaintCollector;
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/tk/quantum/UploadingPainter;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/javafx/tk/quantum/UploadingPainter;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->painter:Lcom/sun/javafx/tk/quantum/UploadingPainter;

    .line 78
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getRendered()Lcom/sun/javafx/tk/CompletionListener;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->painter:Lcom/sun/javafx/tk/quantum/UploadingPainter;

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/tk/quantum/PaintRenderJob;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;Lcom/sun/javafx/tk/CompletionListener;Ljava/lang/Runnable;)V

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->paintRenderJob:Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    .line 79
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/EmbeddedScene;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$dispose$272()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/EmbeddedScene;II)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$setSize$274(II)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIIIZZZZIZZZZ)Ljava/lang/Void;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    invoke-direct/range {v16 .. v31}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$null$276(IIIIIIZZZZIZZZZ)Ljava/lang/Void;

    move-result-object v16

    move-object/from16 v0, v16

    return-object v0
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/tk/quantum/EmbeddedScene;II)Ljava/lang/Void;
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$null$273(II)Ljava/lang/Void;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IILjava/nio/IntBuffer;)Ljava/lang/Boolean;
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$getPixels$275(IILjava/nio/IntBuffer;)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIIIZZZZIZZZZ)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    invoke-direct/range {v16 .. v31}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$mouseEvent$277(IIIIIIZZZZIZZZZ)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/EmbeddedScene;Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$inputMethodEvent$279(Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIZ)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$menuEvent$281(IIIIZ)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/tk/quantum/EmbeddedScene;I[CII)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$keyEvent$283(I[CII)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/tk/quantum/EmbeddedScene;I[CII)Ljava/lang/Void;
    .locals 10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$null$282(I[CII)Ljava/lang/Void;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIZ)Ljava/lang/Void;
    .locals 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$null$280(IIIIZ)Ljava/lang/Void;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/tk/quantum/EmbeddedScene;Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)Ljava/lang/Void;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->lambda$null$278(Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)Ljava/lang/Void;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method private synthetic lambda$dispose$272()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->host:Lcom/sun/javafx/embed/HostInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sun/javafx/embed/HostInterface;->setEmbeddedScene(Lcom/sun/javafx/embed/EmbeddedSceneInterface;)V

    .line 86
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->host:Lcom/sun/javafx/embed/HostInterface;

    .line 87
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->updateSceneState()V

    .line 88
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->painter:Lcom/sun/javafx/tk/quantum/UploadingPainter;

    .line 89
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->paintRenderJob:Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    .line 90
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texBits:Ljava/nio/IntBuffer;

    .line 91
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    return-object v0
.end method

.method private synthetic lambda$getPixels$275(IILjava/nio/IntBuffer;)Ljava/lang/Boolean;
    .locals 14

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move-object/from16 v3, p3

    .local v3, "dest":Ljava/nio/IntBuffer;
    move v10, v1

    move v4, v10

    .line 193
    .local v4, "scaledWidth":I
    move v10, v2

    move v5, v10

    .line 196
    .local v5, "scaledHeight":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->getRenderScale()F

    move-result v10

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texScaleFactor:F

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texBits:Ljava/nio/IntBuffer;

    if-nez v10, :cond_1

    .line 197
    :cond_0
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v0, v10

    .line 222
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    :goto_0
    return-object v0

    .line 199
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    :cond_1
    move v10, v4

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texScaleFactor:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    move v4, v10

    .line 200
    move v10, v5

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texScaleFactor:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    move v5, v10

    .line 202
    move-object v10, v3

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 203
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texBits:Ljava/nio/IntBuffer;

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 204
    move-object v10, v3

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->capacity()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texBits:Ljava/nio/IntBuffer;

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->capacity()I

    move-result v11

    if-eq v10, v11, :cond_3

    .line 206
    move v10, v4

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texLineStride:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v6, v10

    .line 207
    .local v6, "w":I
    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texBits:Ljava/nio/IntBuffer;

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->capacity()I

    move-result v11

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texLineStride:I

    div-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v7, v10

    .line 212
    .local v7, "h":I
    move v10, v6

    new-array v10, v10, [I

    move-object v8, v10

    .line 213
    .local v8, "linebuf":[I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_2

    .line 214
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texBits:Ljava/nio/IntBuffer;

    move v11, v9

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texLineStride:I

    mul-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 215
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texBits:Ljava/nio/IntBuffer;

    move-object v11, v8

    const/4 v12, 0x0

    move v13, v6

    invoke-virtual {v10, v11, v12, v13}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    move-result-object v10

    .line 216
    move-object v10, v3

    move v11, v9

    move v12, v4

    mul-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 217
    move-object v10, v3

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v10

    .line 213
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 219
    :cond_2
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0

    .line 221
    .end local v6    # "w":I
    .end local v7    # "h":I
    .end local v8    # "linebuf":[I
    .end local v9    # "i":I
    :cond_3
    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texBits:Ljava/nio/IntBuffer;

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v10

    .line 222
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0
.end method

.method private synthetic lambda$inputMethodEvent$279(Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, p1

    .local v1, "type":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "composed":Ljavafx/collections/ObservableList;
    move-object v3, p3

    .local v3, "committed":Ljava/lang/String;
    move v4, p4

    .local v4, "caretPosition":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)Ljava/security/PrivilegedAction;

    move-result-object v5

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    .line 278
    return-void
.end method

.method private synthetic lambda$keyEvent$283(I[CII)V
    .locals 10

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move v1, p1

    .local v1, "modifiers":I
    move-object v2, p2

    .local v2, "ch":[C
    move v3, p3

    .local v3, "type":I
    move v4, p4

    .local v4, "key":I
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;I[CII)Ljava/security/PrivilegedAction;

    move-result-object v5

    move-object v6, v0

    .line 313
    invoke-virtual {v6}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v6

    .line 296
    invoke-static {v5, v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v5

    .line 314
    return-void
.end method

.method private synthetic lambda$menuEvent$281(IIIIZ)V
    .locals 12

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "isKeyboardTrigger":Z
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIZ)Ljava/security/PrivilegedAction;

    move-result-object v6

    move-object v7, v0

    .line 289
    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v7

    .line 284
    invoke-static {v6, v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v6

    .line 290
    return-void
.end method

.method private synthetic lambda$mouseEvent$277(IIIIIIZZZZIZZZZ)V
    .locals 32

    .prologue
    .line 244
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move/from16 v1, p1

    .local v1, "type":I
    move/from16 v2, p2

    .local v2, "wheelRotation":I
    move/from16 v3, p3

    .local v3, "x":I
    move/from16 v4, p4

    .local v4, "y":I
    move/from16 v5, p5

    .local v5, "xAbs":I
    move/from16 v6, p6

    .local v6, "yAbs":I
    move/from16 v7, p7

    .local v7, "shift":Z
    move/from16 v8, p8

    .local v8, "ctrl":Z
    move/from16 v9, p9

    .local v9, "alt":Z
    move/from16 v10, p10

    .local v10, "meta":Z
    move/from16 v11, p11

    .local v11, "button":I
    move/from16 v12, p12

    .local v12, "popupTrigger":Z
    move/from16 v13, p13

    .local v13, "primaryBtnDown":Z
    move/from16 v14, p14

    .local v14, "middleBtnDown":Z
    move/from16 v15, p15

    .local v15, "secondaryBtnDown":Z
    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    invoke-static/range {v16 .. v31}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIIIZZZZIZZZZ)Ljava/security/PrivilegedAction;

    move-result-object v16

    move-object/from16 v17, v0

    .line 263
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v17

    .line 244
    invoke-static/range {v16 .. v17}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v16

    .line 264
    return-void
.end method

.method private synthetic lambda$null$273(II)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v3, :cond_0

    .line 175
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move v4, v1

    int-to-float v4, v4

    move v5, v2

    int-to-float v5, v5

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/tk/TKSceneListener;->changedSize(FF)V

    .line 177
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    return-object v0
.end method

.method private synthetic lambda$null$276(IIIIIIZZZZIZZZZ)Ljava/lang/Void;
    .locals 54

    .prologue
    .line 245
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move/from16 v4, p1

    .local v4, "type":I
    move/from16 v5, p2

    .local v5, "wheelRotation":I
    move/from16 v6, p3

    .local v6, "x":I
    move/from16 v7, p4

    .local v7, "y":I
    move/from16 v8, p5

    .local v8, "xAbs":I
    move/from16 v9, p6

    .local v9, "yAbs":I
    move/from16 v10, p7

    .local v10, "shift":Z
    move/from16 v11, p8

    .local v11, "ctrl":Z
    move/from16 v12, p9

    .local v12, "alt":Z
    move/from16 v13, p10

    .local v13, "meta":Z
    move/from16 v14, p11

    .local v14, "button":I
    move/from16 v15, p12

    .local v15, "popupTrigger":Z
    move/from16 v16, p13

    .local v16, "primaryBtnDown":Z
    move/from16 v17, p14

    .local v17, "middleBtnDown":Z
    move/from16 v18, p15

    .local v18, "secondaryBtnDown":Z
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 246
    const/16 v20, 0x0

    move-object/from16 v3, v20

    .line 262
    .end local v3    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    :goto_0
    return-object v3

    .line 249
    .restart local v3    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    :cond_0
    sget-boolean v20, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->$assertionsDisabled:Z

    if-nez v20, :cond_1

    move/from16 v20, v4

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    new-instance v20, Ljava/lang/AssertionError;

    move-object/from16 v53, v20

    move-object/from16 v20, v53

    move-object/from16 v21, v53

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 250
    :cond_1
    move/from16 v20, v4

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 251
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v20, v0

    sget-object v21, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    const-wide/16 v22, 0x0

    move/from16 v24, v5

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/high16 v30, 0x4044000000000000L    # 40.0

    const-wide/high16 v32, 0x4044000000000000L    # 40.0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v39, v6

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v39, v0

    move/from16 v41, v7

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v41, v0

    move/from16 v43, v8

    move/from16 v0, v43

    int-to-double v0, v0

    move-wide/from16 v43, v0

    move/from16 v45, v9

    move/from16 v0, v45

    int-to-double v0, v0

    move-wide/from16 v45, v0

    move/from16 v47, v10

    move/from16 v48, v11

    move/from16 v49, v12

    move/from16 v50, v13

    const/16 v51, 0x0

    const/16 v52, 0x0

    invoke-interface/range {v20 .. v52}, Lcom/sun/javafx/tk/TKSceneListener;->scrollEvent(Ljavafx/event/EventType;DDDDDDIIIIIDDDDZZZZZZ)V

    .line 262
    :goto_1
    const/16 v20, 0x0

    move-object/from16 v3, v20

    goto :goto_0

    .line 255
    :cond_2
    move/from16 v20, v4

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/embed/AbstractEvents;->mouseIDToFXEventID(I)Ljavafx/event/EventType;

    move-result-object v20

    move-object/from16 v19, v20

    .line 256
    .local v19, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/MouseEvent;>;"
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v20, v0

    move-object/from16 v21, v19

    move/from16 v22, v6

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v24, v7

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v26, v8

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v28, v9

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move/from16 v30, v14

    .line 257
    invoke-static/range {v30 .. v30}, Lcom/sun/javafx/embed/AbstractEvents;->mouseButtonToFXMouseButton(I)Ljavafx/scene/input/MouseButton;

    move-result-object v30

    move/from16 v31, v15

    const/16 v32, 0x0

    move/from16 v33, v10

    move/from16 v34, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move/from16 v37, v16

    move/from16 v38, v17

    move/from16 v39, v18

    .line 256
    invoke-interface/range {v20 .. v39}, Lcom/sun/javafx/tk/TKSceneListener;->mouseEvent(Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;ZZZZZZZZZ)V

    goto :goto_1
.end method

.method private synthetic lambda$null$278(Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)Ljava/lang/Void;
    .locals 10

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, p1

    .local v1, "type":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "composed":Ljavafx/collections/ObservableList;
    move-object v3, p3

    .local v3, "committed":Ljava/lang/String;
    move v4, p4

    .local v4, "caretPosition":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v5, :cond_0

    .line 274
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/TKSceneListener;->inputMethodEvent(Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)V

    .line 276
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    return-object v0
.end method

.method private synthetic lambda$null$280(IIIIZ)Ljava/lang/Void;
    .locals 17

    .prologue
    .line 285
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move/from16 v2, p1

    .local v2, "x":I
    move/from16 v3, p2

    .local v3, "y":I
    move/from16 v4, p3

    .local v4, "xAbs":I
    move/from16 v5, p4

    .local v5, "yAbs":I
    move/from16 v6, p5

    .local v6, "isKeyboardTrigger":Z
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v7, :cond_0

    .line 286
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move v8, v2

    int-to-double v8, v8

    move v10, v3

    int-to-double v10, v10

    move v12, v4

    int-to-double v12, v12

    move v14, v5

    int-to-double v14, v14

    move/from16 v16, v6

    invoke-interface/range {v7 .. v16}, Lcom/sun/javafx/tk/TKSceneListener;->menuEvent(DDDDZ)V

    .line 288
    :cond_0
    const/4 v7, 0x0

    move-object v1, v7

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    return-object v1
.end method

.method private synthetic lambda$null$282(I[CII)Ljava/lang/Void;
    .locals 23

    .prologue
    .line 297
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move/from16 v1, p1

    .local v1, "modifiers":I
    move-object/from16 v2, p2

    .local v2, "ch":[C
    move/from16 v3, p3

    .local v3, "type":I
    move/from16 v4, p4

    .local v4, "key":I
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v12, :cond_0

    .line 298
    move v12, v1

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_0
    move v5, v12

    .line 299
    .local v5, "shiftDown":Z
    move v12, v1

    const/4 v13, 0x2

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    :goto_1
    move v6, v12

    .line 300
    .local v6, "controlDown":Z
    move v12, v1

    const/4 v13, 0x4

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_2
    move v7, v12

    .line 301
    .local v7, "altDown":Z
    move v12, v1

    const/16 v13, 0x8

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_3
    move v8, v12

    .line 303
    .local v8, "metaDown":Z
    new-instance v12, Ljava/lang/String;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move-object v14, v2

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    move-object v9, v12

    .line 304
    .local v9, "str":Ljava/lang/String;
    move-object v12, v9

    move-object v10, v12

    .line 305
    .local v10, "text":Ljava/lang/String;
    new-instance v12, Ljavafx/scene/input/KeyEvent;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move v14, v3

    .line 306
    invoke-static {v14}, Lcom/sun/javafx/embed/AbstractEvents;->keyIDToFXEventType(I)Ljavafx/event/EventType;

    move-result-object v14

    move-object v15, v9

    move-object/from16 v16, v10

    move/from16 v17, v4

    .line 308
    invoke-static/range {v17 .. v17}, Lcom/sun/javafx/scene/input/KeyCodeMap;->valueOf(I)Ljavafx/scene/input/KeyCode;

    move-result-object v17

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    invoke-direct/range {v13 .. v21}, Ljavafx/scene/input/KeyEvent;-><init>(Ljavafx/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;ZZZZ)V

    move-object v11, v12

    .line 310
    .local v11, "keyEvent":Ljavafx/scene/input/KeyEvent;
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object v13, v11

    invoke-interface {v12, v13}, Lcom/sun/javafx/tk/TKSceneListener;->keyEvent(Ljavafx/scene/input/KeyEvent;)V

    .line 312
    .end local v5    # "shiftDown":Z
    .end local v6    # "controlDown":Z
    .end local v7    # "altDown":Z
    .end local v8    # "metaDown":Z
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "keyEvent":Ljavafx/scene/input/KeyEvent;
    :cond_0
    const/4 v12, 0x0

    move-object v0, v12

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    return-object v0

    .line 298
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 299
    .restart local v5    # "shiftDown":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 300
    .restart local v6    # "controlDown":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 301
    .restart local v7    # "altDown":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private synthetic lambda$setSize$274(II)V
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;II)Ljava/security/PrivilegedAction;

    move-result-object v3

    move-object v4, v0

    .line 178
    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v4

    .line 173
    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    .line 179
    return-void
.end method


# virtual methods
.method public createDragboard(Z)Lcom/sun/javafx/tk/TKClipboard;
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move v1, p1

    .local v1, "isDragSource":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->embeddedDnD:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->createDragboard(Z)Lcom/sun/javafx/tk/TKClipboard;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    return-object v0
.end method

.method public createDropTarget()Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->embeddedDnD:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->createDropTarget()Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    return-object v0
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->host:Lcom/sun/javafx/embed/HostInterface;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 84
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/tk/quantum/GlassScene;->dispose()V

    .line 94
    return-void
.end method

.method public enableInputMethodEvents(Z)V
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move v1, p1

    .local v1, "enable":Z
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v2, :cond_0

    .line 121
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmbeddedScene.enableInputMethodEvents "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public finishInputMethodComposition()V
    .locals 3

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "EmbeddedScene.finishInputMethodComposition"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method protected getClearColor()Lcom/sun/prism/paint/Color;
    .locals 3

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-virtual {v1}, Lcom/sun/prism/paint/Paint;->getType()Lcom/sun/prism/paint/Paint$Type;

    move-result-object v1

    sget-object v2, Lcom/sun/prism/paint/Paint$Type;->COLOR:Lcom/sun/prism/paint/Paint$Type;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    check-cast v1, Lcom/sun/prism/paint/Color;

    .line 229
    invoke-virtual {v1}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 231
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->fillPaint:Lcom/sun/prism/paint/Paint;

    check-cast v1, Lcom/sun/prism/paint/Color;

    move-object v0, v1

    .line 233
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/tk/quantum/GlassScene;->getClearColor()Lcom/sun/prism/paint/Color;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->inputMethodRequests:Ljavafx/scene/input/InputMethodRequests;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    return-object v0
.end method

.method public getPixels(Ljava/nio/IntBuffer;II)Z
    .locals 8

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, p1

    .local v1, "dest":Ljava/nio/IntBuffer;
    move v2, p2

    .local v2, "width":I
    move v3, p3

    .local v3, "height":I
    move-object v4, v0

    move v5, v2

    move v6, v3

    move-object v7, v1

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IILjava/nio/IntBuffer;)Ljava/util/function/Supplier;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    return v0
.end method

.method public getRenderScale()F
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->renderScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    return v0
.end method

.method public inputMethodEvent(Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/input/InputMethodTextRun;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, p1

    .local v1, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/InputMethodEvent;>;"
    move-object v2, p2

    .local v2, "composed":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/InputMethodTextRun;>;"
    move-object v3, p3

    .local v3, "committed":Ljava/lang/String;
    move v4, p4

    .local v4, "caretPosition":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {v5}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method

.method protected isSynchronous()Z
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    return v0
.end method

.method public keyEvent(II[CI)V
    .locals 10

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "key":I
    move-object v3, p3

    .local v3, "ch":[C
    move v4, p4

    .local v4, "modifiers":I
    move-object v5, v0

    move v6, v4

    move-object v7, v3

    move v8, v1

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;I[CII)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {v5}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public menuEvent(IIIIZ)V
    .locals 12

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move/from16 v5, p5

    .local v5, "isKeyboardTrigger":Z
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIZ)Ljava/lang/Runnable;

    move-result-object v6

    invoke-static {v6}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method

.method public mouseEvent(IIZZZIIIIZZZZIZ)V
    .locals 32

    .prologue
    .line 243
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move/from16 v1, p1

    .local v1, "type":I
    move/from16 v2, p2

    .local v2, "button":I
    move/from16 v3, p3

    .local v3, "primaryBtnDown":Z
    move/from16 v4, p4

    .local v4, "middleBtnDown":Z
    move/from16 v5, p5

    .local v5, "secondaryBtnDown":Z
    move/from16 v6, p6

    .local v6, "x":I
    move/from16 v7, p7

    .local v7, "y":I
    move/from16 v8, p8

    .local v8, "xAbs":I
    move/from16 v9, p9

    .local v9, "yAbs":I
    move/from16 v10, p10

    .local v10, "shift":Z
    move/from16 v11, p11

    .local v11, "ctrl":Z
    move/from16 v12, p12

    .local v12, "alt":Z
    move/from16 v13, p13

    .local v13, "meta":Z
    move/from16 v14, p14

    .local v14, "wheelRotation":I
    move/from16 v15, p15

    .local v15, "popupTrigger":Z
    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v14

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move/from16 v27, v2

    move/from16 v28, v15

    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v5

    invoke-static/range {v16 .. v31}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;IIIIIIZZZZIZZZZ)Ljava/lang/Runnable;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method public repaint()V
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v1, v2

    .line 157
    .local v1, "tk":Lcom/sun/javafx/tk/Toolkit;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->paintRenderJob:Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->addRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 158
    return-void
.end method

.method public setCursor(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, p1

    .local v1, "cursor":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->setCursor(Ljava/lang/Object;)V

    .line 320
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->host:Lcom/sun/javafx/embed/HostInterface;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/cursor/CursorFrame;

    invoke-interface {v2, v3}, Lcom/sun/javafx/embed/HostInterface;->setCursor(Lcom/sun/javafx/cursor/CursorFrame;)V

    .line 321
    return-void
.end method

.method public setDragStartListener(Lcom/sun/javafx/embed/HostDragStartListener;)V
    .locals 4

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, p1

    .local v1, "l":Lcom/sun/javafx/embed/HostDragStartListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->embeddedDnD:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->setDragStartListener(Lcom/sun/javafx/embed/HostDragStartListener;)V

    .line 326
    return-void
.end method

.method public setPixelScaleFactor(F)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move v1, p1

    .local v1, "scale":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->renderScale:F

    .line 135
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->entireSceneNeedsRepaint()V

    .line 136
    return-void
.end method

.method public setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, p1

    .local v1, "root":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 110
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->painter:Lcom/sun/javafx/tk/quantum/UploadingPainter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/UploadingPainter;->setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 111
    return-void
.end method

.method public setSize(II)V
    .locals 6

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedScene$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedScene;II)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method setStage(Lcom/sun/javafx/tk/quantum/GlassStage;)V
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, p1

    .local v1, "stage":Lcom/sun/javafx/tk/quantum/GlassStage;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->setStage(Lcom/sun/javafx/tk/quantum/GlassStage;)V

    .line 100
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->host:Lcom/sun/javafx/embed/HostInterface;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 101
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->host:Lcom/sun/javafx/embed/HostInterface;

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    :goto_0
    invoke-interface {v2, v3}, Lcom/sun/javafx/embed/HostInterface;->setEmbeddedScene(Lcom/sun/javafx/embed/EmbeddedSceneInterface;)V

    .line 102
    return-void

    .line 101
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public traverseOut(Lcom/sun/javafx/scene/traversal/Direction;)Z
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v2, v3, :cond_0

    .line 163
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->host:Lcom/sun/javafx/embed/HostInterface;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sun/javafx/embed/HostInterface;->traverseFocusOut(Z)Z

    move-result v2

    move v0, v2

    .line 167
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    :goto_0
    return v0

    .line 164
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    :cond_0
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    if-ne v2, v3, :cond_1

    .line 165
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->host:Lcom/sun/javafx/embed/HostInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sun/javafx/embed/HostInterface;->traverseFocusOut(Z)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 167
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method uploadPixels(Lcom/sun/glass/ui/Pixels;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v1, p1

    .local v1, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/IntBuffer;

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texBits:Ljava/nio/IntBuffer;

    .line 145
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/Pixels;->getWidthUnsafe()I

    move-result v3

    iput v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texLineStride:I

    .line 146
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/Pixels;->getScaleUnsafe()F

    move-result v3

    iput v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->texScaleFactor:F

    .line 147
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->host:Lcom/sun/javafx/embed/HostInterface;

    if-eqz v2, :cond_0

    .line 148
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->host:Lcom/sun/javafx/embed/HostInterface;

    invoke-interface {v2}, Lcom/sun/javafx/embed/HostInterface;->repaint()V

    .line 150
    :cond_0
    return-void
.end method
