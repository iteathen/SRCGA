.class Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;
.super Ljava/lang/Object;
.source "InvokeLaterDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/InvokeLaterDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Future"
.end annotation


# instance fields
.field private done:Z

.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;


# direct methods
.method public constructor <init>(Lcom/sun/glass/ui/InvokeLaterDispatcher;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;
    move-object v1, p1

    move-object v2, p2

    .local v2, "r":Ljava/lang/Runnable;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->done:Z

    .line 81
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->runnable:Ljava/lang/Runnable;

    .line 82
    return-void
.end method


# virtual methods
.method public isDone()Z
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->done:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;
    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->runnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-static {v6}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->access$000(Lcom/sun/glass/ui/InvokeLaterDispatcher;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v1, v7

    monitor-enter v6

    .line 98
    move-object v6, v0

    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->done:Z

    .line 99
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-static {v6}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->access$000(Lcom/sun/glass/ui/InvokeLaterDispatcher;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 100
    move-object v6, v1

    monitor-exit v6

    .line 101
    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v6

    move-object v2, v6

    move-object v6, v1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v2

    throw v6

    .line 97
    :catchall_1
    move-exception v6

    move-object v3, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-static {v6}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->access$000(Lcom/sun/glass/ui/InvokeLaterDispatcher;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v4, v7

    monitor-enter v6

    .line 98
    move-object v6, v0

    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->done:Z

    .line 99
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/InvokeLaterDispatcher$Future;->this$0:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-static {v6}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->access$000(Lcom/sun/glass/ui/InvokeLaterDispatcher;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 100
    move-object v6, v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v6, v3

    throw v6

    :catchall_2
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v5

    throw v6
.end method
