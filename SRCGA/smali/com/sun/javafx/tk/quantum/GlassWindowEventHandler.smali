.class Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
.super Lcom/sun/glass/ui/Window$EventHandler;
.source "GlassWindowEventHandler.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/glass/ui/Window$EventHandler;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final stage:Lcom/sun/javafx/tk/quantum/WindowStage;

.field private type:I

.field private window:Lcom/sun/glass/ui/Window;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/tk/quantum/WindowStage;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move-object v1, p1

    .local v1, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/Window$EventHandler;-><init>()V

    .line 48
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    .line 49
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->lambda$run$404()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;I)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->lambda$handleLevelEvent$406(I)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->lambda$handleWindowEvent$407()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->lambda$handleScreenChangedEvent$408(Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)Ljava/lang/Void;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->lambda$handleScreenChangedEvent$410(Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)Ljava/lang/Void;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)Ljava/lang/Void;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->lambda$null$409(Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)Ljava/lang/Void;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;I)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->lambda$null$405(I)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private synthetic lambda$handleLevelEvent$406(I)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move v1, p1

    .local v1, "level":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v3

    move-object v2, v3

    .line 136
    .local v2, "acc":Ljava/security/AccessControlContext;
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;I)Ljava/security/PrivilegedAction;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Void;

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    return-object v0
.end method

.method private static synthetic lambda$handleScreenChangedEvent$408(Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "scene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneNeedsRepaint()V

    .line 160
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassScene;->updateSceneState()V

    .line 161
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "scene":Lcom/sun/javafx/tk/quantum/GlassScene;
    return-object v0
.end method

.method private synthetic lambda$handleScreenChangedEvent$410(Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move-object v1, p1

    .local v1, "oldScreen":Lcom/sun/glass/ui/Screen;
    move-object v2, p2

    .local v2, "newScreen":Lcom/sun/glass/ui/Screen;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/WindowStage;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v4

    move-object v3, v4

    .line 167
    .local v3, "acc":Ljava/security/AccessControlContext;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)Ljava/security/PrivilegedAction;

    move-result-object v4

    move-object v5, v3

    invoke-static {v4, v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Void;

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    return-object v0
.end method

.method private synthetic lambda$handleWindowEvent$407()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v2

    move-object v1, v2

    .line 150
    .local v1, "acc":Ljava/security/AccessControlContext;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Void;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    return-object v0
.end method

.method private synthetic lambda$null$405(I)Ljava/lang/Void;
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move v1, p1

    .local v1, "level":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    move v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKStageListener;->changedAlwaysOnTop(Z)V

    .line 138
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    return-object v0

    .line 137
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$null$409(Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move-object v1, p1

    .local v1, "oldScreen":Lcom/sun/glass/ui/Screen;
    move-object v2, p2

    .local v2, "newScreen":Lcom/sun/glass/ui/Screen;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/tk/TKStageListener;->changedScreen(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    return-object v0
.end method

.method private synthetic lambda$run$404()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v2

    move-object v1, v2

    .line 81
    .local v1, "scene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 82
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->updateSceneState()V

    .line 84
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    return-object v0
.end method


# virtual methods
.method public handleLevelEvent(I)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move v1, p1

    .local v1, "level":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;I)Ljava/util/function/Supplier;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    return-void
.end method

.method public handleScreenChangedEvent(Lcom/sun/glass/ui/Window;JLcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)V
    .locals 10

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/Window;
    move-wide v2, p2

    .local v2, "time":J
    move-object v4, p4

    .local v4, "oldScreen":Lcom/sun/glass/ui/Screen;
    move-object v5, p5

    .local v5, "newScreen":Lcom/sun/glass/ui/Screen;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v7

    move-object v6, v7

    .line 157
    .local v6, "scene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 158
    move-object v7, v6

    invoke-static {v7}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/util/function/Supplier;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v7

    .line 165
    :cond_0
    move-object v7, v0

    move-object v8, v4

    move-object v9, v5

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;Lcom/sun/glass/ui/Screen;Lcom/sun/glass/ui/Screen;)Ljava/util/function/Supplier;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v7

    .line 172
    return-void
.end method

.method public handleWindowEvent(Lcom/sun/glass/ui/Window;JI)V
    .locals 8

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/Window;
    move-wide v2, p2

    .local v2, "time":J
    move v4, p4

    .local v4, "type":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->window:Lcom/sun/glass/ui/Window;

    .line 146
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->type:I

    .line 148
    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;)Ljava/util/function/Supplier;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v5

    .line 152
    return-void
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->run()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 14

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    if-nez v9, :cond_1

    .line 54
    :cond_0
    const/4 v9, 0x0

    move-object v0, v9

    .line 129
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    :goto_0
    return-object v0

    .line 56
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;
    :cond_1
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->type:I

    sparse-switch v9, :sswitch_data_0

    .line 124
    sget-boolean v9, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v9, :cond_2

    .line 125
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GlassWindowEventHandler: unknown type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    :cond_2
    :goto_1
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    .line 58
    :sswitch_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sun/javafx/tk/TKStageListener;->changedIconified(Z)V

    .line 59
    goto :goto_1

    .line 61
    :sswitch_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/sun/javafx/tk/TKStageListener;->changedMaximized(Z)V

    .line 62
    goto :goto_1

    .line 64
    :sswitch_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/sun/javafx/tk/TKStageListener;->changedIconified(Z)V

    .line 65
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/sun/javafx/tk/TKStageListener;->changedMaximized(Z)V

    .line 66
    goto :goto_1

    .line 68
    :sswitch_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v9}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v9

    move v1, v9

    .line 69
    .local v1, "pScale":F
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v9}, Lcom/sun/glass/ui/Window;->getScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v9

    move-object v2, v9

    .line 70
    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move-object v9, v2

    if-nez v9, :cond_3

    const/4 v9, 0x0

    :goto_2
    move v3, v9

    .line 71
    .local v3, "sx":F
    move-object v9, v2

    if-nez v9, :cond_4

    const/4 v9, 0x0

    :goto_3
    move v4, v9

    .line 72
    .local v4, "sy":F
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v9}, Lcom/sun/glass/ui/Window;->getX()I

    move-result v9

    int-to-float v9, v9

    move v5, v9

    .line 73
    .local v5, "wx":F
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v9}, Lcom/sun/glass/ui/Window;->getY()I

    move-result v9

    int-to-float v9, v9

    move v6, v9

    .line 74
    .local v6, "wy":F
    move v9, v3

    move v10, v5

    move v11, v3

    sub-float/2addr v10, v11

    move v11, v1

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    move v7, v9

    .line 75
    .local v7, "newx":F
    move v9, v4

    move v10, v6

    move v11, v4

    sub-float/2addr v10, v11

    move v11, v1

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    move v8, v9

    .line 76
    .local v8, "newy":F
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    move v10, v7

    move v11, v8

    invoke-interface {v9, v10, v11}, Lcom/sun/javafx/tk/TKStageListener;->changedLocation(FF)V

    .line 78
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/glass/ui/Application;->hasWindowManager()Z

    move-result v9

    if-nez v9, :cond_2

    .line 79
    move-object v9, v0

    invoke-static {v9}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;)Ljava/util/function/Supplier;

    move-result-object v9

    invoke-static {v9}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_1

    .line 70
    .end local v3    # "sx":F
    .end local v4    # "sy":F
    .end local v5    # "wx":F
    .end local v6    # "wy":F
    .end local v7    # "newx":F
    .end local v8    # "newy":F
    :cond_3
    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/glass/ui/Screen;->getX()I

    move-result v9

    int-to-float v9, v9

    goto :goto_2

    .line 71
    .restart local v3    # "sx":F
    :cond_4
    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/glass/ui/Screen;->getY()I

    move-result v9

    int-to-float v9, v9

    goto :goto_3

    .line 90
    .end local v1    # "pScale":F
    .end local v2    # "screen":Lcom/sun/glass/ui/Screen;
    .end local v3    # "sx":F
    :sswitch_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v9}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v9

    move v1, v9

    .line 91
    .restart local v1    # "pScale":F
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->window:Lcom/sun/glass/ui/Window;

    invoke-virtual {v10}, Lcom/sun/glass/ui/Window;->getWidth()I

    move-result v10

    int-to-float v10, v10

    move v11, v1

    div-float/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->window:Lcom/sun/glass/ui/Window;

    .line 92
    invoke-virtual {v11}, Lcom/sun/glass/ui/Window;->getHeight()I

    move-result v11

    int-to-float v11, v11

    move v12, v1

    div-float/2addr v11, v12

    .line 91
    invoke-interface {v9, v10, v11}, Lcom/sun/javafx/tk/TKStageListener;->changedSize(FF)V

    .line 93
    goto/16 :goto_1

    .line 96
    .end local v1    # "pScale":F
    :sswitch_5
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-static {v9}, Lcom/sun/javafx/tk/quantum/WindowStage;->addActiveWindow(Lcom/sun/javafx/tk/quantum/WindowStage;)V

    .line 97
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    const/4 v10, 0x1

    sget-object v11, Lcom/sun/javafx/tk/FocusCause;->ACTIVATED:Lcom/sun/javafx/tk/FocusCause;

    invoke-interface {v9, v10, v11}, Lcom/sun/javafx/tk/TKStageListener;->changedFocused(ZLcom/sun/javafx/tk/FocusCause;)V

    .line 98
    goto/16 :goto_1

    .line 100
    :sswitch_6
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    const/4 v10, 0x0

    sget-object v11, Lcom/sun/javafx/tk/FocusCause;->DEACTIVATED:Lcom/sun/javafx/tk/FocusCause;

    invoke-interface {v9, v10, v11}, Lcom/sun/javafx/tk/TKStageListener;->changedFocused(ZLcom/sun/javafx/tk/FocusCause;)V

    .line 101
    goto/16 :goto_1

    .line 103
    :sswitch_7
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    invoke-interface {v9}, Lcom/sun/javafx/tk/TKStageListener;->focusUngrab()V

    .line 104
    goto/16 :goto_1

    .line 106
    :sswitch_8
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-static {v9}, Lcom/sun/javafx/tk/quantum/WindowStage;->addActiveWindow(Lcom/sun/javafx/tk/quantum/WindowStage;)V

    .line 107
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    const/4 v10, 0x1

    sget-object v11, Lcom/sun/javafx/tk/FocusCause;->TRAVERSED_FORWARD:Lcom/sun/javafx/tk/FocusCause;

    invoke-interface {v9, v10, v11}, Lcom/sun/javafx/tk/TKStageListener;->changedFocused(ZLcom/sun/javafx/tk/FocusCause;)V

    .line 108
    goto/16 :goto_1

    .line 110
    :sswitch_9
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-static {v9}, Lcom/sun/javafx/tk/quantum/WindowStage;->addActiveWindow(Lcom/sun/javafx/tk/quantum/WindowStage;)V

    .line 111
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    const/4 v10, 0x1

    sget-object v11, Lcom/sun/javafx/tk/FocusCause;->TRAVERSED_BACKWARD:Lcom/sun/javafx/tk/FocusCause;

    invoke-interface {v9, v10, v11}, Lcom/sun/javafx/tk/TKStageListener;->changedFocused(ZLcom/sun/javafx/tk/FocusCause;)V

    .line 112
    goto/16 :goto_1

    .line 114
    :sswitch_a
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/WindowStage;->handleFocusDisabled()V

    .line 115
    goto/16 :goto_1

    .line 117
    :sswitch_b
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-virtual {v9}, Lcom/sun/javafx/tk/quantum/WindowStage;->setPlatformWindowClosed()V

    .line 118
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    invoke-interface {v9}, Lcom/sun/javafx/tk/TKStageListener;->closed()V

    .line 119
    goto/16 :goto_1

    .line 121
    :sswitch_c
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;->stage:Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    invoke-interface {v9}, Lcom/sun/javafx/tk/TKStageListener;->closing()V

    .line 122
    goto/16 :goto_1

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x1ff -> :sswitch_4
        0x200 -> :sswitch_3
        0x209 -> :sswitch_c
        0x20a -> :sswitch_b
        0x213 -> :sswitch_0
        0x214 -> :sswitch_1
        0x215 -> :sswitch_2
        0x21d -> :sswitch_6
        0x21e -> :sswitch_5
        0x21f -> :sswitch_8
        0x220 -> :sswitch_9
        0x221 -> :sswitch_a
        0x222 -> :sswitch_7
    .end sparse-switch
.end method
