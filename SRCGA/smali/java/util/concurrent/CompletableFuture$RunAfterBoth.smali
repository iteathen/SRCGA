.class final Ljava/util/concurrent/CompletableFuture$RunAfterBoth;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunAfterBoth"
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

.field final snd:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation
.end field

.field final src:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
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
    .line 963
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$RunAfterBoth;
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v2, p2

    .local v2, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v3, p3

    .local v3, "fn":Ljava/lang/Runnable;
    move-object v4, p4

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    move-object v5, p5

    .local v5, "executor":Ljava/util/concurrent/Executor;
    move-object v6, v0

    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 964
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->snd:Ljava/util/concurrent/CompletableFuture;

    .line 965
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->fn:Ljava/lang/Runnable;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 966
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->executor:Ljava/util/concurrent/Executor;

    .line 967
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .prologue
    .line 974
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$RunAfterBoth;
    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v4, v11

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->fn:Ljava/lang/Runnable;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v3, v11

    .local v3, "fn":Ljava/lang/Runnable;
    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v1, v11

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v10, :cond_3

    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v5, v11

    .local v5, "r":Ljava/lang/Object;
    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v2, v11

    .local v2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v10, :cond_3

    move-object v10, v2

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v6, v11

    .local v6, "s":Ljava/lang/Object;
    if-eqz v10, :cond_3

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 980
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->compareAndSet(II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 981
    move-object v10, v5

    instance-of v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v10, :cond_4

    .line 982
    move-object v10, v5

    check-cast v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v7, v10

    .line 985
    .local v7, "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v10, v7

    if-nez v10, :cond_0

    move-object v10, v6

    instance-of v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v10, :cond_0

    .line 986
    move-object v10, v6

    check-cast v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v7, v10

    .line 987
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->executor:Ljava/util/concurrent/Executor;

    move-object v8, v10

    .line 988
    .local v8, "e":Ljava/util/concurrent/Executor;
    move-object v10, v7

    if-nez v10, :cond_1

    .line 990
    move-object v10, v8

    if-eqz v10, :cond_5

    .line 991
    move-object v10, v8

    :try_start_0
    new-instance v11, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v3

    move-object v14, v4

    invoke-direct {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v10, v11}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    .line 998
    :cond_1
    :goto_1
    move-object v10, v8

    if-eqz v10, :cond_2

    move-object v10, v7

    if-eqz v10, :cond_3

    .line 999
    :cond_2
    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1001
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v2    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v3    # "fn":Ljava/lang/Runnable;
    .end local v5    # "r":Ljava/lang/Object;
    .end local v6    # "s":Ljava/lang/Object;
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v8    # "e":Ljava/util/concurrent/Executor;
    :cond_3
    return-void

    .line 984
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .restart local v2    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .restart local v3    # "fn":Ljava/lang/Runnable;
    .restart local v5    # "r":Ljava/lang/Object;
    .restart local v6    # "s":Ljava/lang/Object;
    :cond_4
    const/4 v10, 0x0

    move-object v7, v10

    .restart local v7    # "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 993
    .restart local v8    # "e":Ljava/util/concurrent/Executor;
    :cond_5
    move-object v10, v3

    :try_start_1
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 994
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 995
    .local v9, "rex":Ljava/lang/Throwable;
    move-object v10, v9

    move-object v7, v10

    goto :goto_1
.end method
