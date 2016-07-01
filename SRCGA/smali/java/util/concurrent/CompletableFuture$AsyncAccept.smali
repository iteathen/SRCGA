.class final Ljava/util/concurrent/CompletableFuture$AsyncAccept;
.super Ljava/util/concurrent/CompletableFuture$Async;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncAccept"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "<*>;"
        }
    .end annotation
.end field

.field final fn:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncAccept;, "Ljava/util/concurrent/CompletableFuture$AsyncAccept<TT;>;"
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object v3, p3

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture$Async;-><init>()V

    .line 547
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$AsyncAccept;->arg:Ljava/lang/Object;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$AsyncAccept;->fn:Ljava/util/function/Consumer;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$AsyncAccept;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 548
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 8

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncAccept;, "Ljava/util/concurrent/CompletableFuture$AsyncAccept<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AsyncAccept;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 553
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AsyncAccept;->fn:Ljava/util/function/Consumer;

    move-object v5, v0

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$AsyncAccept;->arg:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    const/4 v4, 0x0

    move-object v2, v4

    .line 557
    .line 558
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 560
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncAccept;, "Ljava/util/concurrent/CompletableFuture$AsyncAccept<TT;>;"
    return v0

    .line 555
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncAccept;, "Ljava/util/concurrent/CompletableFuture$AsyncAccept<TT;>;"
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 556
    .local v3, "rex":Ljava/lang/Throwable;
    move-object v4, v3

    move-object v2, v4

    .restart local v2    # "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method
