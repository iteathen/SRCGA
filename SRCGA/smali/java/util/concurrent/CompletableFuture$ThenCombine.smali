.class final Ljava/util/concurrent/CompletableFuture$ThenCombine;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThenCombine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
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
            "<TV;>;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;

.field final fn:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;"
        }
    .end annotation
.end field

.field final snd:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<+TU;>;"
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
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 832
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenCombine;, "Ljava/util/concurrent/CompletableFuture$ThenCombine<TT;TU;TV;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v2, p2

    .local v2, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TU;>;"
    move-object v3, p3

    .local v3, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    move-object v4, p4

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    move-object v5, p5

    .local v5, "executor":Ljava/util/concurrent/Executor;
    move-object v6, v0

    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 833
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ThenCombine;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ThenCombine;->snd:Ljava/util/concurrent/CompletableFuture;

    .line 834
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ThenCombine;->fn:Ljava/util/function/BiFunction;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ThenCombine;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 835
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ThenCombine;->executor:Ljava/util/concurrent/Executor;

    .line 836
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .prologue
    .line 843
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenCombine;, "Ljava/util/concurrent/CompletableFuture$ThenCombine<TT;TU;TV;>;"
    move-object v13, v0

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture$ThenCombine;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v4, v14

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-eqz v13, :cond_2

    move-object v13, v0

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture$ThenCombine;->fn:Ljava/util/function/BiFunction;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v3, v14

    .local v3, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    if-eqz v13, :cond_2

    move-object v13, v0

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture$ThenCombine;->src:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v1, v14

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v13, :cond_2

    move-object v13, v1

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v5, v14

    .local v5, "r":Ljava/lang/Object;
    if-eqz v13, :cond_2

    move-object v13, v0

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture$ThenCombine;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v2, v14

    .local v2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TU;>;"
    if-eqz v13, :cond_2

    move-object v13, v2

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v6, v14

    .local v6, "s":Ljava/lang/Object;
    if-eqz v13, :cond_2

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 849
    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/CompletableFuture$ThenCombine;->compareAndSet(II)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 850
    move-object v13, v5

    instance-of v13, v13, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v13, :cond_3

    .line 851
    move-object v13, v5

    check-cast v13, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v9, v13

    .line 852
    .local v9, "ex":Ljava/lang/Throwable;
    const/4 v13, 0x0

    move-object v7, v13

    .line 859
    :goto_0
    move-object v13, v9

    if-eqz v13, :cond_4

    .line 860
    const/4 v13, 0x0

    move-object v8, v13

    .line 869
    :goto_1
    move-object v13, v0

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture$ThenCombine;->executor:Ljava/util/concurrent/Executor;

    move-object v10, v13

    .line 870
    .local v10, "e":Ljava/util/concurrent/Executor;
    const/4 v13, 0x0

    move-object v11, v13

    .line 871
    .local v11, "v":Ljava/lang/Object;, "TV;"
    move-object v13, v9

    if-nez v13, :cond_0

    .line 873
    move-object v13, v10

    if-eqz v13, :cond_6

    .line 874
    move-object v13, v10

    :try_start_0
    new-instance v14, Ljava/util/concurrent/CompletableFuture$AsyncCombine;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v15 .. v19}, Ljava/util/concurrent/CompletableFuture$AsyncCombine;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v13, v14}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    .line 881
    .end local v11    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_2
    move-object v13, v10

    if-eqz v13, :cond_1

    move-object v13, v9

    if-eqz v13, :cond_2

    .line 882
    :cond_1
    move-object v13, v4

    move-object v14, v11

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 884
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v2    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TU;>;"
    .end local v3    # "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    .end local v5    # "r":Ljava/lang/Object;
    .end local v6    # "s":Ljava/lang/Object;
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v10    # "e":Ljava/util/concurrent/Executor;
    :cond_2
    return-void

    .line 855
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .restart local v2    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TU;>;"
    .restart local v3    # "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    .restart local v5    # "r":Ljava/lang/Object;
    .restart local v6    # "s":Ljava/lang/Object;
    :cond_3
    const/4 v13, 0x0

    move-object v9, v13

    .line 856
    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object v13, v5

    move-object v10, v13

    .line 857
    .local v10, "tr":Ljava/lang/Object;, "TT;"
    move-object v13, v10

    move-object v7, v13

    .local v7, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 861
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    .end local v10    # "tr":Ljava/lang/Object;, "TT;"
    :cond_4
    move-object v13, v6

    instance-of v13, v13, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v13, :cond_5

    .line 862
    move-object v13, v6

    check-cast v13, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v9, v13

    .line 863
    const/4 v13, 0x0

    move-object v8, v13

    .local v8, "u":Ljava/lang/Object;, "TU;"
    goto :goto_1

    .line 866
    .end local v8    # "u":Ljava/lang/Object;, "TU;"
    :cond_5
    move-object v13, v6

    move-object v10, v13

    .line 867
    .local v10, "us":Ljava/lang/Object;, "TU;"
    move-object v13, v10

    move-object v8, v13

    .restart local v8    # "u":Ljava/lang/Object;, "TU;"
    goto :goto_1

    .line 876
    .end local v8    # "u":Ljava/lang/Object;, "TU;"
    .local v10, "e":Ljava/util/concurrent/Executor;
    .restart local v11    # "v":Ljava/lang/Object;, "TV;"
    :cond_6
    move-object v13, v3

    move-object v14, v7

    move-object v15, v8

    :try_start_1
    invoke-interface {v13, v14, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    move-object v11, v13

    goto :goto_2

    .line 877
    :catch_0
    move-exception v13

    move-object v12, v13

    .line 878
    .local v12, "rex":Ljava/lang/Throwable;
    move-object v13, v12

    move-object v9, v13

    goto :goto_2
.end method
