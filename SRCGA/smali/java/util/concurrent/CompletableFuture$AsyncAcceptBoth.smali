.class final Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;
.super Ljava/util/concurrent/CompletableFuture$Async;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncAcceptBoth"
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
            "<*>;"
        }
    .end annotation
.end field

.field final fn:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;, "Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth<TT;TU;>;"
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Object;, "TU;"
    move-object v3, p3

    .local v3, "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    move-object v4, p4

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture$Async;-><init>()V

    .line 573
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;->arg1:Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;->arg2:Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;->fn:Ljava/util/function/BiConsumer;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 574
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 8

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;, "Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth<TT;TU;>;"
    move-object v4, v0

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 579
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;->fn:Ljava/util/function/BiConsumer;

    move-object v5, v0

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;->arg1:Ljava/lang/Object;

    move-object v6, v0

    iget-object v6, v6, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;->arg2:Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    const/4 v4, 0x0

    move-object v2, v4

    .line 583
    .line 584
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 586
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;, "Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth<TT;TU;>;"
    return v0

    .line 581
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;, "Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth<TT;TU;>;"
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 582
    .local v3, "rex":Ljava/lang/Throwable;
    move-object v4, v3

    move-object v2, v4

    .restart local v2    # "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method
