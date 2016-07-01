.class final Ljava/util/concurrent/CompletableFuture$HandleCompletion;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HandleCompletion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
            "<TU;>;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;

.field final fn:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;"
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
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1373
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$HandleCompletion;, "Ljava/util/concurrent/CompletableFuture$HandleCompletion<TT;TU;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    move-object v3, p3

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    move-object v4, p4

    .local v4, "executor":Ljava/util/concurrent/Executor;
    move-object v5, v0

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1374
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$HandleCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$HandleCompletion;->fn:Ljava/util/function/BiFunction;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$HandleCompletion;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 1375
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$HandleCompletion;->executor:Ljava/util/concurrent/Executor;

    .line 1376
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .prologue
    .line 1382
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$HandleCompletion;, "Ljava/util/concurrent/CompletableFuture$HandleCompletion<TT;TU;>;"
    move-object v11, v0

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$HandleCompletion;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v3, v12

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$HandleCompletion;->fn:Ljava/util/function/BiFunction;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v2, v12

    .local v2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    if-eqz v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$HandleCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v1, v12

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v11, :cond_1

    move-object v11, v1

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v4, v12

    .local v4, "r":Ljava/lang/Object;
    if-eqz v11, :cond_1

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 1386
    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/CompletableFuture$HandleCompletion;->compareAndSet(II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1387
    move-object v11, v4

    instance-of v11, v11, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v11, :cond_2

    .line 1388
    move-object v11, v4

    check-cast v11, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v11

    .line 1389
    .local v6, "ex":Ljava/lang/Throwable;
    const/4 v11, 0x0

    move-object v5, v11

    .line 1396
    :goto_0
    move-object v11, v0

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$HandleCompletion;->executor:Ljava/util/concurrent/Executor;

    move-object v7, v11

    .line 1397
    .local v7, "e":Ljava/util/concurrent/Executor;
    const/4 v11, 0x0

    move-object v8, v11

    .line 1398
    .local v8, "u":Ljava/lang/Object;, "TU;"
    const/4 v11, 0x0

    move-object v9, v11

    .line 1400
    .local v9, "dx":Ljava/lang/Throwable;
    move-object v11, v7

    if-eqz v11, :cond_3

    .line 1401
    move-object v11, v7

    :try_start_0
    new-instance v12, Ljava/util/concurrent/CompletableFuture$AsyncCombine;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v13 .. v17}, Ljava/util/concurrent/CompletableFuture$AsyncCombine;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v11, v12}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    .line 1407
    .end local v8    # "u":Ljava/lang/Object;, "TU;"
    :goto_1
    move-object v11, v7

    if-eqz v11, :cond_0

    move-object v11, v9

    if-eqz v11, :cond_1

    .line 1408
    :cond_0
    move-object v11, v3

    move-object v12, v8

    move-object v13, v9

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1410
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v2    # "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    .end local v4    # "r":Ljava/lang/Object;
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v7    # "e":Ljava/util/concurrent/Executor;
    .end local v9    # "dx":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 1392
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .restart local v2    # "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    .restart local v4    # "r":Ljava/lang/Object;
    :cond_2
    const/4 v11, 0x0

    move-object v6, v11

    .line 1393
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v11, v4

    move-object v7, v11

    .line 1394
    .local v7, "tr":Ljava/lang/Object;, "TT;"
    move-object v11, v7

    move-object v5, v11

    .local v5, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1403
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    .local v7, "e":Ljava/util/concurrent/Executor;
    .restart local v8    # "u":Ljava/lang/Object;, "TU;"
    .restart local v9    # "dx":Ljava/lang/Throwable;
    :cond_3
    move-object v11, v2

    move-object v12, v5

    move-object v13, v6

    :try_start_1
    invoke-interface {v11, v12, v13}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    move-object v8, v11

    goto :goto_1

    .line 1404
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 1405
    .local v10, "rex":Ljava/lang/Throwable;
    move-object v11, v10

    move-object v9, v11

    goto :goto_1
.end method
