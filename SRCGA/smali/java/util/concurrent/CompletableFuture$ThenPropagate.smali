.class final Ljava/util/concurrent/CompletableFuture$ThenPropagate;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThenPropagate"
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

.field final src:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1344
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenPropagate;
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v2, p2

    .local v2, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1345
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/util/concurrent/CompletableFuture$ThenPropagate;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/util/concurrent/CompletableFuture$ThenPropagate;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 1346
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 1351
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenPropagate;
    move-object v5, v0

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$ThenPropagate;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    .local v2, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$ThenPropagate;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v1, v6

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    .local v3, "r":Ljava/lang/Object;
    if-eqz v5, :cond_0

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1354
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/CompletableFuture$ThenPropagate;->compareAndSet(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1355
    move-object v5, v3

    instance-of v5, v5, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v5, :cond_1

    .line 1356
    move-object v5, v3

    check-cast v5, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v4, v5

    .line 1359
    .local v4, "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1361
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v3    # "r":Ljava/lang/Object;
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 1358
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .restart local v3    # "r":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x0

    move-object v4, v5

    .restart local v4    # "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method
