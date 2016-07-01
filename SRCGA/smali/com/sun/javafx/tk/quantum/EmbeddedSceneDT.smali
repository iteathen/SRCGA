.class final Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
.super Ljava/lang/Object;
.source "EmbeddedSceneDT.java"

# interfaces
.implements Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private assistant:Lcom/sun/glass/ui/ClipboardAssistance;

.field private final dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

.field private final dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

.field private dragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    move-object v1, p1

    .local v1, "dnd":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move-object v2, p2

    .local v2, "dndHandler":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    .line 45
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    .line 46
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
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

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->lambda$handleDragEnter$300(Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->lambda$handleDragLeave$301()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
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

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->lambda$handleDragDrop$302(IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
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

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->lambda$handleDragOver$303(IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method private close()V
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->onDropTargetReleased(Lcom/sun/javafx/embed/EmbeddedSceneDTInterface;)V

    .line 50
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 51
    return-void
.end method

.method private synthetic lambda$handleDragDrop$302(IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move-object/from16 v5, p5

    .local v5, "recommendedDropAction":Ljavafx/scene/input/TransferMode;
    sget-boolean v8, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 98
    :cond_0
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual/range {v8 .. v14}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->handleDragDrop(IIIILjavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    move-object v6, v8

    .line 102
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->close()V

    move-object v8, v6

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->close()V

    move-object v8, v7

    throw v8
.end method

.method private synthetic lambda$handleDragEnter$300(Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    move-object/from16 v1, p1

    .local v1, "ds":Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "xAbs":I
    move/from16 v5, p5

    .local v5, "yAbs":I
    move-object/from16 v6, p6

    .local v6, "recommendedDropAction":Ljavafx/scene/input/TransferMode;
    sget-boolean v7, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 63
    :cond_0
    sget-boolean v7, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 65
    :cond_1
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    .line 66
    move-object v7, v0

    new-instance v8, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dragSource:Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$EmbeddedDTAssistant;-><init>(Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;)V

    iput-object v8, v7, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 68
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v6

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->handleDragEnter(IIIILjavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    return-object v0
.end method

.method private synthetic lambda$handleDragLeave$301()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 81
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->handleDragLeave(Lcom/sun/glass/ui/ClipboardAssistance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->close()V

    .line 84
    .line 85
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    return-object v0

    .line 83
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->close()V

    move-object v2, v1

    throw v2
.end method

.method private synthetic lambda$handleDragOver$303(IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move-object/from16 v5, p5

    .local v5, "recommendedDropAction":Ljavafx/scene/input/TransferMode;
    sget-boolean v6, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 115
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual/range {v6 .. v12}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->handleDragOver(IIIILjavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)Ljavafx/scene/input/TransferMode;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    return-object v0
.end method


# virtual methods
.method public handleDragDrop(IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 14

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move-object/from16 v5, p5

    .local v5, "recommendedDropAction":Ljavafx/scene/input/TransferMode;
    sget-boolean v6, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v6}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->isHostThread()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 95
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    invoke-static/range {v7 .. v12}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;IIIILjavafx/scene/input/TransferMode;)Ljava/util/concurrent/Callable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->executeOnFXThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/input/TransferMode;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    return-object v0
.end method

.method public handleDragEnter(IIIILjavafx/scene/input/TransferMode;Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;)Ljavafx/scene/input/TransferMode;
    .locals 16

    .prologue
    .line 59
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move-object/from16 v5, p5

    .local v5, "recommendedDropAction":Ljavafx/scene/input/TransferMode;
    move-object/from16 v6, p6

    .local v6, "ds":Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;
    sget-boolean v7, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->isHostThread()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 61
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v8, v0

    move-object v9, v6

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    invoke-static/range {v8 .. v14}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;IIIILjavafx/scene/input/TransferMode;)Ljava/util/concurrent/Callable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->executeOnFXThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/input/TransferMode;

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    return-object v0
.end method

.method public handleDragLeave()V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->isHostThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 78
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->executeOnFXThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    return-void
.end method

.method public handleDragOver(IIIILjavafx/scene/input/TransferMode;)Ljavafx/scene/input/TransferMode;
    .locals 14

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    move v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "xAbs":I
    move/from16 v4, p4

    .local v4, "yAbs":I
    move-object/from16 v5, p5

    .local v5, "recommendedDropAction":Ljavafx/scene/input/TransferMode;
    sget-boolean v6, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v6}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->isHostThread()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 113
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    invoke-static/range {v7 .. v12}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;IIIILjavafx/scene/input/TransferMode;)Ljava/util/concurrent/Callable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->executeOnFXThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/input/TransferMode;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDT;
    return-object v0
.end method
