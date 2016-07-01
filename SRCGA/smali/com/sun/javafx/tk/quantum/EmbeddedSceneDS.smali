.class final Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
.super Ljava/lang/Object;
.source "EmbeddedSceneDS.java"

# interfaces
.implements Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final assistant:Lcom/sun/glass/ui/ClipboardAssistance;

.field private final dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

.field private final dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;Lcom/sun/glass/ui/ClipboardAssistance;Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;)V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    move-object v1, p1

    .local v1, "dnd":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;
    move-object v2, p2

    .local v2, "assistant":Lcom/sun/glass/ui/ClipboardAssistance;
    move-object v3, p3

    .local v3, "dndHandler":Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    .line 46
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 47
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    .line 48
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;)Ljava/util/Set;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->lambda$getSupportedActions$295()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->lambda$getData$296(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;)[Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->lambda$getMimeTypes$297()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->lambda$isMimeTypeAvailable$298(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljavafx/scene/input/TransferMode;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->lambda$dragDropEnd$299(Ljavafx/scene/input/TransferMode;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private synthetic lambda$dragDropEnd$299(Ljavafx/scene/input/TransferMode;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    move-object v1, p1

    .local v1, "performedAction":Ljavafx/scene/input/TransferMode;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dndHandler:Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassSceneDnDEventHandler;->handleDragEnd(Ljavafx/scene/input/TransferMode;Lcom/sun/glass/ui/ClipboardAssistance;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->onDragSourceReleased(Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;)V

    .line 83
    .line 84
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    return-object v0

    .line 82
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->onDragSourceReleased(Lcom/sun/javafx/embed/EmbeddedSceneDSInterface;)V

    move-object v3, v2

    throw v3
.end method

.method private synthetic lambda$getData$296(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/ClipboardAssistance;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    return-object v0
.end method

.method private synthetic lambda$getMimeTypes$297()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v1}, Lcom/sun/glass/ui/ClipboardAssistance;->getMimeTypes()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    return-object v0
.end method

.method private synthetic lambda$getSupportedActions$295()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    .line 54
    invoke-virtual {v1}, Lcom/sun/glass/ui/ClipboardAssistance;->getSupportedSourceActions()I

    move-result v1

    .line 53
    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->clipboardActionsToTransferModes(I)Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    return-object v0
.end method

.method private synthetic lambda$isMimeTypeAvailable$298(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->assistant:Lcom/sun/glass/ui/ClipboardAssistance;

    invoke-virtual {v2}, Lcom/sun/glass/ui/ClipboardAssistance;->getMimeTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    return-object v0
.end method


# virtual methods
.method public dragDropEnd(Ljavafx/scene/input/TransferMode;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    move-object v1, p1

    .local v1, "performedAction":Ljavafx/scene/input/TransferMode;
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->isHostThread()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 78
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljavafx/scene/input/TransferMode;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->executeOnFXThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    .line 86
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->isHostThread()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 60
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->executeOnFXThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    return-object v0
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->isHostThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 66
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->executeOnFXThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    return-object v0
.end method

.method public getSupportedActions()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->isHostThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 53
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->executeOnFXThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    return-object v0
.end method

.method public isMimeTypeAvailable(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    move-object v1, p1

    .local v1, "mimeType":Ljava/lang/String;
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->isHostThread()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 72
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;->dnd:Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->executeOnFXThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedSceneDS;
    return v0
.end method
