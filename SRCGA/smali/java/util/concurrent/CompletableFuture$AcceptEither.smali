.class final Ljava/util/concurrent/CompletableFuture$AcceptEither;
.super Ljava/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AcceptEither"
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
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;

.field final fn:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<-TT;>;"
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
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1101
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AcceptEither;, "Ljava/util/concurrent/CompletableFuture$AcceptEither<TT;>;"
    move-object v1, p1

    .local v1, "src":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v2, p2

    .local v2, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object v3, p3

    .local v3, "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object v4, p4

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    move-object v5, p5

    .local v5, "executor":Ljava/util/concurrent/Executor;
    move-object v6, v0

    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture$Completion;-><init>()V

    .line 1102
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$AcceptEither;->src:Ljava/util/concurrent/CompletableFuture;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$AcceptEither;->snd:Ljava/util/concurrent/CompletableFuture;

    .line 1103
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$AcceptEither;->fn:Ljava/util/function/Consumer;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$AcceptEither;->dst:Ljava/util/concurrent/CompletableFuture;

    .line 1104
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$AcceptEither;->executor:Ljava/util/concurrent/Executor;

    .line 1105
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .prologue
    .line 1112
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$AcceptEither;, "Ljava/util/concurrent/CompletableFuture$AcceptEither<TT;>;"
    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AcceptEither;->dst:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v4, v11

    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    if-eqz v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AcceptEither;->fn:Ljava/util/function/Consumer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v3, v11

    .local v3, "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-eqz v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AcceptEither;->src:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v1, v11

    .local v1, "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v10, :cond_0

    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v5, v11

    .local v5, "r":Ljava/lang/Object;
    if-nez v10, :cond_1

    .end local v5    # "r":Ljava/lang/Object;
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AcceptEither;->snd:Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v2, v11

    .local v2, "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    if-eqz v10, :cond_4

    move-object v10, v2

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v5, v11

    .restart local v5    # "r":Ljava/lang/Object;
    if-eqz v10, :cond_4

    .end local v2    # "b":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    :cond_1
    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1116
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture$AcceptEither;->compareAndSet(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1117
    move-object v10, v5

    instance-of v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v10, :cond_5

    .line 1118
    move-object v10, v5

    check-cast v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v7, v10

    .line 1119
    .local v7, "ex":Ljava/lang/Throwable;
    const/4 v10, 0x0

    move-object v6, v10

    .line 1126
    :goto_0
    move-object v10, v0

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AcceptEither;->executor:Ljava/util/concurrent/Executor;

    move-object v8, v10

    .line 1127
    .local v8, "e":Ljava/util/concurrent/Executor;
    move-object v10, v7

    if-nez v10, :cond_2

    .line 1129
    move-object v10, v8

    if-eqz v10, :cond_6

    .line 1130
    move-object v10, v8

    :try_start_0
    new-instance v11, Ljava/util/concurrent/CompletableFuture$AsyncAccept;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v6

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v12, v13, v14, v15}, Ljava/util/concurrent/CompletableFuture$AsyncAccept;-><init>(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v10, v11}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    .line 1137
    :cond_2
    :goto_1
    move-object v10, v8

    if-eqz v10, :cond_3

    move-object v10, v7

    if-eqz v10, :cond_4

    .line 1138
    :cond_3
    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1140
    .end local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .end local v3    # "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .end local v5    # "r":Ljava/lang/Object;
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v8    # "e":Ljava/util/concurrent/Executor;
    :cond_4
    return-void

    .line 1122
    .restart local v1    # "a":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    .restart local v3    # "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .restart local v5    # "r":Ljava/lang/Object;
    :cond_5
    const/4 v10, 0x0

    move-object v7, v10

    .line 1123
    .restart local v7    # "ex":Ljava/lang/Throwable;
    move-object v10, v5

    move-object v8, v10

    .line 1124
    .local v8, "tr":Ljava/lang/Object;, "TT;"
    move-object v10, v8

    move-object v6, v10

    .local v6, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1132
    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    .local v8, "e":Ljava/util/concurrent/Executor;
    :cond_6
    move-object v10, v3

    move-object v11, v6

    :try_start_1
    invoke-interface {v10, v11}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1133
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 1134
    .local v9, "rex":Ljava/lang/Throwable;
    move-object v10, v9

    move-object v7, v10

    goto :goto_1
.end method
