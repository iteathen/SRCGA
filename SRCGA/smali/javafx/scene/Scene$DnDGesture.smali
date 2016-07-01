.class Ljavafx/scene/Scene$DnDGesture;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnDGesture"
.end annotation


# instance fields
.field private acceptedTransferMode:Ljavafx/scene/input/TransferMode;

.field private currentTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end field

.field private dragDetected:Ljavafx/scene/Scene$DragDetectedState;

.field private dragboard:Ljavafx/scene/input/Dragboard;

.field private fullPDRSource:Ljavafx/event/EventTarget;

.field private final hysteresisSizeX:D

.field private final hysteresisSizeY:D

.field private newTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end field

.field private potentialTarget:Ljavafx/event/EventTarget;

.field private pressedX:D

.field private pressedY:D

.field private source:Ljavafx/event/EventTarget;

.field private sourceTransferModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;"
        }
    .end annotation
.end field

.field private target:Ljavafx/event/EventTarget;

.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 7

    .prologue
    .line 2913
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object v2, p1

    .local v2, "this$0":Ljavafx/scene/Scene;
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2914
    move-object v3, v1

    .line 2915
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getMultiClickMaxX()I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, v3, Ljavafx/scene/Scene$DnDGesture;->hysteresisSizeX:D

    .line 2916
    move-object v3, v1

    .line 2917
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getMultiClickMaxY()I

    move-result v4

    int-to-double v4, v4

    iput-wide v4, v3, Ljavafx/scene/Scene$DnDGesture;->hysteresisSizeY:D

    .line 2919
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    .line 2920
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->sourceTransferModes:Ljava/util/Set;

    .line 2921
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->acceptedTransferMode:Ljavafx/scene/input/TransferMode;

    .line 2922
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    .line 2923
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    .line 2924
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->target:Ljavafx/event/EventTarget;

    .line 2925
    move-object v3, v1

    sget-object v4, Ljavafx/scene/Scene$DragDetectedState;->NOT_YET:Ljavafx/scene/Scene$DragDetectedState;

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->dragDetected:Ljavafx/scene/Scene$DragDetectedState;

    .line 2928
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->currentTargets:Ljava/util/List;

    .line 2929
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->newTargets:Ljava/util/List;

    .line 2930
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->fullPDRSource:Ljavafx/event/EventTarget;

    return-void
.end method

.method static synthetic access$1700(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/KeyEvent;)Z
    .locals 4

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$DnDGesture;->processKey(Ljavafx/scene/input/KeyEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene$DnDGesture;
    return v0
.end method

.method static synthetic access$6000(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/input/Dragboard;
    .locals 2

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene$DnDGesture;
    return-object v0
.end method

.method static synthetic access$6002(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/Dragboard;)Ljavafx/scene/input/Dragboard;
    .locals 7

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/Dragboard;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene$DnDGesture;
    return-object v0
.end method

.method static synthetic access$6100(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/DragEvent;)Ljavafx/scene/input/TransferMode;
    .locals 4

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/DragEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$DnDGesture;->processTargetEnterOver(Ljavafx/scene/input/DragEvent;)Ljavafx/scene/input/TransferMode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene$DnDGesture;
    return-object v0
.end method

.method static synthetic access$6200(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/DragEvent;)V
    .locals 4

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/DragEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$DnDGesture;->processTargetExit(Ljavafx/scene/input/DragEvent;)V

    return-void
.end method

.method static synthetic access$6300(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/event/EventTarget;
    .locals 2

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene$DnDGesture;
    return-object v0
.end method

.method static synthetic access$6400(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/DragEvent;)Ljavafx/scene/input/TransferMode;
    .locals 4

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/DragEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$DnDGesture;->processTargetDrop(Ljavafx/scene/input/DragEvent;)Ljavafx/scene/input/TransferMode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene$DnDGesture;
    return-object v0
.end method

.method static synthetic access$6500(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/DragEvent;)Z
    .locals 4

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/DragEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$DnDGesture;->processRecognized(Ljavafx/scene/input/DragEvent;)Z

    move-result v2

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene$DnDGesture;
    return v0
.end method

.method static synthetic access$6800(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/DragEvent;)V
    .locals 4

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/DragEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$DnDGesture;->processDropEnd(Ljavafx/scene/input/DragEvent;)V

    return-void
.end method

.method static synthetic access$8000(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$DnDGesture;->processDragDetection(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$8200(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/MouseEvent;Ljavafx/event/EventTarget;)Z
    .locals 6

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/MouseEvent;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventTarget;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene$DnDGesture;->process(Ljavafx/scene/input/MouseEvent;Ljavafx/event/EventTarget;)Z

    move-result v3

    move v0, v3

    .end local v0    # "x0":Ljavafx/scene/Scene$DnDGesture;
    return v0
.end method

.method static synthetic access$8400(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/Scene$DragDetectedState;
    .locals 2

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$DnDGesture;->dragDetected:Ljavafx/scene/Scene$DragDetectedState;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene$DnDGesture;
    return-object v0
.end method

.method static synthetic access$8500(Ljavafx/scene/Scene$DnDGesture;Ljavafx/event/EventTarget;Ljava/util/Set;)Ljavafx/scene/input/Dragboard;
    .locals 6

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventTarget;
    move-object v2, p2

    .local v2, "x2":Ljava/util/Set;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene$DnDGesture;->startDrag(Ljavafx/event/EventTarget;Ljava/util/Set;)Ljavafx/scene/input/Dragboard;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x0":Ljavafx/scene/Scene$DnDGesture;
    return-object v0
.end method

.method static synthetic access$8600(Ljavafx/scene/Scene$DnDGesture;Ljavafx/event/EventTarget;)V
    .locals 4

    .prologue
    .line 2913
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventTarget;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$DnDGesture;->startFullPDR(Ljavafx/event/EventTarget;)V

    return-void
.end method

.method private createDragboard(Ljavafx/scene/input/DragEvent;Z)Ljavafx/scene/input/Dragboard;
    .locals 7

    .prologue
    .line 3285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "de":Ljavafx/scene/input/DragEvent;
    move v2, p2

    .local v2, "isDragSource":Z
    const/4 v5, 0x0

    move-object v3, v5

    .line 3286
    .local v3, "dragboard":Ljavafx/scene/input/Dragboard;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 3287
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/DragEvent;->getDragboard()Ljavafx/scene/input/Dragboard;

    move-result-object v5

    move-object v3, v5

    .line 3288
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 3289
    move-object v5, v3

    move-object v0, v5

    .line 3293
    .end local v0    # "this":Ljavafx/scene/Scene$DnDGesture;
    :goto_0
    return-object v0

    .line 3292
    .restart local v0    # "this":Ljavafx/scene/Scene$DnDGesture;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v5}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v5

    move v6, v2

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKScene;->createDragboard(Z)Lcom/sun/javafx/tk/TKClipboard;

    move-result-object v5

    move-object v4, v5

    .line 3293
    .local v4, "dragboardPeer":Lcom/sun/javafx/tk/TKClipboard;
    move-object v5, v4

    invoke-static {v5}, Ljavafx/scene/input/Dragboard;->impl_createDragboard(Lcom/sun/javafx/tk/TKClipboard;)Ljavafx/scene/input/Dragboard;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method private dragDetectedProcessed()V
    .locals 9

    .prologue
    .line 2953
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object v2, v0

    sget-object v3, Ljavafx/scene/Scene$DragDetectedState;->DONE:Ljavafx/scene/Scene$DragDetectedState;

    iput-object v3, v2, Ljavafx/scene/Scene$DnDGesture;->dragDetected:Ljavafx/scene/Scene$DragDetectedState;

    .line 2954
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    invoke-virtual {v2}, Ljavafx/scene/input/Dragboard;->impl_contentPut()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 2955
    .local v1, "hasContent":Z
    move v2, v1

    if-eqz v2, :cond_2

    .line 2957
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$DnDGesture;->sourceTransferModes:Ljava/util/Set;

    new-instance v5, Ljavafx/scene/Scene$DragSourceListener;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-direct {v6, v7}, Ljavafx/scene/Scene$DragSourceListener;-><init>(Ljavafx/scene/Scene;)V

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/tk/Toolkit;->startDrag(Lcom/sun/javafx/tk/TKScene;Ljava/util/Set;Lcom/sun/javafx/tk/TKDragSourceListener;Ljavafx/scene/input/Dragboard;)V

    .line 2966
    :cond_0
    :goto_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Scene$DnDGesture;->fullPDRSource:Ljavafx/event/EventTarget;

    .line 2967
    return-void

    .line 2954
    .end local v1    # "hasContent":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2961
    .restart local v1    # "hasContent":Z
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$DnDGesture;->fullPDRSource:Ljavafx/event/EventTarget;

    if-eqz v2, :cond_0

    .line 2963
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$3000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$MouseHandler;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$DnDGesture;->fullPDRSource:Ljavafx/event/EventTarget;

    invoke-virtual {v2, v3}, Ljavafx/scene/Scene$MouseHandler;->enterFullPDR(Ljavafx/event/EventTarget;)V

    goto :goto_1
.end method

.method private fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V
    .locals 5

    .prologue
    .line 2936
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "target":Ljavafx/event/EventTarget;
    move-object v2, p2

    .local v2, "e":Ljavafx/event/Event;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 2937
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 2939
    :cond_0
    return-void
.end method

.method private handleExitEnter(Ljavafx/scene/input/DragEvent;Ljavafx/scene/Scene$TargetWrapper;)V
    .locals 14

    .prologue
    .line 3180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/DragEvent;
    move-object/from16 v2, p2

    .local v2, "target":Ljavafx/scene/Scene$TargetWrapper;
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->currentTargets:Ljava/util/List;

    .line 3181
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->currentTargets:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/event/EventTarget;

    :goto_0
    move-object v3, v8

    .line 3183
    .local v3, "currentTarget":Ljavafx/event/EventTarget;
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/Scene$TargetWrapper;->getEventTarget()Ljavafx/event/EventTarget;

    move-result-object v8

    move-object v9, v3

    if-eq v8, v9, :cond_6

    .line 3185
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$DnDGesture;->newTargets:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljavafx/scene/Scene$TargetWrapper;->fillHierarchy(Ljava/util/List;)V

    .line 3187
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->currentTargets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 3188
    .local v4, "i":I
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->newTargets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .line 3190
    .local v5, "j":I
    :goto_1
    move v8, v4

    if-ltz v8, :cond_1

    move v8, v5

    if-ltz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->currentTargets:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$DnDGesture;->newTargets:Ljava/util/List;

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 3191
    add-int/lit8 v4, v4, -0x1

    .line 3192
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3181
    .end local v3    # "currentTarget":Ljavafx/event/EventTarget;
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 3195
    .restart local v3    # "currentTarget":Ljavafx/event/EventTarget;
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    :cond_1
    :goto_2
    move v8, v4

    if-ltz v8, :cond_3

    .line 3196
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->currentTargets:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/event/EventTarget;

    move-object v6, v8

    .line 3197
    .local v6, "t":Ljavafx/event/EventTarget;
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    move-object v9, v6

    if-ne v8, v9, :cond_2

    .line 3198
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    .line 3200
    :cond_2
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/DragEvent;->getSource()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v6

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    sget-object v13, Ljavafx/scene/input/DragEvent;->DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    invoke-virtual/range {v8 .. v13}, Ljavafx/scene/input/DragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/event/EventType;)Ljavafx/scene/input/DragEvent;

    move-result-object v8

    move-object v1, v8

    .line 3202
    move-object v8, v6

    move-object v9, v1

    invoke-static {v8, v9}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3195
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3205
    .end local v6    # "t":Ljavafx/event/EventTarget;
    :cond_3
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    .line 3206
    :goto_3
    move v8, v5

    if-ltz v8, :cond_5

    .line 3207
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->newTargets:Ljava/util/List;

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/event/EventTarget;

    move-object v6, v8

    .line 3208
    .restart local v6    # "t":Ljavafx/event/EventTarget;
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/DragEvent;->getSource()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v6

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    sget-object v13, Ljavafx/scene/input/DragEvent;->DRAG_ENTERED_TARGET:Ljavafx/event/EventType;

    invoke-virtual/range {v8 .. v13}, Ljavafx/scene/input/DragEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/event/EventType;)Ljavafx/scene/input/DragEvent;

    move-result-object v8

    move-object v1, v8

    .line 3210
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/DragEvent;->getAcceptingObject()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 3211
    .local v7, "acceptingObject":Ljava/lang/Object;
    move-object v8, v7

    instance-of v8, v8, Ljavafx/event/EventTarget;

    if-eqz v8, :cond_4

    .line 3212
    move-object v8, v0

    move-object v9, v7

    check-cast v9, Ljavafx/event/EventTarget;

    iput-object v9, v8, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    .line 3214
    :cond_4
    move-object v8, v6

    move-object v9, v1

    invoke-static {v8, v9}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3206
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 3217
    .end local v6    # "t":Ljavafx/event/EventTarget;
    .end local v7    # "acceptingObject":Ljava/lang/Object;
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->currentTargets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 3218
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->currentTargets:Ljava/util/List;

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$DnDGesture;->newTargets:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .line 3219
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->newTargets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 3221
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_6
    return-void
.end method

.method private process(Ljavafx/scene/input/MouseEvent;Ljavafx/event/EventTarget;)Z
    .locals 10

    .prologue
    .line 3000
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "mouseEvent":Ljavafx/scene/input/MouseEvent;
    move-object v2, p2

    .local v2, "target":Ljavafx/event/EventTarget;
    const/4 v6, 0x1

    move v3, v6

    .line 3003
    .local v3, "continueProcessing":Z
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->dragDetected:Ljavafx/scene/Scene$DragDetectedState;

    sget-object v7, Ljavafx/scene/Scene$DragDetectedState;->DONE:Ljavafx/scene/Scene$DragDetectedState;

    if-eq v6, v7, :cond_2

    move-object v6, v1

    .line 3004
    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v6

    sget-object v7, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    if-eq v6, v7, :cond_0

    move-object v6, v1

    .line 3005
    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v6

    sget-object v7, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    if-ne v6, v7, :cond_2

    :cond_0
    move-object v6, v1

    .line 3006
    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->isDragDetect()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3008
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/Scene$DnDGesture;->processingDragDetected()V

    .line 3010
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 3011
    move-object v6, v1

    move-object v7, v1

    .line 3012
    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v2

    sget-object v9, Ljavafx/scene/input/MouseEvent;->DRAG_DETECTED:Ljavafx/event/EventType;

    .line 3011
    invoke-virtual {v6, v7, v8, v9}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseEvent;

    move-result-object v6

    move-object v4, v6

    .line 3016
    .local v4, "detectedEvent":Ljavafx/scene/input/MouseEvent;
    move-object v6, v0

    move-object v7, v2

    move-object v8, v4

    :try_start_0
    invoke-direct {v6, v7, v8}, Ljavafx/scene/Scene$DnDGesture;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3019
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    if-eqz v6, :cond_1

    .line 3020
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    .line 3026
    .end local v4    # "detectedEvent":Ljavafx/scene/input/MouseEvent;
    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/Scene$DnDGesture;->dragDetectedProcessed()V

    .line 3029
    :cond_2
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v6

    sget-object v7, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    if-ne v6, v7, :cond_3

    .line 3030
    const/4 v6, 0x0

    move v3, v6

    .line 3033
    :cond_3
    move v6, v3

    move v0, v6

    .end local v0    # "this":Ljavafx/scene/Scene$DnDGesture;
    return v0

    .line 3019
    .restart local v0    # "this":Ljavafx/scene/Scene$DnDGesture;
    .restart local v4    # "detectedEvent":Ljavafx/scene/input/MouseEvent;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    if-eqz v6, :cond_4

    .line 3020
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    :cond_4
    move-object v6, v5

    throw v6
.end method

.method private processDragDetection(Ljavafx/scene/input/MouseEvent;)V
    .locals 11

    .prologue
    .line 2974
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "mouseEvent":Ljavafx/scene/input/MouseEvent;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->dragDetected:Ljavafx/scene/Scene$DragDetectedState;

    sget-object v7, Ljavafx/scene/Scene$DragDetectedState;->NOT_YET:Ljavafx/scene/Scene$DragDetectedState;

    if-eq v6, v7, :cond_0

    .line 2975
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavafx/scene/input/MouseEvent;->setDragDetect(Z)V

    .line 2976
    .line 2993
    :goto_0
    return-void

    .line 2979
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v6

    sget-object v7, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    if-ne v6, v7, :cond_2

    .line 2980
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/Scene$DnDGesture;->pressedX:D

    .line 2981
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/Scene$DnDGesture;->pressedY:D

    .line 2983
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavafx/scene/input/MouseEvent;->setDragDetect(Z)V

    .line 2993
    :cond_1
    :goto_1
    goto :goto_0

    .line 2985
    :cond_2
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v6

    sget-object v7, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    if-ne v6, v7, :cond_1

    .line 2987
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v6

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/Scene$DnDGesture;->pressedX:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-wide v2, v6

    .line 2988
    .local v2, "deltaX":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v6

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/Scene$DnDGesture;->pressedY:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 2989
    .local v4, "deltaY":D
    move-object v6, v1

    move-wide v7, v2

    move-object v9, v0

    iget-wide v9, v9, Ljavafx/scene/Scene$DnDGesture;->hysteresisSizeX:D

    cmpl-double v7, v7, v9

    if-gtz v7, :cond_3

    move-wide v7, v4

    move-object v9, v0

    iget-wide v9, v9, Ljavafx/scene/Scene$DnDGesture;->hysteresisSizeY:D

    cmpl-double v7, v7, v9

    if-lez v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v6, v7}, Ljavafx/scene/input/MouseEvent;->setDragDetect(Z)V

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private processDropEnd(Ljavafx/scene/input/DragEvent;)V
    .locals 23

    .prologue
    .line 3069
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object/from16 v3, p1

    .local v3, "de":Ljavafx/scene/input/DragEvent;
    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    if-nez v4, :cond_0

    .line 3070
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Scene.DnDGesture.processDropEnd() - UNEXPECTD - source is NULL"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3071
    .line 3087
    :goto_0
    return-void

    .line 3074
    :cond_0
    new-instance v4, Ljavafx/scene/input/DragEvent;

    move-object/from16 v22, v4

    move-object/from16 v4, v22

    move-object/from16 v5, v22

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/input/DragEvent;->getSource()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    sget-object v8, Ljavafx/scene/input/DragEvent;->DRAG_DONE:Ljavafx/event/EventType;

    move-object v9, v3

    .line 3075
    invoke-virtual {v9}, Ljavafx/scene/input/DragEvent;->getDragboard()Ljavafx/scene/input/Dragboard;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/input/DragEvent;->getSceneX()D

    move-result-wide v10

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/input/DragEvent;->getSceneY()D

    move-result-wide v12

    move-object v14, v3

    .line 3076
    invoke-virtual {v14}, Ljavafx/scene/input/DragEvent;->getScreenX()D

    move-result-wide v14

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/input/DragEvent;->getScreenY()D

    move-result-wide v16

    move-object/from16 v18, v3

    .line 3077
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/DragEvent;->getTransferMode()Ljavafx/scene/input/TransferMode;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$DnDGesture;->target:Ljavafx/event/EventTarget;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/input/DragEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v21

    invoke-direct/range {v5 .. v21}, Ljavafx/scene/input/DragEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    move-object v3, v4

    .line 3079
    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3081
    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene$TargetWrapper;->clear()V

    .line 3082
    move-object v4, v2

    move-object v5, v3

    move-object v6, v2

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v6}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavafx/scene/Scene$DnDGesture;->handleExitEnter(Ljavafx/scene/input/DragEvent;Ljavafx/scene/Scene$TargetWrapper;)V

    .line 3086
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    move-object v5, v2

    iget-object v5, v5, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/Toolkit;->stopDrag(Ljavafx/scene/input/Dragboard;)V

    .line 3087
    goto :goto_0
.end method

.method private processKey(Ljavafx/scene/input/KeyEvent;)Z
    .locals 23

    .prologue
    .line 3234
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object/from16 v2, p1

    .local v2, "e":Ljavafx/scene/input/KeyEvent;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    if-ne v4, v5, :cond_1

    .line 3237
    new-instance v4, Ljavafx/scene/input/DragEvent;

    move-object/from16 v22, v4

    move-object/from16 v4, v22

    move-object/from16 v5, v22

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    sget-object v8, Ljavafx/scene/input/DragEvent;->DRAG_DONE:Ljavafx/event/EventType;

    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v5 .. v21}, Ljavafx/scene/input/DragEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    move-object v3, v4

    .line 3240
    .local v3, "de":Ljavafx/scene/input/DragEvent;
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    if-eqz v4, :cond_0

    .line 3241
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3244
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene$TargetWrapper;->clear()V

    .line 3245
    move-object v4, v1

    move-object v5, v3

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v6}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavafx/scene/Scene$DnDGesture;->handleExitEnter(Ljavafx/scene/input/DragEvent;Ljavafx/scene/Scene$TargetWrapper;)V

    .line 3247
    const/4 v4, 0x0

    move v1, v4

    .line 3249
    .end local v1    # "this":Ljavafx/scene/Scene$DnDGesture;
    .end local v3    # "de":Ljavafx/scene/input/DragEvent;
    :goto_0
    return v1

    .restart local v1    # "this":Ljavafx/scene/Scene$DnDGesture;
    :cond_1
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0
.end method

.method private processRecognized(Ljavafx/scene/input/DragEvent;)Z
    .locals 30

    .prologue
    .line 3042
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object/from16 v1, p1

    .local v1, "de":Ljavafx/scene/input/DragEvent;
    new-instance v5, Ljavafx/scene/input/MouseEvent;

    move-object/from16 v29, v5

    move-object/from16 v5, v29

    move-object/from16 v6, v29

    sget-object v7, Ljavafx/scene/input/MouseEvent;->DRAG_DETECTED:Ljavafx/event/EventType;

    move-object v8, v1

    .line 3043
    invoke-virtual {v8}, Ljavafx/scene/input/DragEvent;->getX()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/DragEvent;->getY()D

    move-result-wide v10

    move-object v12, v1

    .line 3044
    invoke-virtual {v12}, Ljavafx/scene/input/DragEvent;->getSceneX()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/input/DragEvent;->getScreenY()D

    move-result-wide v14

    sget-object v16, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v28, v1

    .line 3046
    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/input/DragEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v28

    invoke-direct/range {v6 .. v28}, Ljavafx/scene/input/MouseEvent;-><init>(Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZZLjavafx/scene/input/PickResult;)V

    move-object v2, v5

    .line 3048
    .local v2, "me":Ljavafx/scene/input/MouseEvent;
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/Scene$DnDGesture;->processingDragDetected()V

    .line 3050
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/DragEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/input/PickResult;->getIntersectedNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v3, v5

    .line 3052
    .local v3, "target":Ljavafx/event/EventTarget;
    move-object v5, v0

    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v3

    :goto_0
    move-object v7, v2

    :try_start_0
    invoke-direct {v5, v6, v7}, Ljavafx/scene/Scene$DnDGesture;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3055
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    if-eqz v5, :cond_0

    .line 3056
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    .line 3061
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/Scene$DnDGesture;->dragDetectedProcessed()V

    .line 3063
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    .line 3064
    invoke-virtual {v5}, Ljavafx/scene/input/Dragboard;->getContentTypes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 3065
    .local v4, "hasContent":Z
    move v5, v4

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/Scene$DnDGesture;
    return v0

    .line 3052
    .end local v4    # "hasContent":Z
    .restart local v0    # "this":Ljavafx/scene/Scene$DnDGesture;
    :cond_1
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3055
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    if-eqz v5, :cond_2

    .line 3056
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    :cond_2
    move-object v5, v4

    throw v5

    .line 3064
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private processTargetActionChanged(Ljavafx/scene/input/DragEvent;)V
    .locals 0
    .param p1, "de"    # Ljavafx/scene/input/DragEvent;

    .prologue
    .line 3132
    return-void
.end method

.method private processTargetDrop(Ljavafx/scene/input/DragEvent;)Ljavafx/scene/input/TransferMode;
    .locals 25

    .prologue
    .line 3148
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object/from16 v2, p1

    .local v2, "de":Ljavafx/scene/input/DragEvent;
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v7}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/DragEvent;->getSceneX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/DragEvent;->getSceneY()D

    move-result-wide v10

    invoke-static/range {v6 .. v11}, Ljavafx/scene/Scene;->access$6700(Ljavafx/scene/Scene;Ljavafx/scene/Scene$TargetWrapper;DD)V

    .line 3149
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v6}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Scene$TargetWrapper;->getEventTarget()Ljavafx/event/EventTarget;

    move-result-object v6

    move-object v3, v6

    .line 3151
    .local v3, "pickedTarget":Ljavafx/event/EventTarget;
    new-instance v6, Ljavafx/scene/input/DragEvent;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/DragEvent;->getSource()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v3

    sget-object v10, Ljavafx/scene/input/DragEvent;->DRAG_DROPPED:Ljavafx/event/EventType;

    move-object v11, v2

    .line 3152
    invoke-virtual {v11}, Ljavafx/scene/input/DragEvent;->getDragboard()Ljavafx/scene/input/Dragboard;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/input/DragEvent;->getSceneX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/input/DragEvent;->getSceneY()D

    move-result-wide v14

    move-object/from16 v16, v2

    .line 3153
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/input/DragEvent;->getScreenX()D

    move-result-wide v16

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/DragEvent;->getScreenY()D

    move-result-wide v18

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$DnDGesture;->acceptedTransferMode:Ljavafx/scene/input/TransferMode;

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    move-object/from16 v22, v0

    move-object/from16 v23, v2

    .line 3154
    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/input/DragEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v23

    invoke-direct/range {v7 .. v23}, Ljavafx/scene/input/DragEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    move-object v2, v6

    .line 3156
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    if-nez v6, :cond_0

    .line 3158
    new-instance v6, Ljava/lang/NullPointerException;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-string v8, "dragboard is null in processTargetDrop()"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3161
    :cond_0
    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v8}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavafx/scene/Scene$DnDGesture;->handleExitEnter(Ljavafx/scene/input/DragEvent;Ljavafx/scene/Scene$TargetWrapper;)V

    .line 3163
    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Ljavafx/scene/Scene$DnDGesture;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3165
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/DragEvent;->getAcceptingObject()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    .line 3166
    .local v4, "acceptingObject":Ljava/lang/Object;
    move-object v6, v1

    move-object v7, v4

    instance-of v7, v7, Ljavafx/event/EventTarget;

    if-eqz v7, :cond_1

    move-object v7, v4

    check-cast v7, Ljavafx/event/EventTarget;

    :goto_0
    iput-object v7, v6, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    .line 3168
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    iput-object v7, v6, Ljavafx/scene/Scene$DnDGesture;->target:Ljavafx/event/EventTarget;

    .line 3170
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/DragEvent;->isDropCompleted()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v2

    .line 3171
    invoke-virtual {v6}, Ljavafx/scene/input/DragEvent;->getAcceptedTransferMode()Ljavafx/scene/input/TransferMode;

    move-result-object v6

    :goto_1
    move-object v5, v6

    .line 3173
    .local v5, "result":Ljavafx/scene/input/TransferMode;
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v6}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Scene$TargetWrapper;->clear()V

    .line 3174
    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v8}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavafx/scene/Scene$DnDGesture;->handleExitEnter(Ljavafx/scene/input/DragEvent;Ljavafx/scene/Scene$TargetWrapper;)V

    .line 3176
    move-object v6, v5

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/Scene$DnDGesture;
    return-object v1

    .line 3166
    .end local v5    # "result":Ljavafx/scene/input/TransferMode;
    .restart local v1    # "this":Ljavafx/scene/Scene$DnDGesture;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 3171
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private processTargetEnterOver(Ljavafx/scene/input/DragEvent;)Ljavafx/scene/input/TransferMode;
    .locals 25

    .prologue
    .line 3090
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object/from16 v3, p1

    .local v3, "de":Ljavafx/scene/input/DragEvent;
    move-object v6, v2

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    move-object v7, v2

    iget-object v7, v7, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v7}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/input/DragEvent;->getSceneX()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/input/DragEvent;->getSceneY()D

    move-result-wide v10

    invoke-static/range {v6 .. v11}, Ljavafx/scene/Scene;->access$6700(Ljavafx/scene/Scene;Ljavafx/scene/Scene$TargetWrapper;DD)V

    .line 3091
    move-object v6, v2

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v6}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Scene$TargetWrapper;->getEventTarget()Ljavafx/event/EventTarget;

    move-result-object v6

    move-object v4, v6

    .line 3093
    .local v4, "pickedTarget":Ljavafx/event/EventTarget;
    move-object v6, v2

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    if-nez v6, :cond_0

    .line 3094
    move-object v6, v2

    move-object v7, v2

    move-object v8, v3

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljavafx/scene/Scene$DnDGesture;->createDragboard(Ljavafx/scene/input/DragEvent;Z)Ljavafx/scene/input/Dragboard;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    .line 3097
    :cond_0
    new-instance v6, Ljavafx/scene/input/DragEvent;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/input/DragEvent;->getSource()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v4

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/input/DragEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v10

    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    move-object v12, v3

    .line 3098
    invoke-virtual {v12}, Ljavafx/scene/input/DragEvent;->getSceneX()D

    move-result-wide v12

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/input/DragEvent;->getSceneY()D

    move-result-wide v14

    move-object/from16 v16, v3

    .line 3099
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/input/DragEvent;->getScreenX()D

    move-result-wide v16

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/DragEvent;->getScreenY()D

    move-result-wide v18

    move-object/from16 v20, v3

    .line 3100
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/DragEvent;->getTransferMode()Ljavafx/scene/input/TransferMode;

    move-result-object v20

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/input/DragEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v23

    invoke-direct/range {v7 .. v23}, Ljavafx/scene/input/DragEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    move-object v3, v6

    .line 3102
    move-object v6, v2

    move-object v7, v3

    move-object v8, v2

    iget-object v8, v8, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v8}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavafx/scene/Scene$DnDGesture;->handleExitEnter(Ljavafx/scene/input/DragEvent;Ljavafx/scene/Scene$TargetWrapper;)V

    .line 3104
    new-instance v6, Ljavafx/scene/input/DragEvent;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/input/DragEvent;->getSource()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v4

    sget-object v10, Ljavafx/scene/input/DragEvent;->DRAG_OVER:Ljavafx/event/EventType;

    move-object v11, v3

    .line 3105
    invoke-virtual {v11}, Ljavafx/scene/input/DragEvent;->getDragboard()Ljavafx/scene/input/Dragboard;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/input/DragEvent;->getSceneX()D

    move-result-wide v12

    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/input/DragEvent;->getSceneY()D

    move-result-wide v14

    move-object/from16 v16, v3

    .line 3106
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/input/DragEvent;->getScreenX()D

    move-result-wide v16

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/DragEvent;->getScreenY()D

    move-result-wide v18

    move-object/from16 v20, v3

    .line 3107
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/DragEvent;->getTransferMode()Ljavafx/scene/input/TransferMode;

    move-result-object v20

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/input/DragEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v23

    invoke-direct/range {v7 .. v23}, Ljavafx/scene/input/DragEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljavafx/scene/input/Dragboard;DDDDLjavafx/scene/input/TransferMode;Ljava/lang/Object;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)V

    move-object v3, v6

    .line 3109
    move-object v6, v2

    move-object v7, v4

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Ljavafx/scene/Scene$DnDGesture;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3111
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/input/DragEvent;->getAcceptingObject()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 3112
    .local v5, "acceptingObject":Ljava/lang/Object;
    move-object v6, v2

    move-object v7, v5

    instance-of v7, v7, Ljavafx/event/EventTarget;

    if-eqz v7, :cond_1

    move-object v7, v5

    check-cast v7, Ljavafx/event/EventTarget;

    :goto_0
    iput-object v7, v6, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    .line 3114
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/input/DragEvent;->getAcceptedTransferMode()Ljavafx/scene/input/TransferMode;

    move-result-object v7

    iput-object v7, v6, Ljavafx/scene/Scene$DnDGesture;->acceptedTransferMode:Ljavafx/scene/input/TransferMode;

    .line 3115
    move-object v6, v2

    iget-object v6, v6, Ljavafx/scene/Scene$DnDGesture;->acceptedTransferMode:Ljavafx/scene/input/TransferMode;

    move-object v2, v6

    .end local v2    # "this":Ljavafx/scene/Scene$DnDGesture;
    return-object v2

    .line 3112
    .restart local v2    # "this":Ljavafx/scene/Scene$DnDGesture;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private processTargetExit(Ljavafx/scene/input/DragEvent;)V
    .locals 6

    .prologue
    .line 3135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "de":Ljavafx/scene/input/DragEvent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    if-nez v2, :cond_0

    .line 3137
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "dragboard is null in processTargetExit()"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3140
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$DnDGesture;->currentTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3141
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    .line 3142
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Scene$TargetWrapper;->clear()V

    .line 3143
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$DnDGesture;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavafx/scene/Scene$DnDGesture;->handleExitEnter(Ljavafx/scene/input/DragEvent;Ljavafx/scene/Scene$TargetWrapper;)V

    .line 3145
    :cond_1
    return-void
.end method

.method private processingDragDetected()V
    .locals 3

    .prologue
    .line 2946
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/Scene$DragDetectedState;->PROCESSING:Ljavafx/scene/Scene$DragDetectedState;

    iput-object v2, v1, Ljavafx/scene/Scene$DnDGesture;->dragDetected:Ljavafx/scene/Scene$DragDetectedState;

    .line 2947
    return-void
.end method

.method private startDrag(Ljavafx/event/EventTarget;Ljava/util/Set;)Ljavafx/scene/input/Dragboard;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventTarget;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;)",
            "Ljavafx/scene/input/Dragboard;"
        }
    .end annotation

    .prologue
    .line 3257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "source":Ljavafx/event/EventTarget;
    move-object v2, p2

    .local v2, "t":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$DnDGesture;->dragDetected:Ljavafx/scene/Scene$DragDetectedState;

    sget-object v4, Ljavafx/scene/Scene$DragDetectedState;->PROCESSING:Ljavafx/scene/Scene$DragDetectedState;

    if-eq v3, v4, :cond_0

    .line 3258
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Cannot start drag and drop outside of DRAG_DETECTED event handler"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3262
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3263
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    .line 3269
    :cond_1
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDataAccessRestriction(Ljavafx/scene/input/Dragboard;Z)V

    .line 3271
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->source:Ljavafx/event/EventTarget;

    .line 3272
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->potentialTarget:Ljavafx/event/EventTarget;

    .line 3273
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->sourceTransferModes:Ljava/util/Set;

    .line 3274
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Scene$DnDGesture;
    return-object v0

    .line 3264
    .restart local v0    # "this":Ljavafx/scene/Scene$DnDGesture;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    if-nez v3, :cond_1

    .line 3265
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/Scene$DnDGesture;->createDragboard(Ljavafx/scene/input/DragEvent;Z)Ljavafx/scene/input/Dragboard;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/Scene$DnDGesture;->dragboard:Ljavafx/scene/input/Dragboard;

    goto :goto_0
.end method

.method private startFullPDR(Ljavafx/event/EventTarget;)V
    .locals 4

    .prologue
    .line 3281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$DnDGesture;
    move-object v1, p1

    .local v1, "source":Ljavafx/event/EventTarget;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$DnDGesture;->fullPDRSource:Ljavafx/event/EventTarget;

    .line 3282
    return-void
.end method
