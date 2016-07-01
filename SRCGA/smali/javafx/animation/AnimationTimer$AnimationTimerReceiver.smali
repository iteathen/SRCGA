.class Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;
.super Ljava/lang/Object;
.source "AnimationTimer.java"

# interfaces
.implements Lcom/sun/scenario/animation/shared/TimerReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/animation/AnimationTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationTimerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/animation/AnimationTimer;


# direct methods
.method private constructor <init>(Ljavafx/animation/AnimationTimer;)V
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;->this$0:Ljavafx/animation/AnimationTimer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/animation/AnimationTimer;Ljavafx/animation/AnimationTimer$1;)V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;
    move-object v1, p1

    .local v1, "x0":Ljavafx/animation/AnimationTimer;
    move-object v2, p2

    .local v2, "x1":Ljavafx/animation/AnimationTimer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;-><init>(Ljavafx/animation/AnimationTimer;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;J)Ljava/lang/Void;
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;->lambda$handle$468(J)Ljava/lang/Void;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private synthetic lambda$handle$468(J)Ljava/lang/Void;
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;
    move-wide v1, p1

    .local v1, "now":J
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;->this$0:Ljavafx/animation/AnimationTimer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/animation/AnimationTimer;->handle(J)V

    .line 58
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;
    return-object v0
.end method


# virtual methods
.method public handle(J)V
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;
    move-wide v1, p1

    .local v1, "now":J
    move-object v3, v0

    iget-object v3, v3, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;->this$0:Ljavafx/animation/AnimationTimer;

    invoke-static {v3}, Ljavafx/animation/AnimationTimer;->access$000(Ljavafx/animation/AnimationTimer;)Ljava/security/AccessControlContext;

    move-result-object v3

    if-nez v3, :cond_0

    .line 53
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Error: AccessControlContext not captured"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver$$Lambda$1;->lambdaFactory$(Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;J)Ljava/security/PrivilegedAction;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/animation/AnimationTimer$AnimationTimerReceiver;->this$0:Ljavafx/animation/AnimationTimer;

    .line 59
    invoke-static {v4}, Ljavafx/animation/AnimationTimer;->access$000(Ljavafx/animation/AnimationTimer;)Ljava/security/AccessControlContext;

    move-result-object v4

    .line 56
    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    return-void
.end method
