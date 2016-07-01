.class final Ljavafx/concurrent/Task$TaskCallable;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/concurrent/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TaskCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private task:Ljavafx/concurrent/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/concurrent/Task",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1398
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task$TaskCallable;, "Ljavafx/concurrent/Task$TaskCallable<TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/concurrent/Task$1;)V
    .locals 3

    .prologue
    .line 1388
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task$TaskCallable;, "Ljavafx/concurrent/Task$TaskCallable<TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/concurrent/Task$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/concurrent/Task$TaskCallable;-><init>()V

    return-void
.end method

.method static synthetic access$102(Ljavafx/concurrent/Task$TaskCallable;Ljavafx/concurrent/Task;)Ljavafx/concurrent/Task;
    .locals 7

    .prologue
    .line 1388
    move-object v0, p0

    .local v0, "x0":Ljavafx/concurrent/Task$TaskCallable;
    move-object v1, p1

    .local v1, "x1":Ljavafx/concurrent/Task;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/concurrent/Task$TaskCallable;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/concurrent/Task$TaskCallable;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/concurrent/Task$TaskCallable;->lambda$call$483()V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/concurrent/Task$TaskCallable;Ljava/lang/Object;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/concurrent/Task$TaskCallable;->lambda$call$484(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/concurrent/Task$TaskCallable;Ljava/lang/Throwable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/concurrent/Task$TaskCallable;->lambda$call$485(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$call$483()V
    .locals 3

    .prologue
    .line 1418
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task$TaskCallable;, "Ljavafx/concurrent/Task$TaskCallable<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    sget-object v2, Ljavafx/concurrent/Worker$State;->SCHEDULED:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v1, v2}, Ljavafx/concurrent/Task;->setState(Ljavafx/concurrent/Worker$State;)V

    .line 1419
    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    sget-object v2, Ljavafx/concurrent/Worker$State;->RUNNING:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v1, v2}, Ljavafx/concurrent/Task;->setState(Ljavafx/concurrent/Worker$State;)V

    .line 1420
    return-void
.end method

.method private synthetic lambda$call$484(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1433
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task$TaskCallable;, "Ljavafx/concurrent/Task$TaskCallable<TV;>;"
    move-object v1, p1

    .local v1, "result":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/concurrent/Task;->updateValue(Ljava/lang/Object;)V

    .line 1434
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    sget-object v3, Ljavafx/concurrent/Worker$State;->SUCCEEDED:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v2, v3}, Ljavafx/concurrent/Task;->setState(Ljavafx/concurrent/Worker$State;)V

    .line 1435
    return-void
.end method

.method private synthetic lambda$call$485(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 1452
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task$TaskCallable;, "Ljavafx/concurrent/Task$TaskCallable<TV;>;"
    move-object v1, p1

    .local v1, "th":Ljava/lang/Throwable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/concurrent/Task;->access$800(Ljavafx/concurrent/Task;Ljava/lang/Throwable;)V

    .line 1453
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    sget-object v3, Ljavafx/concurrent/Worker$State;->FAILED:Ljavafx/concurrent/Worker$State;

    invoke-virtual {v2, v3}, Ljavafx/concurrent/Task;->setState(Ljavafx/concurrent/Worker$State;)V

    .line 1454
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1416
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Task$TaskCallable;, "Ljavafx/concurrent/Task$TaskCallable<TV;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljavafx/concurrent/Task;->access$702(Ljavafx/concurrent/Task;Z)Z

    move-result v2

    .line 1417
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    move-object v3, v0

    invoke-static {v3}, Ljavafx/concurrent/Task$TaskCallable$$Lambda$1;->lambdaFactory$(Ljavafx/concurrent/Task$TaskCallable;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/concurrent/Task;->runLater(Ljava/lang/Runnable;)V

    .line 1423
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->call()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 1424
    .local v1, "result":Ljava/lang/Object;, "TV;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    invoke-virtual {v2}, Ljavafx/concurrent/Task;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1427
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/concurrent/Task$TaskCallable$$Lambda$2;->lambdaFactory$(Ljavafx/concurrent/Task$TaskCallable;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/concurrent/Task;->runLater(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1436
    move-object v2, v1

    move-object v0, v2

    .line 1440
    .end local v0    # "this":Ljavafx/concurrent/Task$TaskCallable;, "Ljavafx/concurrent/Task$TaskCallable<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/concurrent/Task$TaskCallable;, "Ljavafx/concurrent/Task$TaskCallable<TV;>;"
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 1442
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1451
    .local v1, "th":Ljava/lang/Throwable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/concurrent/Task$TaskCallable;->task:Ljavafx/concurrent/Task;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/concurrent/Task$TaskCallable$$Lambda$3;->lambdaFactory$(Ljavafx/concurrent/Task$TaskCallable;Ljava/lang/Throwable;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/concurrent/Task;->runLater(Ljava/lang/Runnable;)V

    .line 1462
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 1463
    move-object v2, v1

    check-cast v2, Ljava/lang/Exception;

    throw v2

    .line 1465
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
