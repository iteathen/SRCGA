.class final Ljava/util/concurrent/CompletableFuture$ThenCopy;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThenCopy"
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
            "<TT;>;"
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
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1313
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenCopy;, "Ljava/util/concurrent/CompletableFuture$ThenCopy<TT;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v2, p2

    .local v2, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1314
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/util/concurrent/CompletableFuture$ThenCopy;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljava/util/concurrent/CompletableFuture$ThenCopy;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 1315
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 1320
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ThenCopy;, "Ljava/util/concurrent/CompletableFuture$ThenCopy<TT;>;"
    move-object v7, v0

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$ThenCopy;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v2, v8

    .local v2, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$ThenCopy;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v1, v8

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v7, :cond_0

    move-object v7, v1

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    .local v3, "r":Ljava/lang/Object;
    if-eqz v7, :cond_0

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1323
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/CompletableFuture$ThenCopy;->compareAndSet(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1324
    move-object v7, v3

    instance-of v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v7, :cond_1

    .line 1325
    move-object v7, v3

    check-cast v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v5, v7

    .line 1326
    .local v5, "ex":Ljava/lang/Throwable;
    const/4 v7, 0x0

    move-object v4, v7

    .line 1333
    :goto_0
    move-object v7, v2

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1335
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v3    # "r":Ljava/lang/Object;
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 1329
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .restart local v3    # "r":Ljava/lang/Object;
    :cond_1
    const/4 v7, 0x0

    move-object v5, v7

    .line 1330
    .restart local v5    # "ex":Ljava/lang/Throwable;
    move-object v7, v3

    move-object v6, v7

    .line 1331
    .local v6, "tr":Ljava/lang/Object;, "TT;"
    move-object v7, v6

    move-object v4, v7

    .local v4, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method
