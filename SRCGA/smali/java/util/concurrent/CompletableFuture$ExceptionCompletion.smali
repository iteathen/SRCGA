.class final Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionCompletion"
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

.field final fn:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field

.field final src:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1230
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;, "Ljava/util/concurrent/CompletableFuture$ExceptionCompletion<TT;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    move-object v3, p3

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1231
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;->fn:Ljava/util/function/Function;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 1232
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 1237
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;, "Ljava/util/concurrent/CompletableFuture$ExceptionCompletion<TT;>;"
    const/4 v9, 0x0

    move-object v5, v9

    .local v5, "t":Ljava/lang/Object;, "TT;"
    const/4 v9, 0x0

    move-object v7, v9

    .line 1238
    .local v7, "dx":Ljava/lang/Throwable;
    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v3, v10

    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;->fn:Ljava/util/function/Function;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v2, v10

    .local v2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v1, v10

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v9, :cond_0

    move-object v9, v1

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v4, v10

    .local v4, "r":Ljava/lang/Object;
    if-eqz v9, :cond_0

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1242
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;->compareAndSet(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1243
    move-object v9, v4

    instance-of v9, v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v9, :cond_1

    move-object v9, v4

    check-cast v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v9, v9, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v6, v10

    .local v6, "ex":Ljava/lang/Throwable;
    if-eqz v9, :cond_1

    .line 1246
    move-object v9, v2

    move-object v10, v6

    :try_start_0
    invoke-interface {v9, v10}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v5, v9

    .line 1249
    .line 1255
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    .end local v6    # "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v9, v3

    move-object v10, v5

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1257
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v2    # "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    .end local v4    # "r":Ljava/lang/Object;
    :cond_0
    return-void

    .line 1247
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .restart local v2    # "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Throwable;+TT;>;"
    .restart local v4    # "r":Ljava/lang/Object;
    .restart local v5    # "t":Ljava/lang/Object;, "TT;"
    .restart local v6    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 1248
    .local v8, "rex":Ljava/lang/Throwable;
    move-object v9, v8

    move-object v7, v9

    .line 1249
    goto :goto_0

    .line 1252
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "rex":Ljava/lang/Throwable;
    :cond_1
    move-object v9, v4

    move-object v8, v9

    .line 1253
    .local v8, "tr":Ljava/lang/Object;, "TT;"
    move-object v9, v8

    move-object v5, v9

    goto :goto_0
.end method
