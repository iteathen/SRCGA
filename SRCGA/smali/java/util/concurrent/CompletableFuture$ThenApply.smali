.class final Ljava/util/concurrent/CompletableFuture$ThenApply;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThenApply"
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
            "<-TT;+TU;>;"
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
            "<-TT;+TU;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenApply;, "Ljava/util/concurrent/CompletableFuture$ThenApply<TT;TU;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    move-object v3, p3

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    move-object v4, p4

    .local v4, "executor":Ljava/util/concurrent/Executor;
    move-object v5, v0

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 688
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenApply;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenApply;->fn:Ljava/util/function/Function;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenApply;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 689
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenApply;->executor:Ljava/util/concurrent/Executor;

    .line 690
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .prologue
    .line 696
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenApply;, "Ljava/util/concurrent/CompletableFuture$ThenApply<TT;TU;>;"
    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$ThenApply;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v3, v11

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$ThenApply;->fn:Ljava/util/function/Function;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v2, v11

    .local v2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$ThenApply;->src:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v1, v11

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v10, :cond_2

    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v4, v11

    .local v4, "r":Ljava/lang/Object;
    if-eqz v10, :cond_2

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 700
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture$ThenApply;->compareAndSet(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 701
    move-object v10, v4

    instance-of v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v10, :cond_3

    .line 702
    move-object v10, v4

    check-cast v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v10

    .line 703
    .local v6, "ex":Ljava/lang/Throwable;
    const/4 v10, 0x0

    move-object v5, v10

    .line 710
    :goto_0
    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$ThenApply;->executor:Ljava/util/concurrent/Executor;

    move-object v7, v10

    .line 711
    .local v7, "e":Ljava/util/concurrent/Executor;
    const/4 v10, 0x0

    move-object v8, v10

    .line 712
    .local v8, "u":Ljava/lang/Object;, "TU;"
    move-object v10, v6

    if-nez v10, :cond_0

    .line 714
    move-object v10, v7

    if-eqz v10, :cond_4

    .line 715
    move-object v10, v7

    :try_start_0
    new-instance v11, Ljava/util/concurrent/CompletableFuture$AsyncApply;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v5

    move-object v14, v2

    move-object v15, v3

    invoke-direct {v12, v13, v14, v15}, Ljava/util/concurrent/CompletableFuture$AsyncApply;-><init>(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v10, v11}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .line 722
    .end local v8    # "u":Ljava/lang/Object;, "TU;"
    :cond_0
    :goto_1
    move-object v10, v7

    if-eqz v10, :cond_1

    move-object v10, v6

    if-eqz v10, :cond_2

    .line 723
    :cond_1
    move-object v10, v3

    move-object v11, v8

    move-object v12, v6

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 725
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v2    # "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .end local v4    # "r":Ljava/lang/Object;
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v7    # "e":Ljava/util/concurrent/Executor;
    :cond_2
    return-void

    .line 706
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .restart local v2    # "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .restart local v4    # "r":Ljava/lang/Object;
    :cond_3
    const/4 v10, 0x0

    move-object v6, v10

    .line 707
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v10, v4

    move-object v7, v10

    .line 708
    .local v7, "tr":Ljava/lang/Object;, "TT;"
    move-object v10, v7

    move-object v5, v10

    .local v5, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 717
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    .local v7, "e":Ljava/util/concurrent/Executor;
    .restart local v8    # "u":Ljava/lang/Object;, "TU;"
    :cond_4
    move-object v10, v2

    move-object v11, v5

    :try_start_1
    invoke-interface {v10, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    move-object v8, v10

    goto :goto_1

    .line 718
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 719
    .local v9, "rex":Ljava/lang/Throwable;
    move-object v10, v9

    move-object v6, v10

    goto :goto_1
.end method
