.class final Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;
.super Ljava/util/concurrent/CompletableFuture$Async;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncWhenComplete"
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
.field final arg1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final arg2:Ljava/lang/Throwable;

.field final dst:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation
.end field

.field final fn:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;, "Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete<TT;>;"
    move-object v1, p1

    .local v1, "arg1":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "arg2":Ljava/lang/Throwable;
    move-object v3, p3

    .local v3, "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    move-object v4, p4

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/util/concurrent/CompletableFuture$Async;-><init>()V

    .line 641
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;->arg1:Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;->arg2:Ljava/lang/Throwable;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;->fn:Ljava/util/function/BiConsumer;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 642
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 8

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;, "Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 646
    move-object v4, v0

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;->arg2:Ljava/lang/Throwable;

    move-object v2, v4

    .line 648
    .local v2, "ex":Ljava/lang/Throwable;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;->fn:Ljava/util/function/BiConsumer;

    move-object v5, v0

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;->arg1:Ljava/lang/Object;

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .line 653
    :cond_0
    :goto_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;->arg1:Ljava/lang/Object;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 655
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;, "Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete<TT;>;"
    return v0

    .line 649
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;, "Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete<TT;>;"
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 650
    .local v3, "rex":Ljava/lang/Throwable;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 651
    move-object v4, v3

    move-object v2, v4

    goto :goto_0
.end method
