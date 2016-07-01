.class Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
.super Ljava/lang/Object;
.source "GlassSceneDnDEventHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final scene:Lcom/sun/javafx/tk/quantum/GlassScene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    .line 45
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;Lcom/sun/glass/ui/ClipboardAssistance;IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->lambda$handleDragEnter$289(Lcom/sun/glass/ui/ClipboardAssistance;IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->lambda$handleDragLeave$290()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
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

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->lambda$handleDragDrop$291(IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
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

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->lambda$handleDragOver$292(IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;Lcom/sun/glass/ui/ClipboardAssistance;IIIII)Ljava/lang/Void;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->lambda$handleDragStart$293(Lcom/sun/glass/ui/ClipboardAssistance;IIIII)Ljava/lang/Void;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;Ljavafx/scene/input/TransferMode;)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->lambda$handleDragEnd$294(Ljavafx/scene/input/TransferMode;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private getPlatformScale()D
    .locals 6

    .prologue
    .line 50
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/GlassScene;->getPlatformView()Lcom/sun/glass/ui/View;

    move-result-object v4

    move-object v2, v4

    .line 51
    .local v2, "view":Lcom/sun/glass/ui/View;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 52
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v4

    move-object v3, v4

    .line 53
    .local v3, "w":Lcom/sun/glass/ui/Window;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 54
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v4

    float-to-double v4, v4

    move-wide v1, v4

    .line 57
    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    .end local v3    # "w":Lcom/sun/glass/ui/Window;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v1, v4

    goto :goto_0
.end method

.method private synthetic lambda$handleDragDrop$291(IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 22

    .prologue
    .line 93
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move/from16 v4, p1

    .local v4, "x":I
    move/from16 v5, p2

    .local v5, "y":I
    move/from16 v6, p3

    .local v6, "xAbs":I
    move/from16 v7, p4

    .local v7, "yAbs":I
    move-object/from16 v8, p5

    .local v8, "recommendedTransferMode":Ljavafx/scene/input/TransferMode;
    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassScene;->dropTargetListener:Lcom/sun/javafx/tk/TKDropTargetListener;

    if-eqz v11, :cond_0

    .line 94
    move-object v11, v3

    invoke-direct {v11}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->getPlatformScale()D

    move-result-wide v11

    move-wide v9, v11

    .line 95
    .local v9, "pScale":D
    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassScene;->dropTargetListener:Lcom/sun/javafx/tk/TKDropTargetListener;

    move v12, v4

    int-to-double v12, v12

    move-wide v14, v9

    div-double/2addr v12, v14

    move v14, v5

    int-to-double v14, v14

    move-wide/from16 v16, v9

    div-double v14, v14, v16

    move/from16 v16, v6

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v9

    div-double v16, v16, v18

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v9

    div-double v18, v18, v20

    move-object/from16 v20, v8

    invoke-interface/range {v11 .. v20}, Lcom/sun/javafx/tk/TKDropTargetListener;->drop(DDDDLjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;

    move-result-object v11

    move-object v3, v11

    .line 98
    .end local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    .end local v9    # "pScale":D
    :goto_0
    return-object v3

    .restart local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    :cond_0
    const/4 v11, 0x0

    move-object v3, v11

    goto :goto_0
.end method

.method private synthetic lambda$handleDragEnd$294(Ljavafx/scene/input/TransferMode;)Ljava/lang/Void;
    .locals 13

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move-object v1, p1

    .local v1, "performedTransferMode":Ljavafx/scene/input/TransferMode;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->dragSourceListener:Lcom/sun/javafx/tk/TKDragSourceListener;

    if-eqz v3, :cond_0

    .line 149
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassScene;->dragSourceListener:Lcom/sun/javafx/tk/TKDragSourceListener;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v12, v1

    invoke-interface/range {v3 .. v12}, Lcom/sun/javafx/tk/TKDragSourceListener;->dragDropEnd(DDDDLjavafx/scene/input/TransferMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->releaseCurrentDragboard()V

    .line 153
    .line 154
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    return-object v0

    .line 152
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    :catchall_0
    move-exception v3

    move-object v2, v3

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->releaseCurrentDragboard()V

    move-object v3, v2

    throw v3
.end method

.method private synthetic lambda$handleDragEnter$289(Lcom/sun/glass/ui/ClipboardAssistance;IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 24

    .prologue
    .line 66
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move-object/from16 v4, p1

    .local v4, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move/from16 v5, p2

    .local v5, "x":I
    move/from16 v6, p3

    .local v6, "y":I
    move/from16 v7, p4

    .local v7, "xAbs":I
    move/from16 v8, p5

    .local v8, "yAbs":I
    move-object/from16 v9, p6

    .local v9, "recommendedTransferMode":Ljavafx/scene/input/TransferMode;
    move-object v13, v3

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassScene;->dropTargetListener:Lcom/sun/javafx/tk/TKDropTargetListener;

    if-eqz v13, :cond_0

    .line 67
    move-object v13, v3

    invoke-direct {v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->getPlatformScale()D

    move-result-wide v13

    move-wide v10, v13

    .line 68
    .local v10, "pScale":D
    move-object v13, v4

    const/4 v14, 0x0

    .line 69
    invoke-static {v13, v14}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->getDragboardInstance(Lcom/sun/glass/ui/ClipboardAssistance;Z)Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    move-result-object v13

    move-object v12, v13

    .line 70
    .local v12, "dragboard":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v13, v3

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassScene;->dropTargetListener:Lcom/sun/javafx/tk/TKDropTargetListener;

    move v14, v5

    int-to-double v14, v14

    move-wide/from16 v16, v10

    div-double v14, v14, v16

    move/from16 v16, v6

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v10

    div-double v16, v16, v18

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    div-double v18, v18, v20

    move/from16 v20, v8

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v10

    div-double v20, v20, v22

    move-object/from16 v22, v9

    move-object/from16 v23, v12

    invoke-interface/range {v13 .. v23}, Lcom/sun/javafx/tk/TKDropTargetListener;->dragEnter(DDDDLjavafx/scene/input/TransferMode;Lcom/sun/javafx/tk/TKClipboard;)Ljavafx/scene/input/TransferMode;

    move-result-object v13

    move-object v3, v13

    .line 73
    .end local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    .end local v10    # "pScale":D
    .end local v12    # "dragboard":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    :goto_0
    return-object v3

    .restart local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    :cond_0
    const/4 v13, 0x0

    move-object v3, v13

    goto :goto_0
.end method

.method private synthetic lambda$handleDragLeave$290()Ljava/lang/Void;
    .locals 10

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->dropTargetListener:Lcom/sun/javafx/tk/TKDropTargetListener;

    if-eqz v1, :cond_0

    .line 81
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassScene;->dropTargetListener:Lcom/sun/javafx/tk/TKDropTargetListener;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-interface/range {v1 .. v9}, Lcom/sun/javafx/tk/TKDropTargetListener;->dragExit(DDDD)V

    .line 83
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleDragOver$292(IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 22

    .prologue
    .line 108
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move/from16 v4, p1

    .local v4, "x":I
    move/from16 v5, p2

    .local v5, "y":I
    move/from16 v6, p3

    .local v6, "xAbs":I
    move/from16 v7, p4

    .local v7, "yAbs":I
    move-object/from16 v8, p5

    .local v8, "recommendedTransferMode":Ljavafx/scene/input/TransferMode;
    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassScene;->dropTargetListener:Lcom/sun/javafx/tk/TKDropTargetListener;

    if-eqz v11, :cond_0

    .line 109
    move-object v11, v3

    invoke-direct {v11}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->getPlatformScale()D

    move-result-wide v11

    move-wide v9, v11

    .line 110
    .local v9, "pScale":D
    move-object v11, v3

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassScene;->dropTargetListener:Lcom/sun/javafx/tk/TKDropTargetListener;

    move v12, v4

    int-to-double v12, v12

    move-wide v14, v9

    div-double/2addr v12, v14

    move v14, v5

    int-to-double v14, v14

    move-wide/from16 v16, v9

    div-double v14, v14, v16

    move/from16 v16, v6

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v9

    div-double v16, v16, v18

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v9

    div-double v18, v18, v20

    move-object/from16 v20, v8

    invoke-interface/range {v11 .. v20}, Lcom/sun/javafx/tk/TKDropTargetListener;->dragOver(DDDDLjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;

    move-result-object v11

    move-object v3, v11

    .line 113
    .end local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    .end local v9    # "pScale":D
    :goto_0
    return-object v3

    .restart local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    :cond_0
    const/4 v11, 0x0

    move-object v3, v11

    goto :goto_0
.end method

.method private synthetic lambda$handleDragStart$293(Lcom/sun/glass/ui/ClipboardAssistance;IIIII)Ljava/lang/Void;
    .locals 24

    .prologue
    .line 128
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move-object/from16 v4, p1

    .local v4, "dragSourceAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move/from16 v5, p2

    .local v5, "x":I
    move/from16 v6, p3

    .local v6, "y":I
    move/from16 v7, p4

    .local v7, "xAbs":I
    move/from16 v8, p5

    .local v8, "yAbs":I
    move/from16 v9, p6

    .local v9, "button":I
    move-object v13, v3

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassScene;->dragGestureListener:Lcom/sun/javafx/tk/TKDragGestureListener;

    if-eqz v13, :cond_0

    .line 129
    move-object v13, v3

    invoke-direct {v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->getPlatformScale()D

    move-result-wide v13

    move-wide v10, v13

    .line 130
    .local v10, "pScale":D
    move-object v13, v4

    const/4 v14, 0x1

    .line 131
    invoke-static {v13, v14}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->getDragboardInstance(Lcom/sun/glass/ui/ClipboardAssistance;Z)Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    move-result-object v13

    move-object v12, v13

    .line 132
    .local v12, "dragboard":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v13, v3

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassScene;->dragGestureListener:Lcom/sun/javafx/tk/TKDragGestureListener;

    move v14, v5

    int-to-double v14, v14

    move-wide/from16 v16, v10

    div-double v14, v14, v16

    move/from16 v16, v6

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v10

    div-double v16, v16, v18

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    div-double v18, v18, v20

    move/from16 v20, v8

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v10

    div-double v20, v20, v22

    move/from16 v22, v9

    move-object/from16 v23, v12

    invoke-interface/range {v13 .. v23}, Lcom/sun/javafx/tk/TKDragGestureListener;->dragGestureRecognized(DDDDILcom/sun/javafx/tk/TKClipboard;)V

    .line 135
    .end local v10    # "pScale":D
    .end local v12    # "dragboard":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    :cond_0
    const/4 v13, 0x0

    move-object v3, v13

    .end local v3    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    return-object v3
.end method


# virtual methods
.method public handleDragDrop(IIIILjavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;
    .locals 14

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move-object/from16 v5, p5

    .local v5, "recommendedTransferMode":Ljavafx/scene/input/TransferMode;
    move-object/from16 v6, p6

    .local v6, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    sget-boolean v7, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 92
    :cond_0
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    invoke-static/range {v7 .. v12}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;IIIILjavafx/scene/input/TransferMode;)Ljava/security/PrivilegedAction;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    .line 99
    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/GlassScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v8

    .line 92
    invoke-static {v7, v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/input/TransferMode;

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    return-object v0
.end method

.method public handleDragEnd(Ljavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 6

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move-object v1, p1

    .local v1, "performedTransferMode":Ljavafx/scene/input/TransferMode;
    move-object v2, p2

    .local v2, "dragSourceAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    sget-boolean v3, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 146
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;Ljavafx/scene/input/TransferMode;)Ljava/security/PrivilegedAction;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    .line 155
    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/GlassScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v4

    .line 146
    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    .line 156
    return-void
.end method

.method public handleDragEnter(IIIILjavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;
    .locals 15

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move-object/from16 v5, p5

    .local v5, "recommendedTransferMode":Ljavafx/scene/input/TransferMode;
    move-object/from16 v6, p6

    .local v6, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    sget-boolean v7, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 65
    :cond_0
    move-object v7, v0

    move-object v8, v6

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    invoke-static/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;Lcom/sun/glass/ui/ClipboardAssistance;IIIILjavafx/scene/input/TransferMode;)Ljava/security/PrivilegedAction;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    .line 74
    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/GlassScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v8

    .line 65
    invoke-static {v7, v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/input/TransferMode;

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    return-object v0
.end method

.method public handleDragLeave(Lcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move-object v1, p1

    .local v1, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 79
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;)Ljava/security/PrivilegedAction;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    .line 84
    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v3

    .line 79
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 85
    return-void
.end method

.method public handleDragOver(IIIILjavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;
    .locals 14

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move-object/from16 v5, p5

    .local v5, "recommendedTransferMode":Ljavafx/scene/input/TransferMode;
    move-object/from16 v6, p6

    .local v6, "dropTargetAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    sget-boolean v7, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 107
    :cond_0
    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    invoke-static/range {v7 .. v12}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;IIIILjavafx/scene/input/TransferMode;)Ljava/security/PrivilegedAction;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    .line 114
    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/GlassScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v8

    .line 107
    invoke-static {v7, v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/input/TransferMode;

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    return-object v0
.end method

.method public handleDragStart(IIIIILcom/sun/glass/ui/ClipboardAssistance;)V
    .locals 15

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move/from16 v1, p1

    .local v1, "button":I
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "xAbs":I
    move/from16 v5, p5

    .local v5, "yAbs":I
    move-object/from16 v6, p6

    .local v6, "dragSourceAssistant":Lcom/sun/glass/ui/ClipboardAssistance;
    sget-boolean v7, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-static {}, Ljavafx/application/Platform;->isFxApplicationThread()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 127
    :cond_0
    move-object v7, v0

    move-object v8, v6

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v1

    invoke-static/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;Lcom/sun/glass/ui/ClipboardAssistance;IIIII)Ljava/security/PrivilegedAction;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    .line 136
    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/GlassScene;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v8

    .line 127
    invoke-static {v7, v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v7

    .line 137
    return-void
.end method
