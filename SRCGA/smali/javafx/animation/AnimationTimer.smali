.class public abstract Ljavafx/animation/AnimationTimer;
.super Ljava/lang/Object;
.source "AnimationTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;
    }
.end annotation


# instance fields
.field private accessCtrlCtx:Ljava/security/AccessControlContext;

.field private active:Z

.field private final timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

.field private final timerReceiver:Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationTimer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v1, v0

    new-instance v2, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;-><init>(Ljavafx/animation/AnimationTimer;Ljavafx/animation/AnimationTimer$1;)V

    iput-object v2, v1, Ljavafx/animation/AnimationTimer;->timerReceiver:Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    .line 68
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/animation/AnimationTimer;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 74
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v2

    iput-object v2, v1, Ljavafx/animation/AnimationTimer;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/sun/scenario/animation/AbstractMasterTimer;)V
    .locals 8

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationTimer;
    move-object v1, p1

    .local v1, "timer":Lcom/sun/scenario/animation/AbstractMasterTimer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v2, v0

    new-instance v3, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;-><init>(Ljavafx/animation/AnimationTimer;Ljavafx/animation/AnimationTimer$1;)V

    iput-object v3, v2, Ljavafx/animation/AnimationTimer;->timerReceiver:Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    .line 68
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/animation/AnimationTimer;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 79
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/AnimationTimer;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    .line 80
    return-void
.end method

.method static synthetic access$000(Ljavafx/animation/AnimationTimer;)Ljava/security/AccessControlContext;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "x0":Ljavafx/animation/AnimationTimer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/AnimationTimer;->accessCtrlCtx:Ljava/security/AccessControlContext;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/animation/AnimationTimer;
    return-object v0
.end method


# virtual methods
.method public abstract handle(J)V
.end method

.method public start()V
    .locals 3

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationTimer;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/animation/AnimationTimer;->active:Z

    if-nez v1, :cond_0

    .line 103
    move-object v1, v0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v2

    iput-object v2, v1, Ljavafx/animation/AnimationTimer;->accessCtrlCtx:Ljava/security/AccessControlContext;

    .line 104
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/AnimationTimer;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/AnimationTimer;->timerReceiver:Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    invoke-virtual {v1, v2}, Lcom/sun/scenario/animation/AbstractMasterTimer;->addAnimationTimer(Lcom/sun/scenario/animation/shared/TimerReceiver;)V

    .line 105
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/animation/AnimationTimer;->active:Z

    .line 107
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationTimer;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/animation/AnimationTimer;->active:Z

    if-eqz v1, :cond_0

    .line 115
    move-object v1, v0

    iget-object v1, v1, Ljavafx/animation/AnimationTimer;->timer:Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/animation/AnimationTimer;->timerReceiver:Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;

    invoke-virtual {v1, v2}, Lcom/sun/scenario/animation/AbstractMasterTimer;->removeAnimationTimer(Lcom/sun/scenario/animation/shared/TimerReceiver;)V

    .line 116
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/animation/AnimationTimer;->active:Z

    .line 118
    :cond_0
    return-void
.end method
