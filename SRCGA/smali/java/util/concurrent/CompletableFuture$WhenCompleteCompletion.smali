.class final Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WhenCompleteCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$Completion;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field final dst:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;

.field final fn:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final src:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1269
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;, "Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion<TT;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    move-object v3, p3

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v4, p4

    .local v4, "executor":Ljava/util/concurrent/Executor;
    move-object v5, v0

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1270
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;->fn:Ljava/util/function/BiConsumer;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 1271
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;->executor:Ljava/util/concurrent/Executor;

    .line 1272
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 1278
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;, "Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion<TT;>;"
    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v3, v11

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;->fn:Ljava/util/function/BiConsumer;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v2, v11

    .local v2, "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    if-eqz v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v1, v11

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v10, :cond_1

    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v4, v11

    .local v4, "r":Ljava/lang/Object;
    if-eqz v10, :cond_1

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1282
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;->compareAndSet(II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1283
    move-object v10, v4

    instance-of v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v10, :cond_2

    .line 1284
    move-object v10, v4

    check-cast v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v10

    .line 1285
    .local v6, "ex":Ljava/lang/Throwable;
    const/4 v10, 0x0

    move-object v5, v10

    .line 1292
    :goto_0
    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;->executor:Ljava/util/concurrent/Executor;

    move-object v7, v10

    .line 1293
    .local v7, "e":Ljava/util/concurrent/Executor;
    const/4 v10, 0x0

    move-object v8, v10

    .line 1295
    .local v8, "dx":Ljava/lang/Throwable;
    move-object v10, v7

    if-eqz v10, :cond_3

    .line 1296
    move-object v10, v7

    :try_start_0
    new-instance v11, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v5

    move-object v14, v6

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v12 .. v16}, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v10, v11}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    .line 1302
    :goto_1
    move-object v10, v7

    if-eqz v10, :cond_0

    move-object v10, v8

    if-eqz v10, :cond_1

    .line 1303
    :cond_0
    move-object v10, v3

    move-object v11, v5

    move-object v12, v6

    if-eqz v12, :cond_4

    move-object v12, v6

    :goto_2
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1305
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v2    # "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    .end local v4    # "r":Ljava/lang/Object;
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v7    # "e":Ljava/util/concurrent/Executor;
    .end local v8    # "dx":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 1288
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .restart local v2    # "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    .restart local v4    # "r":Ljava/lang/Object;
    :cond_2
    const/4 v10, 0x0

    move-object v6, v10

    .line 1289
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v10, v4

    move-object v7, v10

    .line 1290
    .local v7, "tr":Ljava/lang/Object;, "TT;"
    move-object v10, v7

    move-object v5, v10

    .local v5, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1298
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    .local v7, "e":Ljava/util/concurrent/Executor;
    .restart local v8    # "dx":Ljava/lang/Throwable;
    :cond_3
    move-object v10, v2

    move-object v11, v5

    move-object v12, v6

    :try_start_1
    invoke-interface {v10, v11, v12}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1299
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 1300
    .local v9, "rex":Ljava/lang/Throwable;
    move-object v10, v9

    move-object v8, v10

    goto :goto_1

    .line 1303
    .end local v9    # "rex":Ljava/lang/Throwable;
    :cond_4
    move-object v12, v8

    goto :goto_2
.end method
