.class final Ljava/util/concurrent/CompletableFuture$ThenRun;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThenRun"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field final dst:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;

.field final fn:Ljava/lang/Runnable;

.field final src:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 786
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenRun;
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v2, p2

    .local v2, "fn":Ljava/lang/Runnable;
    move-object v3, p3

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    move-object v4, p4

    .local v4, "executor":Ljava/util/concurrent/Executor;
    move-object v5, v0

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 787
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenRun;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenRun;->fn:Ljava/lang/Runnable;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenRun;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 788
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenRun;->executor:Ljava/util/concurrent/Executor;

    .line 789
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    .line 795
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenRun;
    move-object v8, v0

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture$ThenRun;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v3, v9

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture$ThenRun;->fn:Ljava/lang/Runnable;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v2, v9

    .local v2, "fn":Ljava/lang/Runnable;
    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture$ThenRun;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v1, v9

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v8, :cond_2

    move-object v8, v1

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v4, v9

    .local v4, "r":Ljava/lang/Object;
    if-eqz v8, :cond_2

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 799
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/CompletableFuture$ThenRun;->compareAndSet(II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 800
    move-object v8, v4

    instance-of v8, v8, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v8, :cond_3

    .line 801
    move-object v8, v4

    check-cast v8, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v5, v8

    .line 804
    .local v5, "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture$ThenRun;->executor:Ljava/util/concurrent/Executor;

    move-object v6, v8

    .line 805
    .local v6, "e":Ljava/util/concurrent/Executor;
    move-object v8, v5

    if-nez v8, :cond_0

    .line 807
    move-object v8, v6

    if-eqz v8, :cond_4

    .line 808
    move-object v8, v6

    :try_start_0
    new-instance v9, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v8, v9}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    .line 815
    :cond_0
    :goto_1
    move-object v8, v6

    if-eqz v8, :cond_1

    move-object v8, v5

    if-eqz v8, :cond_2

    .line 816
    :cond_1
    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 818
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v2    # "fn":Ljava/lang/Runnable;
    .end local v4    # "r":Ljava/lang/Object;
    .end local v5    # "ex":Ljava/lang/Throwable;
    .end local v6    # "e":Ljava/util/concurrent/Executor;
    :cond_2
    return-void

    .line 803
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .restart local v2    # "fn":Ljava/lang/Runnable;
    .restart local v4    # "r":Ljava/lang/Object;
    :cond_3
    const/4 v8, 0x0

    move-object v5, v8

    .restart local v5    # "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 810
    .restart local v6    # "e":Ljava/util/concurrent/Executor;
    :cond_4
    move-object v8, v2

    :try_start_1
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 811
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 812
    .local v7, "rex":Ljava/lang/Throwable;
    move-object v8, v7

    move-object v5, v8

    goto :goto_1
.end method
