.class final Ljava/util/concurrent/CompletableFuture$ApplyToEither;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ApplyToEither"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
            "<TU;>;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;

.field final fn:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<-TT;+TU;>;"
        }
    .end annotation
.end field

.field final snd:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;"
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
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1047
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ApplyToEither;, "Ljava/util/concurrent/CompletableFuture$ApplyToEither<TT;TU;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v2, p2

    .local v2, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v3, p3

    .local v3, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    move-object v4, p4

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    move-object v5, p5

    .local v5, "executor":Ljava/util/concurrent/Executor;
    move-object v6, v0

    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1048
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->snd:Ljava/util/concurrent/CompletableFuture;

    .line 1049
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->fn:Ljava/util/function/Function;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 1050
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->executor:Ljava/util/concurrent/Executor;

    .line 1051
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 1058
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$ApplyToEither;, "Ljava/util/concurrent/CompletableFuture$ApplyToEither<TT;TU;>;"
    move-object v11, v0

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v4, v12

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    if-eqz v11, :cond_4

    move-object v11, v0

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->fn:Ljava/util/function/Function;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v3, v12

    .local v3, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    if-eqz v11, :cond_4

    move-object v11, v0

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->src:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v1, v12

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v5, v12

    .local v5, "r":Ljava/lang/Object;
    if-nez v11, :cond_1

    .end local v5    # "r":Ljava/lang/Object;
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v2, v12

    .local v2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v11, :cond_4

    move-object v11, v2

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v5, v12

    .restart local v5    # "r":Ljava/lang/Object;
    if-eqz v11, :cond_4

    .end local v2    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    :cond_1
    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 1062
    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->compareAndSet(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1063
    move-object v11, v5

    instance-of v11, v11, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v11, :cond_5

    .line 1064
    move-object v11, v5

    check-cast v11, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v7, v11

    .line 1065
    .local v7, "ex":Ljava/lang/Throwable;
    const/4 v11, 0x0

    move-object v6, v11

    .line 1072
    :goto_0
    move-object v11, v0

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->executor:Ljava/util/concurrent/Executor;

    move-object v8, v11

    .line 1073
    .local v8, "e":Ljava/util/concurrent/Executor;
    const/4 v11, 0x0

    move-object v9, v11

    .line 1074
    .local v9, "u":Ljava/lang/Object;, "TU;"
    move-object v11, v7

    if-nez v11, :cond_2

    .line 1076
    move-object v11, v8

    if-eqz v11, :cond_6

    .line 1077
    move-object v11, v8

    :try_start_0
    new-instance v12, Ljava/util/concurrent/CompletableFuture$AsyncApply;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v6

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v16}, Ljava/util/concurrent/CompletableFuture$AsyncApply;-><init>(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v11, v12}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .line 1084
    .end local v9    # "u":Ljava/lang/Object;, "TU;"
    :cond_2
    :goto_1
    move-object v11, v8

    if-eqz v11, :cond_3

    move-object v11, v7

    if-eqz v11, :cond_4

    .line 1085
    :cond_3
    move-object v11, v4

    move-object v12, v9

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1087
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v3    # "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .end local v5    # "r":Ljava/lang/Object;
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v8    # "e":Ljava/util/concurrent/Executor;
    :cond_4
    return-void

    .line 1068
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .restart local v3    # "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .restart local v5    # "r":Ljava/lang/Object;
    :cond_5
    const/4 v11, 0x0

    move-object v7, v11

    .line 1069
    .restart local v7    # "ex":Ljava/lang/Throwable;
    move-object v11, v5

    move-object v8, v11

    .line 1070
    .local v8, "tr":Ljava/lang/Object;, "TT;"
    move-object v11, v8

    move-object v6, v11

    .local v6, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1079
    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    .local v8, "e":Ljava/util/concurrent/Executor;
    .restart local v9    # "u":Ljava/lang/Object;, "TU;"
    :cond_6
    move-object v11, v3

    move-object v12, v6

    :try_start_1
    invoke-interface {v11, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    move-object v9, v11

    goto :goto_1

    .line 1080
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 1081
    .local v10, "rex":Ljava/lang/Throwable;
    move-object v11, v10

    move-object v7, v11

    goto :goto_1
.end method
