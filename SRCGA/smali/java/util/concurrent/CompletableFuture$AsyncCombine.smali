.class final Ljava/util/concurrent/CompletableFuture$AsyncCombine;
.super Ljava/util/concurrent/CompletableFuture$Async;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncCombine"
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
        "Ljava/util/concurrent/CompletableFuture$Async;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field final arg1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final arg2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final dst:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation
.end field

.field final fn:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncCombine;, "Ljava/util/concurrent/CompletableFuture$AsyncCombine<TT;TU;TV;>;"
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;, "TU;"
    move-object v3, p3

    .local v3, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    move-object v4, p4

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture$Async;-><init>()V

    .line 522
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncCombine;->arg1:Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncCombine;->arg2:Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncCombine;->fn:Ljava/util/function/BiFunction;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncCombine;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 523
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 9

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncCombine;, "Ljava/util/concurrent/CompletableFuture$AsyncCombine<TT;TU;TV;>;"
    move-object v5, v0

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$AsyncCombine;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v1, v6

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 528
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$AsyncCombine;->fn:Ljava/util/function/BiFunction;

    move-object v6, v0

    iget-object v6, v6, Ljava/util/concurrent/CompletableFuture$AsyncCombine;->arg1:Ljava/lang/Object;

    move-object v7, v0

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AsyncCombine;->arg2:Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v2, v5

    .line 529
    .local v2, "v":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    move-object v3, v5

    .line 533
    .line 534
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    .local v3, "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 536
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncCombine;, "Ljava/util/concurrent/CompletableFuture$AsyncCombine<TT;TU;TV;>;"
    return v0

    .line 530
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncCombine;, "Ljava/util/concurrent/CompletableFuture$AsyncCombine<TT;TU;TV;>;"
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 531
    .local v4, "rex":Ljava/lang/Throwable;
    move-object v5, v4

    move-object v3, v5

    .line 532
    .restart local v3    # "ex":Ljava/lang/Throwable;
    const/4 v5, 0x0

    move-object v2, v5

    .restart local v2    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_0
.end method
