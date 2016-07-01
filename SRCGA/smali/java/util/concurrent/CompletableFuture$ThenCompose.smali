.class final Ljava/util/concurrent/CompletableFuture$ThenCompose;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThenCompose"
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

.field final fn:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;"
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
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1422
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenCompose;, "Ljava/util/concurrent/CompletableFuture$ThenCompose<TT;TU;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    move-object v3, p3

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    move-object v4, p4

    .local v4, "executor":Ljava/util/concurrent/Executor;
    move-object v5, v0

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1423
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenCompose;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenCompose;->fn:Ljava/util/function/Function;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenCompose;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 1424
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenCompose;->executor:Ljava/util/concurrent/Executor;

    .line 1425
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .prologue
    .line 1431
    move-object/from16 v2, p0

    .local v2, "this":Ljava/util/concurrent/CompletableFuture$ThenCompose;, "Ljava/util/concurrent/CompletableFuture$ThenCompose<TT;TU;>;"
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$ThenCompose;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v5, v17

    .local v5, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v16, :cond_7

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$ThenCompose;->fn:Ljava/util/function/Function;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v4, v17

    .local v4, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    if-eqz v16, :cond_7

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$ThenCompose;->src:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v3, v17

    .local v3, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v16, :cond_7

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v6, v17

    .local v6, "r":Ljava/lang/Object;
    if-eqz v16, :cond_7

    move-object/from16 v16, v2

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 1435
    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture$ThenCompose;->compareAndSet(II)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1436
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 1437
    move-object/from16 v16, v6

    check-cast v16, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v8, v16

    .line 1438
    .local v8, "ex":Ljava/lang/Throwable;
    const/16 v16, 0x0

    move-object/from16 v7, v16

    .line 1445
    :goto_0
    const/16 v16, 0x0

    move-object/from16 v10, v16

    .line 1446
    .local v10, "c":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    const/16 v16, 0x0

    move-object/from16 v11, v16

    .line 1447
    .local v11, "u":Ljava/lang/Object;, "TU;"
    const/16 v16, 0x0

    move/from16 v12, v16

    .line 1448
    .local v12, "complete":Z
    move-object/from16 v16, v8

    if-nez v16, :cond_0

    .line 1449
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$ThenCompose;->executor:Ljava/util/concurrent/Executor;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v9, v17

    .local v9, "e":Ljava/util/concurrent/Executor;
    if-eqz v16, :cond_9

    .line 1450
    move-object/from16 v16, v9

    new-instance v17, Ljava/util/concurrent/CompletableFuture$AsyncCompose;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v7

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-direct/range {v18 .. v21}, Ljava/util/concurrent/CompletableFuture$AsyncCompose;-><init>(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static/range {v16 .. v17}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V

    .line 1462
    .end local v9    # "e":Ljava/util/concurrent/Executor;
    :cond_0
    :goto_1
    move-object/from16 v16, v10

    if-eqz v16, :cond_4

    .line 1463
    const/16 v16, 0x0

    move-object/from16 v13, v16

    .line 1465
    .local v13, "d":Ljava/util/concurrent/CompletableFuture$ThenCopy;, "Ljava/util/concurrent/CompletableFuture$ThenCopy<TU;>;"
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v14, v17

    .local v14, "s":Ljava/lang/Object;
    if-nez v16, :cond_2

    .line 1466
    new-instance v16, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    new-instance v18, Ljava/util/concurrent/CompletableFuture$ThenCopy;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v10

    move-object/from16 v21, v5

    invoke-direct/range {v19 .. v21}, Ljava/util/concurrent/CompletableFuture$ThenCopy;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v13, v19

    invoke-direct/range {v17 .. v18}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object/from16 v15, v16

    .line 1468
    .local v15, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_1
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v14, v17

    if-nez v16, :cond_2

    .line 1469
    # getter for: Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;
    invoke-static {}, Ljava/util/concurrent/CompletableFuture;->access$200()Lsun/misc/Unsafe;

    move-result-object v16

    move-object/from16 v17, v10

    .line 1470
    # getter for: Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J
    invoke-static {}, Ljava/util/concurrent/CompletableFuture;->access$100()J

    move-result-wide v18

    move-object/from16 v20, v15

    move-object/from16 v21, v10

    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v0

    move-object/from16 v23, v20

    move-object/from16 v24, v21

    move-object/from16 v20, v24

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1471
    .line 1474
    .end local v15    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_2
    move-object/from16 v16, v14

    if-eqz v16, :cond_4

    move-object/from16 v16, v13

    if-eqz v16, :cond_3

    move-object/from16 v16, v13

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture$ThenCopy;->compareAndSet(II)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1475
    :cond_3
    const/16 v16, 0x1

    move/from16 v12, v16

    .line 1476
    move-object/from16 v16, v14

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 1477
    move-object/from16 v16, v14

    check-cast v16, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v8, v16

    .line 1478
    const/16 v16, 0x0

    move-object/from16 v11, v16

    .line 1486
    .end local v11    # "u":Ljava/lang/Object;, "TU;"
    .end local v13    # "d":Ljava/util/concurrent/CompletableFuture$ThenCopy;, "Ljava/util/concurrent/CompletableFuture$ThenCopy<TU;>;"
    .end local v14    # "s":Ljava/lang/Object;
    :cond_4
    :goto_2
    move/from16 v16, v12

    if-nez v16, :cond_5

    move-object/from16 v16, v8

    if-eqz v16, :cond_6

    .line 1487
    :cond_5
    move-object/from16 v16, v5

    move-object/from16 v17, v11

    move-object/from16 v18, v8

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1488
    :cond_6
    move-object/from16 v16, v10

    if-eqz v16, :cond_7

    .line 1489
    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1491
    .end local v3    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v4    # "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    .end local v6    # "r":Ljava/lang/Object;
    .end local v8    # "ex":Ljava/lang/Throwable;
    .end local v10    # "c":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .end local v12    # "complete":Z
    :cond_7
    return-void

    .line 1441
    .restart local v3    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .restart local v4    # "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    .restart local v6    # "r":Ljava/lang/Object;
    :cond_8
    const/16 v16, 0x0

    move-object/from16 v8, v16

    .line 1442
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object/from16 v16, v6

    move-object/from16 v10, v16

    .line 1443
    .local v10, "tr":Ljava/lang/Object;, "TT;"
    move-object/from16 v16, v10

    move-object/from16 v7, v16

    .local v7, "t":Ljava/lang/Object;, "TT;"
    goto/16 :goto_0

    .line 1453
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    .restart local v9    # "e":Ljava/util/concurrent/Executor;
    .local v10, "c":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .restart local v11    # "u":Ljava/lang/Object;, "TU;"
    .restart local v12    # "complete":Z
    :cond_9
    move-object/from16 v16, v4

    move-object/from16 v17, v7

    :try_start_0
    invoke-interface/range {v16 .. v17}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/CompletionStage;

    move-object/from16 v13, v16

    .line 1454
    .local v13, "cs":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    move-object/from16 v16, v13

    if-nez v16, :cond_b

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v10, v16

    .line 1455
    move-object/from16 v16, v10

    if-nez v16, :cond_a

    .line 1456
    new-instance v16, Ljava/lang/NullPointerException;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/lang/NullPointerException;-><init>()V

    move-object/from16 v8, v16

    .line 1459
    :cond_a
    goto/16 :goto_1

    .line 1454
    :cond_b
    move-object/from16 v16, v13

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    goto :goto_3

    .line 1457
    .end local v13    # "cs":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    :catch_0
    move-exception v16

    move-object/from16 v13, v16

    .line 1458
    .local v13, "rex":Ljava/lang/Throwable;
    move-object/from16 v16, v13

    move-object/from16 v8, v16

    goto/16 :goto_1

    .line 1481
    .end local v9    # "e":Ljava/util/concurrent/Executor;
    .local v13, "d":Ljava/util/concurrent/CompletableFuture$ThenCopy;, "Ljava/util/concurrent/CompletableFuture$ThenCopy<TU;>;"
    .restart local v14    # "s":Ljava/lang/Object;
    :cond_c
    move-object/from16 v16, v14

    move-object/from16 v15, v16

    .line 1482
    .local v15, "us":Ljava/lang/Object;, "TU;"
    move-object/from16 v16, v15

    move-object/from16 v11, v16

    goto :goto_2
.end method
