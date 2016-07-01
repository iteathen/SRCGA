.class final Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThenAcceptBoth"
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
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;

.field final fn:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;"
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
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;, "Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth<TT;TU;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v2, p2

    .local v2, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TU;>;"
    move-object v3, p3

    .local v3, "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    move-object v4, p4

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    move-object v5, p5

    .local v5, "executor":Ljava/util/concurrent/Executor;
    move-object v6, v0

    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 899
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->snd:Ljava/util/concurrent/CompletableFuture;

    .line 900
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->fn:Ljava/util/function/BiConsumer;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 901
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->executor:Ljava/util/concurrent/Executor;

    .line 902
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 909
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;, "Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth<TT;TU;>;"
    move-object v12, v0

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v4, v13

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v12, :cond_2

    move-object v12, v0

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->fn:Ljava/util/function/BiConsumer;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v3, v13

    .local v3, "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    if-eqz v12, :cond_2

    move-object v12, v0

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->src:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v1, v13

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v12, :cond_2

    move-object v12, v1

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v5, v13

    .local v5, "r":Ljava/lang/Object;
    if-eqz v12, :cond_2

    move-object v12, v0

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v2, v13

    .local v2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TU;>;"
    if-eqz v12, :cond_2

    move-object v12, v2

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v6, v13

    .local v6, "s":Ljava/lang/Object;
    if-eqz v12, :cond_2

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 915
    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->compareAndSet(II)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 916
    move-object v12, v5

    instance-of v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v12, :cond_3

    .line 917
    move-object v12, v5

    check-cast v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v9, v12

    .line 918
    .local v9, "ex":Ljava/lang/Throwable;
    const/4 v12, 0x0

    move-object v7, v12

    .line 925
    :goto_0
    move-object v12, v9

    if-eqz v12, :cond_4

    .line 926
    const/4 v12, 0x0

    move-object v8, v12

    .line 935
    :goto_1
    move-object v12, v0

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->executor:Ljava/util/concurrent/Executor;

    move-object v10, v12

    .line 936
    .local v10, "e":Ljava/util/concurrent/Executor;
    move-object v12, v9

    if-nez v12, :cond_0

    .line 938
    move-object v12, v10

    if-eqz v12, :cond_6

    .line 939
    move-object v12, v10

    :try_start_0
    new-instance v13, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v14 .. v18}, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v12, v13}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    .line 946
    :cond_0
    :goto_2
    move-object v12, v10

    if-eqz v12, :cond_1

    move-object v12, v9

    if-eqz v12, :cond_2

    .line 947
    :cond_1
    move-object v12, v4

    const/4 v13, 0x0

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 949
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v2    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TU;>;"
    .end local v3    # "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    .end local v5    # "r":Ljava/lang/Object;
    .end local v6    # "s":Ljava/lang/Object;
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v10    # "e":Ljava/util/concurrent/Executor;
    :cond_2
    return-void

    .line 921
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .restart local v2    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TU;>;"
    .restart local v3    # "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    .restart local v5    # "r":Ljava/lang/Object;
    .restart local v6    # "s":Ljava/lang/Object;
    :cond_3
    const/4 v12, 0x0

    move-object v9, v12

    .line 922
    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object v12, v5

    move-object v10, v12

    .line 923
    .local v10, "tr":Ljava/lang/Object;, "TT;"
    move-object v12, v10

    move-object v7, v12

    .local v7, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 927
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    .end local v10    # "tr":Ljava/lang/Object;, "TT;"
    :cond_4
    move-object v12, v6

    instance-of v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v12, :cond_5

    .line 928
    move-object v12, v6

    check-cast v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v9, v12

    .line 929
    const/4 v12, 0x0

    move-object v8, v12

    .local v8, "u":Ljava/lang/Object;, "TU;"
    goto :goto_1

    .line 932
    .end local v8    # "u":Ljava/lang/Object;, "TU;"
    :cond_5
    move-object v12, v6

    move-object v10, v12

    .line 933
    .local v10, "us":Ljava/lang/Object;, "TU;"
    move-object v12, v10

    move-object v8, v12

    .restart local v8    # "u":Ljava/lang/Object;, "TU;"
    goto :goto_1

    .line 941
    .end local v8    # "u":Ljava/lang/Object;, "TU;"
    .local v10, "e":Ljava/util/concurrent/Executor;
    :cond_6
    move-object v12, v3

    move-object v13, v7

    move-object v14, v8

    :try_start_1
    invoke-interface {v12, v13, v14}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 942
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 943
    .local v11, "rex":Ljava/lang/Throwable;
    move-object v12, v11

    move-object v9, v12

    goto :goto_2
.end method
