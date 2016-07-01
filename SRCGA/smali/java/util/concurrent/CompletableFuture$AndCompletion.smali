.class final Ljava/util/concurrent/CompletableFuture$AndCompletion;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndCompletion"
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

.field final snd:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
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
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1011
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AndCompletion;
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v2, p2

    .local v2, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v3, p3

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1012
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$AndCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$AndCompletion;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$AndCompletion;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 1013
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 1019
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AndCompletion;
    move-object v7, v0

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AndCompletion;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AndCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v1, v8

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v7, :cond_1

    move-object v7, v1

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v4, v8

    .local v4, "r":Ljava/lang/Object;
    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AndCompletion;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v2, v8

    .local v2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v7, :cond_1

    move-object v7, v2

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v5, v8

    .local v5, "s":Ljava/lang/Object;
    if-eqz v7, :cond_1

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1024
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/CompletableFuture$AndCompletion;->compareAndSet(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1025
    move-object v7, v4

    instance-of v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v7, :cond_2

    .line 1026
    move-object v7, v4

    check-cast v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v7

    .line 1029
    .local v6, "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v7, v6

    if-nez v7, :cond_0

    move-object v7, v5

    instance-of v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v7, :cond_0

    .line 1030
    move-object v7, v5

    check-cast v7, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v7

    .line 1031
    :cond_0
    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1033
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v2    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .end local v4    # "r":Ljava/lang/Object;
    .end local v5    # "s":Ljava/lang/Object;
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 1028
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .restart local v2    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    .restart local v4    # "r":Ljava/lang/Object;
    .restart local v5    # "s":Ljava/lang/Object;
    :cond_2
    const/4 v7, 0x0

    move-object v6, v7

    .restart local v6    # "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method
