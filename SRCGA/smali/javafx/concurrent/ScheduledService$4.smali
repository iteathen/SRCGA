.class Ljavafx/concurrent/ScheduledService$4;
.super Ljava/util/TimerTask;
.source "ScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/concurrent/ScheduledService;->createTimerTask(Ljavafx/concurrent/Task;)Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/concurrent/ScheduledService;

.field final synthetic val$task:Ljavafx/concurrent/Task;


# direct methods
.method constructor <init>(Ljavafx/concurrent/ScheduledService;Ljavafx/concurrent/Task;)V
    .locals 5

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService$4;, "Ljavafx/concurrent/ScheduledService$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/concurrent/ScheduledService;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/concurrent/ScheduledService$4;->this$0:Ljavafx/concurrent/ScheduledService;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/concurrent/ScheduledService$4;->val$task:Ljavafx/concurrent/Task;

    move-object v3, v0

    invoke-direct {v3}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/concurrent/ScheduledService$4;Ljavafx/concurrent/Task;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/concurrent/ScheduledService$4;->lambda$run$478(Ljavafx/concurrent/Task;)V

    return-void
.end method

.method private synthetic lambda$run$478(Ljavafx/concurrent/Task;)V
    .locals 4

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService$4;, "Ljavafx/concurrent/ScheduledService$4;"
    move-object v1, p1

    .local v1, "task":Ljavafx/concurrent/Task;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService$4;->this$0:Ljavafx/concurrent/ScheduledService;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/concurrent/ScheduledService;->access$000(Ljavafx/concurrent/ScheduledService;Ljavafx/concurrent/Task;)V

    .line 524
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService$4;->this$0:Ljavafx/concurrent/ScheduledService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavafx/concurrent/ScheduledService;->access$102(Ljavafx/concurrent/ScheduledService;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    move-result-object v2

    .line 525
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/ScheduledService$4;, "Ljavafx/concurrent/ScheduledService$4;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/concurrent/ScheduledService$4;->val$task:Ljavafx/concurrent/Task;

    invoke-static {v2, v3}, Ljavafx/concurrent/ScheduledService$4$$Lambda$1;->lambdaFactory$(Ljavafx/concurrent/ScheduledService$4;Ljavafx/concurrent/Task;)Ljava/lang/Runnable;

    move-result-object v2

    move-object v1, v2

    .line 531
    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService$4;->this$0:Ljavafx/concurrent/ScheduledService;

    invoke-virtual {v2}, Ljavafx/concurrent/ScheduledService;->isFxApplicationThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    move-object v2, v1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/ScheduledService$4;->this$0:Ljavafx/concurrent/ScheduledService;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/ScheduledService;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
