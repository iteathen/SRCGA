.class final Ljava/util/concurrent/CompletableFuture$RunAfterEither;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunAfterEither"
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
    .line 1154
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$RunAfterEither;
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

    .line 1155
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->snd:Ljava/util/concurrent/CompletableFuture;

    .line 1156
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->fn:Ljava/lang/Runnable;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 1157
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->executor:Ljava/util/concurrent/Executor;

    .line 1158
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    .line 1165
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$RunAfterEither;
    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v4, v10

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->fn:Ljava/lang/Runnable;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v3, v10

    .local v3, "fn":Ljava/lang/Runnable;
    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v1, v10

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v9, :cond_0

    move-object v9, v1

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    .local v5, "r":Ljava/lang/Object;
    if-nez v9, :cond_1

    .end local v5    # "r":Ljava/lang/Object;
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v2, v10

    .local v2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v9, :cond_4

    move-object v9, v2

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    .restart local v5    # "r":Ljava/lang/Object;
    if-eqz v9, :cond_4

    .end local v2    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_1
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1169
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->compareAndSet(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1170
    move-object v9, v5

    instance-of v9, v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v9, :cond_5

    .line 1171
    move-object v9, v5

    check-cast v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v9

    .line 1174
    .local v6, "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->executor:Ljava/util/concurrent/Executor;

    move-object v7, v9

    .line 1175
    .local v7, "e":Ljava/util/concurrent/Executor;
    move-object v9, v6

    if-nez v9, :cond_2

    .line 1177
    move-object v9, v7

    if-eqz v9, :cond_6

    .line 1178
    move-object v9, v7

    :try_start_0
    new-instance v10, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v3

    move-object v13, v4

    invoke-direct {v11, v12, v13}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v9, v10}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    .line 1185
    :cond_2
    :goto_1
    move-object v9, v7

    if-eqz v9, :cond_3

    move-object v9, v6

    if-eqz v9, :cond_4

    .line 1186
    :cond_3
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1188
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v3    # "fn":Ljava/lang/Runnable;
    .end local v5    # "r":Ljava/lang/Object;
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v7    # "e":Ljava/util/concurrent/Executor;
    :cond_4
    return-void

    .line 1173
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .restart local v3    # "fn":Ljava/lang/Runnable;
    .restart local v5    # "r":Ljava/lang/Object;
    :cond_5
    const/4 v9, 0x0

    move-object v6, v9

    .restart local v6    # "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 1180
    .restart local v7    # "e":Ljava/util/concurrent/Executor;
    :cond_6
    move-object v9, v3

    :try_start_1
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1181
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 1182
    .local v8, "rex":Ljava/lang/Throwable;
    move-object v9, v8

    move-object v6, v9

    goto :goto_1
.end method
