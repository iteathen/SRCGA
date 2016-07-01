.class final Ljava/util/concurrent/CompletableFuture$AsyncCompose;
.super Ljava/util/concurrent/CompletableFuture$Async;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncCompose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$Async;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990d6e4eL


# instance fields
.field final arg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final dst:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation
.end field

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


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncCompose;, "Ljava/util/concurrent/CompletableFuture$AsyncCompose<TT;TU;>;"
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    move-object v3, p3

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture$Async;-><init>()V

    .line 598
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$AsyncCompose;->arg:Ljava/lang/Object;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$AsyncCompose;->fn:Ljava/util/function/Function;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$AsyncCompose;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 599
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 11

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncCompose;, "Ljava/util/concurrent/CompletableFuture$AsyncCompose<TT;TU;>;"
    move-object v7, v0

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AsyncCompose;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v1, v8

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v7, :cond_0

    move-object v7, v1

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v7, :cond_0

    .line 604
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AsyncCompose;->fn:Ljava/util/function/Function;

    move-object v8, v0

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture$AsyncCompose;->arg:Ljava/lang/Object;

    invoke-interface {v7, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CompletionStage;

    move-object v5, v7

    .line 605
    .local v5, "cs":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    move-object v7, v5

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_0
    move-object v2, v7

    .line 606
    .local v2, "fr":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    move-object v7, v2

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/NullPointerException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v4, v7

    .line 610
    .line 611
    .end local v5    # "cs":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    .local v4, "ex":Ljava/lang/Throwable;
    :goto_2
    move-object v7, v4

    if-eqz v7, :cond_3

    .line 612
    const/4 v7, 0x0

    move-object v3, v7

    .line 626
    :goto_3
    move-object v7, v1

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 628
    .end local v2    # "fr":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_0
    const/4 v7, 0x1

    move v0, v7

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncCompose;, "Ljava/util/concurrent/CompletableFuture$AsyncCompose<TT;TU;>;"
    return v0

    .line 605
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncCompose;, "Ljava/util/concurrent/CompletableFuture$AsyncCompose<TT;TU;>;"
    .restart local v5    # "cs":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    :cond_1
    move-object v7, v5

    :try_start_1
    invoke-interface {v7}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0

    .line 606
    .restart local v2    # "fr":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 607
    .end local v2    # "fr":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    .end local v5    # "cs":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 608
    .local v5, "rex":Ljava/lang/Throwable;
    move-object v7, v5

    move-object v4, v7

    .line 609
    .restart local v4    # "ex":Ljava/lang/Throwable;
    const/4 v7, 0x0

    move-object v2, v7

    .restart local v2    # "fr":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    goto :goto_2

    .line 614
    .end local v5    # "rex":Ljava/lang/Throwable;
    :cond_3
    move-object v7, v2

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v5, v7

    .line 615
    .local v5, "r":Ljava/lang/Object;
    move-object v7, v5

    if-nez v7, :cond_4

    .line 616
    move-object v7, v2

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/concurrent/CompletableFuture;->access$000(Ljava/util/concurrent/CompletableFuture;Z)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 617
    :cond_4
    move-object v7, v5

    instance-of v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v7, :cond_5

    .line 618
    move-object v7, v5

    check-cast v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v4, v7

    .line 619
    const/4 v7, 0x0

    move-object v3, v7

    .local v3, "u":Ljava/lang/Object;, "TU;"
    goto :goto_3

    .line 622
    .end local v3    # "u":Ljava/lang/Object;, "TU;"
    :cond_5
    move-object v7, v5

    move-object v6, v7

    .line 623
    .local v6, "ur":Ljava/lang/Object;, "TU;"
    move-object v7, v6

    move-object v3, v7

    .restart local v3    # "u":Ljava/lang/Object;, "TU;"
    goto :goto_3
.end method
