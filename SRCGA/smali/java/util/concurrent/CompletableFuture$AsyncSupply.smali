.class final Ljava/util/concurrent/CompletableFuture$AsyncSupply;
.super Ljava/util/concurrent/CompletableFuture$Async;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncSupply"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture$Async;"
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

.field final fn:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/concurrent/CompletableFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<TU;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TU;>;"
    move-object v1, p1

    .local v1, "fn":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    move-object v2, p2

    .local v2, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture$Async;-><init>()V

    .line 470
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava/util/function/Supplier;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 471
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 9

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TU;>;"
    move-object v5, v0

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v1, v6

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 476
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$AsyncSupply;->fn:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v2, v5

    .line 477
    .local v2, "u":Ljava/lang/Object;, "TU;"
    const/4 v5, 0x0

    move-object v3, v5

    .line 481
    .line 482
    .end local v2    # "u":Ljava/lang/Object;, "TU;"
    .local v3, "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 484
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_0
    const/4 v5, 0x1

    move v0, v5

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TU;>;"
    return v0

    .line 478
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncSupply;, "Ljava/util/concurrent/CompletableFuture$AsyncSupply<TU;>;"
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 479
    .local v4, "rex":Ljava/lang/Throwable;
    move-object v5, v4

    move-object v3, v5

    .line 480
    .restart local v3    # "ex":Ljava/lang/Throwable;
    const/4 v5, 0x0

    move-object v2, v5

    .restart local v2    # "u":Ljava/lang/Object;, "TU;"
    goto :goto_0
.end method
