.class final Ljava/util/concurrent/CompletableFuture$AsyncRun;
.super Ljava/util/concurrent/CompletableFuture$Async;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncRun"
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

.field final fn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncRun;
    move-object v1, p1

    .local v1, "fn":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture$Async;-><init>()V

    .line 448
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 449
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 8

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AsyncRun;
    move-object v4, v0

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    .local v1, "d":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 454
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    const/4 v4, 0x0

    move-object v2, v4

    .line 458
    .line 459
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 461
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncRun;
    return v0

    .line 456
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture$AsyncRun;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 457
    .local v3, "rex":Ljava/lang/Throwable;
    move-object v4, v3

    move-object v2, v4

    .restart local v2    # "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method
