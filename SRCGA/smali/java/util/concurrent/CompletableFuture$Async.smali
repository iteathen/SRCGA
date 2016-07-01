.class abstract Ljava/util/concurrent/CompletableFuture$Async;
.super Ljava/util/concurrent/ForkJoinTask;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Async"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$Async;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$Async;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture$Async;->getRawResult()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture$Async;
    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$Async;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture$Async;
    return-object v0
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$Async;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture$Async;->exec()Z

    move-result v1

    return-void
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$Async;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Void;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture$Async;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 427
    return-void
.end method
