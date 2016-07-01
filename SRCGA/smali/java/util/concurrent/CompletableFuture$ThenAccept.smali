.class final Ljava/util/concurrent/CompletableFuture$ThenAccept;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThenAccept"
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
            "<*>;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;

.field final fn:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<-TT;>;"
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
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenAccept;, "Ljava/util/concurrent/CompletableFuture$ThenAccept<TT;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object v3, p3

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v4, p4

    .local v4, "executor":Ljava/util/concurrent/Executor;
    move-object v5, v0

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 738
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenAccept;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenAccept;->fn:Ljava/util/function/Consumer;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenAccept;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 739
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$ThenAccept;->executor:Ljava/util/concurrent/Executor;

    .line 740
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .prologue
    .line 746
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenAccept;, "Ljava/util/concurrent/CompletableFuture$ThenAccept<TT;>;"
    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$ThenAccept;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v3, v10

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v9, :cond_2

    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$ThenAccept;->fn:Ljava/util/function/Consumer;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v2, v10

    .local v2, "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz v9, :cond_2

    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$ThenAccept;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v1, v10

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v9, :cond_2

    move-object v9, v1

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v4, v10

    .local v4, "r":Ljava/lang/Object;
    if-eqz v9, :cond_2

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 750
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/CompletableFuture$ThenAccept;->compareAndSet(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 751
    move-object v9, v4

    instance-of v9, v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v9, :cond_3

    .line 752
    move-object v9, v4

    check-cast v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v9

    .line 753
    .local v6, "ex":Ljava/lang/Throwable;
    const/4 v9, 0x0

    move-object v5, v9

    .line 760
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$ThenAccept;->executor:Ljava/util/concurrent/Executor;

    move-object v7, v9

    .line 761
    .local v7, "e":Ljava/util/concurrent/Executor;
    move-object v9, v6

    if-nez v9, :cond_0

    .line 763
    move-object v9, v7

    if-eqz v9, :cond_4

    .line 764
    move-object v9, v7

    :try_start_0
    new-instance v10, Ljava/util/concurrent/CompletableFuture$AsyncAccept;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v5

    move-object v13, v2

    move-object v14, v3

    invoke-direct {v11, v12, v13, v14}, Ljava/util/concurrent/CompletableFuture$AsyncAccept;-><init>(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v9, v10}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .line 771
    :cond_0
    :goto_1
    move-object v9, v7

    if-eqz v9, :cond_1

    move-object v9, v6

    if-eqz v9, :cond_2

    .line 772
    :cond_1
    move-object v9, v3

    const/4 v10, 0x0

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 774
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v2    # "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .end local v4    # "r":Ljava/lang/Object;
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v7    # "e":Ljava/util/concurrent/Executor;
    :cond_2
    return-void

    .line 756
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .restart local v2    # "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .restart local v4    # "r":Ljava/lang/Object;
    :cond_3
    const/4 v9, 0x0

    move-object v6, v9

    .line 757
    .restart local v6    # "ex":Ljava/lang/Throwable;
    move-object v9, v4

    move-object v7, v9

    .line 758
    .local v7, "tr":Ljava/lang/Object;, "TT;"
    move-object v9, v7

    move-object v5, v9

    .local v5, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 766
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    .local v7, "e":Ljava/util/concurrent/Executor;
    :cond_4
    move-object v9, v2

    move-object v10, v5

    :try_start_1
    invoke-interface {v9, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 767
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 768
    .local v8, "rex":Ljava/lang/Throwable;
    move-object v9, v8

    move-object v6, v9

    goto :goto_1
.end method
