.class public Ljava/util/concurrent/CompletableFuture;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/util/concurrent/CompletionStage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CompletableFuture$ThenCompose;,
        Ljava/util/concurrent/CompletableFuture$HandleCompletion;,
        Ljava/util/concurrent/CompletableFuture$ThenPropagate;,
        Ljava/util/concurrent/CompletableFuture$ThenCopy;,
        Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;,
        Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;,
        Ljava/util/concurrent/CompletableFuture$OrCompletion;,
        Ljava/util/concurrent/CompletableFuture$RunAfterEither;,
        Ljava/util/concurrent/CompletableFuture$AcceptEither;,
        Ljava/util/concurrent/CompletableFuture$ApplyToEither;,
        Ljava/util/concurrent/CompletableFuture$AndCompletion;,
        Ljava/util/concurrent/CompletableFuture$RunAfterBoth;,
        Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;,
        Ljava/util/concurrent/CompletableFuture$ThenCombine;,
        Ljava/util/concurrent/CompletableFuture$ThenRun;,
        Ljava/util/concurrent/CompletableFuture$ThenAccept;,
        Ljava/util/concurrent/CompletableFuture$ThenApply;,
        Ljava/util/concurrent/CompletableFuture$Completion;,
        Ljava/util/concurrent/CompletableFuture$CompletionNode;,
        Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;,
        Ljava/util/concurrent/CompletableFuture$AsyncCompose;,
        Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;,
        Ljava/util/concurrent/CompletableFuture$AsyncAccept;,
        Ljava/util/concurrent/CompletableFuture$AsyncCombine;,
        Ljava/util/concurrent/CompletableFuture$AsyncApply;,
        Ljava/util/concurrent/CompletableFuture$AsyncSupply;,
        Ljava/util/concurrent/CompletableFuture$AsyncRun;,
        Ljava/util/concurrent/CompletableFuture$Async;,
        Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;,
        Ljava/util/concurrent/CompletableFuture$WaitNode;,
        Ljava/util/concurrent/CompletableFuture$AltResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;",
        "Ljava/util/concurrent/CompletionStage",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final COMPLETIONS:J

.field static final NCPU:I

.field static final NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

.field private static final RESULT:J

.field static final SPINS:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final WAITERS:J


# instance fields
.field volatile completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

.field volatile result:Ljava/lang/Object;

.field volatile waiters:Ljava/util/concurrent/CompletableFuture$WaitNode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 166
    new-instance v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    sput-object v2, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .line 224
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sput v2, Ljava/util/concurrent/CompletableFuture;->NCPU:I

    .line 230
    sget v2, Ljava/util/concurrent/CompletableFuture;->NCPU:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/16 v2, 0x100

    :goto_0
    sput v2, Ljava/util/concurrent/CompletableFuture;->SPINS:I

    .line 3000
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    .line 3001
    const-class v2, Ljava/util/concurrent/CompletableFuture;

    move-object v1, v2

    .line 3002
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v3, v1

    const-string v4, "result"

    .line 3003
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    .line 3004
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v3, v1

    const-string v4, "waiters"

    .line 3005
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->WAITERS:J

    .line 3006
    sget-object v2, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v3, v1

    const-string v4, "completions"

    .line 3007
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3010
    .line 3011
    return-void

    .line 230
    .end local v1    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3008
    .restart local v1    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 3009
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2113
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2114
    return-void
.end method

.method static synthetic access$000(Ljava/util/concurrent/CompletableFuture;Z)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "x0":Ljava/util/concurrent/CompletableFuture;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljava/util/concurrent/CompletableFuture;
    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 111
    sget-wide v0, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    return-wide v0
.end method

.method static synthetic access$200()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    return-object v0
.end method

.method public static varargs allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2691
    move-object/from16 v1, p0

    .local v1, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v8, v1

    array-length v8, v8

    move v2, v8

    .line 2692
    .local v2, "len":I
    move v8, v2

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 2693
    move-object v8, v1

    const/4 v9, 0x0

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-static {v8, v9, v10}, Ljava/util/concurrent/CompletableFuture;->allTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v8

    move-object v1, v8

    .line 2719
    .end local v1    # "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_0
    return-object v1

    .line 2695
    .restart local v1    # "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_0
    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v3, v8

    .line 2697
    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    move v8, v2

    if-nez v8, :cond_1

    .line 2698
    move-object v8, v3

    sget-object v9, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    iput-object v9, v8, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2719
    :goto_1
    move-object v8, v3

    move-object v1, v8

    goto :goto_0

    .line 2699
    :cond_1
    move-object v8, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v4, v9

    .local v4, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v8, :cond_2

    .line 2700
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 2702
    :cond_2
    const/4 v8, 0x0

    move-object v5, v8

    .line 2703
    .local v5, "d":Ljava/util/concurrent/CompletableFuture$ThenPropagate;
    const/4 v8, 0x0

    move-object v6, v8

    .line 2705
    .local v6, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_3
    :goto_2
    move-object v8, v4

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v7, v9

    .local v7, "r":Ljava/lang/Object;
    if-nez v8, :cond_6

    .line 2706
    move-object v8, v5

    if-nez v8, :cond_4

    .line 2707
    new-instance v8, Ljava/util/concurrent/CompletableFuture$ThenPropagate;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v4

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Ljava/util/concurrent/CompletableFuture$ThenPropagate;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    move-object v5, v8

    goto :goto_2

    .line 2708
    :cond_4
    move-object v8, v6

    if-nez v8, :cond_5

    .line 2709
    new-instance v8, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v5

    invoke-direct {v9, v10}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v6, v8

    goto :goto_2

    .line 2710
    :cond_5
    sget-object v8, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v9, v4

    sget-wide v10, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object v12, v6

    move-object v13, v4

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v15, v12

    move-object/from16 v16, v13

    move-object/from16 v12, v16

    move-object v13, v15

    move-object/from16 v14, v16

    iput-object v14, v13, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v13, v6

    .line 2711
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2712
    .line 2714
    :cond_6
    move-object v8, v7

    if-eqz v8, :cond_8

    move-object v8, v5

    if-eqz v8, :cond_7

    move-object v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/CompletableFuture$ThenPropagate;->compareAndSet(II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2715
    :cond_7
    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v7

    instance-of v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v10, :cond_9

    move-object v10, v7

    check-cast v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    :goto_3
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2717
    :cond_8
    move-object v8, v4

    invoke-virtual {v8}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    goto :goto_1

    .line 2715
    :cond_9
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private static allTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;II)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2730
    move-object/from16 v3, p0

    .local v3, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    move/from16 v4, p1

    .local v4, "lo":I
    move/from16 v5, p2

    .local v5, "hi":I
    move/from16 v16, v4

    move/from16 v17, v5

    add-int v16, v16, v17

    const/16 v17, 0x1

    ushr-int/lit8 v16, v16, 0x1

    move/from16 v8, v16

    .line 2731
    .local v8, "mid":I
    move/from16 v16, v4

    move/from16 v17, v8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v16, v3

    move/from16 v17, v4

    aget-object v16, v16, v17

    :goto_0
    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v6, v17

    .local v6, "fst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v16, :cond_0

    move/from16 v16, v5

    move/from16 v17, v8

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v16, v3

    move/from16 v17, v5

    aget-object v16, v16, v17

    .line 2732
    :goto_1
    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v7, v17

    .local v7, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v16, :cond_3

    .line 2733
    .end local v7    # "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_0
    new-instance v16, Ljava/lang/NullPointerException;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/lang/NullPointerException;-><init>()V

    throw v16

    .line 2731
    .end local v6    # "fst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_1
    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v8

    invoke-static/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture;->allTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v16

    goto :goto_0

    .restart local v6    # "fst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_2
    move-object/from16 v16, v3

    move/from16 v17, v8

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v5

    .line 2732
    invoke-static/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture;->allTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v16

    goto :goto_1

    .line 2734
    .restart local v7    # "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_3
    new-instance v16, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object/from16 v9, v16

    .line 2735
    .local v9, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const/16 v16, 0x0

    move-object/from16 v10, v16

    .line 2736
    .local v10, "d":Ljava/util/concurrent/CompletableFuture$AndCompletion;
    const/16 v16, 0x0

    move-object/from16 v11, v16

    .local v11, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    const/16 v16, 0x0

    move-object/from16 v12, v16

    .line 2737
    .local v12, "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    const/16 v16, 0x0

    move-object/from16 v13, v16

    .local v13, "r":Ljava/lang/Object;
    const/16 v16, 0x0

    move-object/from16 v14, v16

    .line 2738
    .end local v13    # "r":Ljava/lang/Object;
    :cond_4
    :goto_2
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v13, v17

    .restart local v13    # "r":Ljava/lang/Object;
    if-eqz v16, :cond_5

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v14, v17

    .local v14, "s":Ljava/lang/Object;
    if-nez v16, :cond_9

    .line 2739
    .end local v14    # "s":Ljava/lang/Object;
    :cond_5
    move-object/from16 v16, v10

    if-nez v16, :cond_6

    .line 2740
    new-instance v16, Ljava/util/concurrent/CompletableFuture$AndCompletion;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    invoke-direct/range {v17 .. v20}, Ljava/util/concurrent/CompletableFuture$AndCompletion;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    move-object/from16 v10, v16

    goto :goto_2

    .line 2741
    :cond_6
    move-object/from16 v16, v11

    if-nez v16, :cond_7

    .line 2742
    new-instance v16, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v10

    invoke-direct/range {v17 .. v18}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object/from16 v11, v16

    goto :goto_2

    .line 2743
    :cond_7
    move-object/from16 v16, v12

    if-nez v16, :cond_8

    .line 2744
    sget-object v16, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v17, v6

    sget-wide v18, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v20, v11

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v0

    move-object/from16 v23, v20

    move-object/from16 v24, v21

    move-object/from16 v20, v24

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v11

    .line 2745
    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2746
    new-instance v16, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v10

    invoke-direct/range {v17 .. v18}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object/from16 v12, v16

    goto/16 :goto_2

    .line 2748
    :cond_8
    sget-object v16, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v17, v7

    sget-wide v18, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v20, v12

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v0

    move-object/from16 v23, v20

    move-object/from16 v24, v21

    move-object/from16 v20, v24

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v12

    .line 2749
    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2750
    .line 2752
    :cond_9
    move-object/from16 v16, v13

    if-nez v16, :cond_a

    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v13, v17

    if-eqz v16, :cond_e

    :cond_a
    move-object/from16 v16, v14

    if-nez v16, :cond_b

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v14, v17

    .restart local v14    # "s":Ljava/lang/Object;
    if-eqz v16, :cond_e

    .end local v14    # "s":Ljava/lang/Object;
    :cond_b
    move-object/from16 v16, v10

    if-eqz v16, :cond_c

    move-object/from16 v16, v10

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 2754
    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture$AndCompletion;->compareAndSet(II)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 2756
    :cond_c
    move-object/from16 v16, v13

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 2757
    move-object/from16 v16, v13

    check-cast v16, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v15, v16

    .line 2760
    .local v15, "ex":Ljava/lang/Throwable;
    :goto_3
    move-object/from16 v16, v15

    if-nez v16, :cond_d

    move-object/from16 v16, v14

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move/from16 v16, v0

    if-eqz v16, :cond_d

    .line 2761
    move-object/from16 v16, v14

    check-cast v16, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v15, v16

    .line 2762
    :cond_d
    move-object/from16 v16, v9

    const/16 v17, 0x0

    move-object/from16 v18, v15

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2764
    .end local v15    # "ex":Ljava/lang/Throwable;
    :cond_e
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 2765
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 2766
    move-object/from16 v16, v9

    move-object/from16 v3, v16

    .end local v3    # "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    return-object v3

    .line 2759
    .restart local v3    # "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_f
    const/16 v16, 0x0

    move-object/from16 v15, v16

    .restart local v15    # "ex":Ljava/lang/Throwable;
    goto :goto_3
.end method

.method public static varargs anyOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2785
    move-object/from16 v1, p0

    .local v1, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    move-object v10, v1

    array-length v10, v10

    move v2, v10

    .line 2786
    .local v2, "len":I
    move v10, v2

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 2787
    move-object v10, v1

    const/4 v11, 0x0

    move v12, v2

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-static {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture;->anyTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v10

    move-object v1, v10

    .line 2822
    .end local v1    # "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    :goto_0
    return-object v1

    .line 2789
    .restart local v1    # "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_0
    new-instance v10, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v3, v10

    .line 2791
    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    move v10, v2

    if-nez v10, :cond_1

    .line 2792
    .line 2822
    :goto_1
    move-object v10, v3

    move-object v1, v10

    goto :goto_0

    .line 2793
    :cond_1
    move-object v10, v1

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v4, v11

    .local v4, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v10, :cond_2

    .line 2794
    new-instance v10, Ljava/lang/NullPointerException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 2796
    :cond_2
    const/4 v10, 0x0

    move-object v5, v10

    .line 2797
    .local v5, "d":Ljava/util/concurrent/CompletableFuture$ThenCopy;, "Ljava/util/concurrent/CompletableFuture$ThenCopy<Ljava/lang/Object;>;"
    const/4 v10, 0x0

    move-object v6, v10

    .line 2799
    .local v6, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_3
    :goto_2
    move-object v10, v4

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v7, v11

    .local v7, "r":Ljava/lang/Object;
    if-nez v10, :cond_6

    .line 2800
    move-object v10, v5

    if-nez v10, :cond_4

    .line 2801
    new-instance v10, Ljava/util/concurrent/CompletableFuture$ThenCopy;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v4

    move-object v13, v3

    invoke-direct {v11, v12, v13}, Ljava/util/concurrent/CompletableFuture$ThenCopy;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    move-object v5, v10

    goto :goto_2

    .line 2802
    :cond_4
    move-object v10, v6

    if-nez v10, :cond_5

    .line 2803
    new-instance v10, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v5

    invoke-direct {v11, v12}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v6, v10

    goto :goto_2

    .line 2804
    :cond_5
    sget-object v10, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v11, v4

    sget-wide v12, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object v14, v6

    move-object v15, v4

    iget-object v15, v15, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v14, v18

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v0, v16

    iput-object v0, v15, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v15, v6

    .line 2805
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2806
    .line 2808
    :cond_6
    move-object v10, v7

    if-eqz v10, :cond_8

    move-object v10, v5

    if-eqz v10, :cond_7

    move-object v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture$ThenCopy;->compareAndSet(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2810
    :cond_7
    move-object v10, v7

    instance-of v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v10, :cond_9

    .line 2811
    move-object v10, v7

    check-cast v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v10

    .line 2812
    .local v8, "ex":Ljava/lang/Throwable;
    const/4 v10, 0x0

    move-object v9, v10

    .line 2818
    :goto_3
    move-object v10, v3

    move-object v11, v9

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2820
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_8
    move-object v10, v4

    invoke-virtual {v10}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    goto/16 :goto_1

    .line 2815
    :cond_9
    const/4 v10, 0x0

    move-object v8, v10

    .line 2816
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object v10, v7

    move-object v9, v10

    .local v9, "t":Ljava/lang/Object;
    goto :goto_3
.end method

.method private static anyTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;II)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2832
    move-object/from16 v3, p0

    .local v3, "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    move/from16 v4, p1

    .local v4, "lo":I
    move/from16 v5, p2

    .local v5, "hi":I
    move/from16 v16, v4

    move/from16 v17, v5

    add-int v16, v16, v17

    const/16 v17, 0x1

    ushr-int/lit8 v16, v16, 0x1

    move/from16 v8, v16

    .line 2833
    .local v8, "mid":I
    move/from16 v16, v4

    move/from16 v17, v8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v16, v3

    move/from16 v17, v4

    aget-object v16, v16, v17

    :goto_0
    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v6, v17

    .local v6, "fst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-eqz v16, :cond_0

    move/from16 v16, v5

    move/from16 v17, v8

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v16, v3

    move/from16 v17, v5

    aget-object v16, v16, v17

    .line 2834
    :goto_1
    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v7, v17

    .local v7, "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    if-nez v16, :cond_3

    .line 2835
    .end local v7    # "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_0
    new-instance v16, Ljava/lang/NullPointerException;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/lang/NullPointerException;-><init>()V

    throw v16

    .line 2833
    .end local v6    # "fst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_1
    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v8

    invoke-static/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture;->anyTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v16

    goto :goto_0

    .restart local v6    # "fst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_2
    move-object/from16 v16, v3

    move/from16 v17, v8

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v5

    .line 2834
    invoke-static/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture;->anyTree([Ljava/util/concurrent/CompletableFuture;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v16

    goto :goto_1

    .line 2836
    .restart local v7    # "snd":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_3
    new-instance v16, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object/from16 v9, v16

    .line 2837
    .local v9, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Object;>;"
    const/16 v16, 0x0

    move-object/from16 v10, v16

    .line 2838
    .local v10, "d":Ljava/util/concurrent/CompletableFuture$OrCompletion;
    const/16 v16, 0x0

    move-object/from16 v11, v16

    .local v11, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    const/16 v16, 0x0

    move-object/from16 v12, v16

    .line 2840
    .local v12, "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_4
    :goto_2
    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v13, v17

    .local v13, "r":Ljava/lang/Object;
    if-nez v16, :cond_8

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v13, v17

    if-nez v16, :cond_8

    .line 2841
    move-object/from16 v16, v10

    if-nez v16, :cond_5

    .line 2842
    new-instance v16, Ljava/util/concurrent/CompletableFuture$OrCompletion;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    invoke-direct/range {v17 .. v20}, Ljava/util/concurrent/CompletableFuture$OrCompletion;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    move-object/from16 v10, v16

    goto :goto_2

    .line 2843
    :cond_5
    move-object/from16 v16, v11

    if-nez v16, :cond_6

    .line 2844
    new-instance v16, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v10

    invoke-direct/range {v17 .. v18}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object/from16 v11, v16

    goto :goto_2

    .line 2845
    :cond_6
    move-object/from16 v16, v12

    if-nez v16, :cond_7

    .line 2846
    sget-object v16, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v17, v6

    sget-wide v18, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v20, v11

    move-object/from16 v21, v6

    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v0

    move-object/from16 v23, v20

    move-object/from16 v24, v21

    move-object/from16 v20, v24

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v11

    .line 2847
    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2848
    new-instance v16, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v10

    invoke-direct/range {v17 .. v18}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object/from16 v12, v16

    goto/16 :goto_2

    .line 2850
    :cond_7
    sget-object v16, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v17, v7

    sget-wide v18, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v20, v12

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v0

    move-object/from16 v23, v20

    move-object/from16 v24, v21

    move-object/from16 v20, v24

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v12

    .line 2851
    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2852
    .line 2854
    :cond_8
    move-object/from16 v16, v13

    if-nez v16, :cond_9

    move-object/from16 v16, v6

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v13, v17

    if-nez v16, :cond_9

    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v13, v17

    if-eqz v16, :cond_b

    :cond_9
    move-object/from16 v16, v10

    if-eqz v16, :cond_a

    move-object/from16 v16, v10

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 2856
    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture$OrCompletion;->compareAndSet(II)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 2858
    :cond_a
    move-object/from16 v16, v13

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 2859
    move-object/from16 v16, v13

    check-cast v16, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v14, v16

    .line 2860
    .local v14, "ex":Ljava/lang/Throwable;
    const/16 v16, 0x0

    move-object/from16 v15, v16

    .line 2866
    :goto_3
    move-object/from16 v16, v9

    move-object/from16 v17, v15

    move-object/from16 v18, v14

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2868
    .end local v14    # "ex":Ljava/lang/Throwable;
    :cond_b
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 2869
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 2870
    move-object/from16 v16, v9

    move-object/from16 v3, v16

    .end local v3    # "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    return-object v3

    .line 2863
    .restart local v3    # "cfs":[Ljava/util/concurrent/CompletableFuture;, "[Ljava/util/concurrent/CompletableFuture<*>;"
    :cond_c
    const/16 v16, 0x0

    move-object/from16 v14, v16

    .line 2864
    .restart local v14    # "ex":Ljava/lang/Throwable;
    move-object/from16 v16, v13

    move-object/from16 v15, v16

    .local v15, "t":Ljava/lang/Object;
    goto :goto_3
.end method

.method public static completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2197
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;, "TU;"
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v1, v2

    .line 2198
    .local v1, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    move-object v2, v1

    move-object v3, v0

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    :goto_0
    iput-object v3, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2199
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;, "TU;"
    return-object v0

    .line 2198
    .restart local v0    # "value":Ljava/lang/Object;, "TU;"
    :cond_0
    move-object v3, v0

    goto :goto_0
.end method

.method private doAcceptEither(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1867
    move-object/from16 v2, p0

    .local v2, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v3, p1

    .local v3, "other":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object/from16 v4, p2

    .local v4, "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object/from16 v5, p3

    .local v5, "e":Ljava/util/concurrent/Executor;
    move-object v12, v3

    if-eqz v12, :cond_0

    move-object v12, v4

    if-nez v12, :cond_1

    :cond_0
    new-instance v12, Ljava/lang/NullPointerException;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v12

    .line 1868
    :cond_1
    new-instance v12, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v6, v12

    .line 1869
    .local v6, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const/4 v12, 0x0

    move-object v7, v12

    .line 1871
    .local v7, "d":Ljava/util/concurrent/CompletableFuture$AcceptEither;, "Ljava/util/concurrent/CompletableFuture$AcceptEither<TT;>;"
    move-object v12, v2

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v8, v13

    .local v8, "r":Ljava/lang/Object;
    if-nez v12, :cond_3

    move-object v12, v3

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v8, v13

    if-nez v12, :cond_3

    .line 1872
    new-instance v12, Ljava/util/concurrent/CompletableFuture$AcceptEither;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Ljava/util/concurrent/CompletableFuture$AcceptEither;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object v7, v12

    .line 1873
    const/4 v12, 0x0

    move-object v9, v12

    .local v9, "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    new-instance v12, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v7

    invoke-direct {v13, v14}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v10, v12

    .line 1874
    .local v10, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_2
    :goto_0
    move-object v12, v2

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v8, v13

    if-nez v12, :cond_3

    move-object v12, v3

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v8, v13

    if-nez v12, :cond_3

    .line 1875
    move-object v12, v9

    if-eqz v12, :cond_8

    .line 1876
    sget-object v12, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v13, v3

    sget-wide v14, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v16, v9

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v0

    move-object/from16 v19, v16

    move-object/from16 v20, v17

    move-object/from16 v16, v20

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v9

    .line 1877
    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1878
    .line 1885
    .end local v9    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v10    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_3
    move-object v12, v8

    if-eqz v12, :cond_7

    move-object v12, v7

    if-eqz v12, :cond_4

    move-object v12, v7

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture$AcceptEither;->compareAndSet(II)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1887
    :cond_4
    move-object v12, v8

    instance-of v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v12, :cond_9

    .line 1888
    move-object v12, v8

    check-cast v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v10, v12

    .line 1889
    .local v10, "ex":Ljava/lang/Throwable;
    const/4 v12, 0x0

    move-object v9, v12

    .line 1896
    :goto_1
    move-object v12, v10

    if-nez v12, :cond_5

    .line 1898
    move-object v12, v5

    if-eqz v12, :cond_a

    .line 1899
    move-object v12, v5

    :try_start_0
    new-instance v13, Ljava/util/concurrent/CompletableFuture$AsyncAccept;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v9

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v17}, Ljava/util/concurrent/CompletableFuture$AsyncAccept;-><init>(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v12, v13}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1904
    .line 1906
    :cond_5
    :goto_2
    move-object v12, v5

    if-eqz v12, :cond_6

    move-object v12, v10

    if-eqz v12, :cond_7

    .line 1907
    :cond_6
    move-object v12, v6

    const/4 v13, 0x0

    move-object v14, v10

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1909
    .end local v10    # "ex":Ljava/lang/Throwable;
    :cond_7
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1910
    move-object v12, v3

    invoke-virtual {v12}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1911
    move-object v12, v6

    move-object v2, v12

    .end local v2    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v2

    .line 1880
    .restart local v2    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .restart local v9    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .local v10, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_8
    sget-object v12, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v13, v2

    sget-wide v14, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v16, v10

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v0

    move-object/from16 v19, v16

    move-object/from16 v20, v17

    move-object/from16 v16, v20

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v10

    .line 1881
    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1882
    new-instance v12, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v7

    invoke-direct {v13, v14}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v9, v12

    goto/16 :goto_0

    .line 1892
    .end local v9    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v10    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_9
    const/4 v12, 0x0

    move-object v10, v12

    .line 1893
    .local v10, "ex":Ljava/lang/Throwable;
    move-object v12, v8

    move-object v11, v12

    .line 1894
    .local v11, "tr":Ljava/lang/Object;, "TT;"
    move-object v12, v11

    move-object v9, v12

    .local v9, "t":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 1901
    .end local v9    # "t":Ljava/lang/Object;, "TT;"
    .end local v11    # "tr":Ljava/lang/Object;, "TT;"
    :cond_a
    move-object v12, v4

    move-object v13, v9

    :try_start_1
    invoke-interface {v12, v13}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1902
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 1903
    .local v11, "rex":Ljava/lang/Throwable;
    move-object v12, v11

    move-object v10, v12

    goto :goto_2
.end method

.method private doApplyToEither(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 1815
    move-object/from16 v3, p0

    .local v3, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v4, p1

    .local v4, "other":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TT;>;"
    move-object/from16 v5, p2

    .local v5, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    move-object/from16 v6, p3

    .local v6, "e":Ljava/util/concurrent/Executor;
    move-object v14, v4

    if-eqz v14, :cond_0

    move-object v14, v5

    if-nez v14, :cond_1

    :cond_0
    new-instance v14, Ljava/lang/NullPointerException;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1816
    :cond_1
    new-instance v14, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v7, v14

    .line 1817
    .local v7, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    const/4 v14, 0x0

    move-object v8, v14

    .line 1819
    .local v8, "d":Ljava/util/concurrent/CompletableFuture$ApplyToEither;, "Ljava/util/concurrent/CompletableFuture$ApplyToEither<TT;TU;>;"
    move-object v14, v3

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v9, v15

    .local v9, "r":Ljava/lang/Object;
    if-nez v14, :cond_3

    move-object v14, v4

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v9, v15

    if-nez v14, :cond_3

    .line 1820
    new-instance v14, Ljava/util/concurrent/CompletableFuture$ApplyToEither;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    invoke-direct/range {v15 .. v20}, Ljava/util/concurrent/CompletableFuture$ApplyToEither;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object v8, v14

    .line 1821
    const/4 v14, 0x0

    move-object v10, v14

    .local v10, "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    new-instance v14, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v16}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v11, v14

    .line 1822
    .local v11, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_2
    :goto_0
    move-object v14, v3

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v9, v15

    if-nez v14, :cond_3

    move-object v14, v4

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v9, v15

    if-nez v14, :cond_3

    .line 1823
    move-object v14, v10

    if-eqz v14, :cond_8

    .line 1824
    sget-object v14, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v15, v4

    sget-wide v16, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v18, v10

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v0

    move-object/from16 v21, v18

    move-object/from16 v22, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v10

    .line 1825
    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1826
    .line 1833
    .end local v10    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v11    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_3
    move-object v14, v9

    if-eqz v14, :cond_7

    move-object v14, v8

    if-eqz v14, :cond_4

    move-object v14, v8

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/util/concurrent/CompletableFuture$ApplyToEither;->compareAndSet(II)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1835
    :cond_4
    move-object v14, v9

    instance-of v14, v14, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v14, :cond_9

    .line 1836
    move-object v14, v9

    check-cast v14, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v11, v14

    .line 1837
    .local v11, "ex":Ljava/lang/Throwable;
    const/4 v14, 0x0

    move-object v10, v14

    .line 1844
    :goto_1
    const/4 v14, 0x0

    move-object v12, v14

    .line 1845
    .local v12, "u":Ljava/lang/Object;, "TU;"
    move-object v14, v11

    if-nez v14, :cond_5

    .line 1847
    move-object v14, v6

    if-eqz v14, :cond_a

    .line 1848
    move-object v14, v6

    :try_start_0
    new-instance v15, Ljava/util/concurrent/CompletableFuture$AsyncApply;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v10

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    invoke-direct/range {v16 .. v19}, Ljava/util/concurrent/CompletableFuture$AsyncApply;-><init>(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v14, v15}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    .line 1855
    .end local v12    # "u":Ljava/lang/Object;, "TU;"
    :cond_5
    :goto_2
    move-object v14, v6

    if-eqz v14, :cond_6

    move-object v14, v11

    if-eqz v14, :cond_7

    .line 1856
    :cond_6
    move-object v14, v7

    move-object v15, v12

    move-object/from16 v16, v11

    invoke-virtual/range {v14 .. v16}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1858
    .end local v11    # "ex":Ljava/lang/Throwable;
    :cond_7
    move-object v14, v3

    invoke-virtual {v14}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1859
    move-object v14, v4

    invoke-virtual {v14}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1860
    move-object v14, v7

    move-object v3, v14

    .end local v3    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v3

    .line 1828
    .restart local v3    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .restart local v10    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .local v11, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_8
    sget-object v14, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v15, v3

    sget-wide v16, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v18, v11

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v0

    move-object/from16 v21, v18

    move-object/from16 v22, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v11

    .line 1829
    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1830
    new-instance v14, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v16}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v10, v14

    goto/16 :goto_0

    .line 1840
    .end local v10    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v11    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_9
    const/4 v14, 0x0

    move-object v11, v14

    .line 1841
    .local v11, "ex":Ljava/lang/Throwable;
    move-object v14, v9

    move-object v12, v14

    .line 1842
    .local v12, "tr":Ljava/lang/Object;, "TT;"
    move-object v14, v12

    move-object v10, v14

    .local v10, "t":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 1850
    .end local v10    # "t":Ljava/lang/Object;, "TT;"
    .local v12, "u":Ljava/lang/Object;, "TU;"
    :cond_a
    move-object v14, v5

    move-object v15, v10

    :try_start_1
    invoke-interface {v14, v15}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    move-object v12, v14

    goto :goto_2

    .line 1851
    :catch_0
    move-exception v14

    move-object v13, v14

    .line 1852
    .local v13, "rex":Ljava/lang/Throwable;
    move-object v14, v13

    move-object v11, v14

    goto :goto_2
.end method

.method private doHandle(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2062
    move-object/from16 v3, p0

    .local v3, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v4, p1

    .local v4, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    move-object/from16 v5, p2

    .local v5, "e":Ljava/util/concurrent/Executor;
    move-object v14, v4

    if-nez v14, :cond_0

    new-instance v14, Ljava/lang/NullPointerException;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    invoke-direct {v15}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 2063
    :cond_0
    new-instance v14, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    invoke-direct {v15}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v6, v14

    .line 2064
    .local v6, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    const/4 v14, 0x0

    move-object v7, v14

    .line 2066
    .local v7, "d":Ljava/util/concurrent/CompletableFuture$HandleCompletion;, "Ljava/util/concurrent/CompletableFuture$HandleCompletion<TT;TU;>;"
    move-object v14, v3

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v8, v15

    .local v8, "r":Ljava/lang/Object;
    if-nez v14, :cond_2

    .line 2067
    new-instance v14, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    new-instance v16, Ljava/util/concurrent/CompletableFuture$HandleCompletion;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v5

    invoke-direct/range {v17 .. v21}, Ljava/util/concurrent/CompletableFuture$HandleCompletion;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    move-object/from16 v7, v17

    invoke-direct/range {v15 .. v16}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v9, v14

    .line 2070
    .local v9, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_1
    move-object v14, v3

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v8, v15

    if-nez v14, :cond_2

    .line 2071
    sget-object v14, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v15, v3

    sget-wide v16, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v0

    move-object/from16 v22, v18

    move-object/from16 v23, v19

    move-object/from16 v18, v23

    move-object/from16 v19, v22

    move-object/from16 v20, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v9

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2073
    .line 2076
    .end local v9    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_2
    move-object v14, v8

    if-eqz v14, :cond_5

    move-object v14, v7

    if-eqz v14, :cond_3

    move-object v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/util/concurrent/CompletableFuture$HandleCompletion;->compareAndSet(II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2078
    :cond_3
    move-object v14, v8

    instance-of v14, v14, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v14, :cond_6

    .line 2079
    move-object v14, v8

    check-cast v14, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v10, v14

    .line 2080
    .local v10, "ex":Ljava/lang/Throwable;
    const/4 v14, 0x0

    move-object v9, v14

    .line 2087
    :goto_0
    const/4 v14, 0x0

    move-object v11, v14

    .line 2088
    .local v11, "u":Ljava/lang/Object;, "TU;"
    const/4 v14, 0x0

    move-object v12, v14

    .line 2090
    .local v12, "dx":Ljava/lang/Throwable;
    move-object v14, v5

    if-eqz v14, :cond_7

    .line 2091
    move-object v14, v5

    :try_start_0
    new-instance v15, Ljava/util/concurrent/CompletableFuture$AsyncCombine;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v20}, Ljava/util/concurrent/CompletableFuture$AsyncCombine;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v14, v15}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2099
    .line 2100
    .end local v11    # "u":Ljava/lang/Object;, "TU;"
    :goto_1
    move-object v14, v5

    if-eqz v14, :cond_4

    move-object v14, v12

    if-eqz v14, :cond_5

    .line 2101
    :cond_4
    move-object v14, v6

    move-object v15, v11

    move-object/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2103
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v12    # "dx":Ljava/lang/Throwable;
    :cond_5
    move-object v14, v3

    invoke-virtual {v14}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 2104
    move-object v14, v6

    move-object v3, v14

    .end local v3    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v3

    .line 2083
    .restart local v3    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_6
    const/4 v14, 0x0

    move-object v10, v14

    .line 2084
    .restart local v10    # "ex":Ljava/lang/Throwable;
    move-object v14, v8

    move-object v11, v14

    .line 2085
    .local v11, "tr":Ljava/lang/Object;, "TT;"
    move-object v14, v11

    move-object v9, v14

    .local v9, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 2093
    .end local v9    # "t":Ljava/lang/Object;, "TT;"
    .local v11, "u":Ljava/lang/Object;, "TU;"
    .restart local v12    # "dx":Ljava/lang/Throwable;
    :cond_7
    move-object v14, v4

    move-object v15, v9

    move-object/from16 v16, v10

    :try_start_1
    invoke-interface/range {v14 .. v16}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    move-object v11, v14

    .line 2094
    const/4 v14, 0x0

    move-object v12, v14

    goto :goto_1

    .line 2096
    :catch_0
    move-exception v14

    move-object v13, v14

    .line 2097
    .local v13, "rex":Ljava/lang/Throwable;
    move-object v14, v13

    move-object v12, v14

    .line 2098
    const/4 v14, 0x0

    move-object v11, v14

    goto :goto_1
.end method

.method private doRunAfterBoth(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1761
    move-object/from16 v2, p0

    .local v2, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v3, p1

    .local v3, "other":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object/from16 v4, p2

    .local v4, "action":Ljava/lang/Runnable;
    move-object/from16 v5, p3

    .local v5, "e":Ljava/util/concurrent/Executor;
    move-object v12, v3

    if-eqz v12, :cond_0

    move-object v12, v4

    if-nez v12, :cond_1

    :cond_0
    new-instance v12, Ljava/lang/NullPointerException;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v12

    .line 1762
    :cond_1
    new-instance v12, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v6, v12

    .line 1763
    .local v6, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const/4 v12, 0x0

    move-object v7, v12

    .line 1764
    .local v7, "d":Ljava/util/concurrent/CompletableFuture$RunAfterBoth;
    const/4 v12, 0x0

    move-object v9, v12

    .line 1765
    .local v9, "s":Ljava/lang/Object;
    move-object v12, v2

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v8, v13

    .local v8, "r":Ljava/lang/Object;
    if-eqz v12, :cond_2

    move-object v12, v3

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v9, v13

    if-nez v12, :cond_6

    .line 1766
    .end local v9    # "s":Ljava/lang/Object;
    :cond_2
    new-instance v12, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object v7, v12

    .line 1767
    const/4 v12, 0x0

    move-object v10, v12

    .local v10, "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    new-instance v12, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v7

    invoke-direct {v13, v14}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v11, v12

    .line 1768
    .local v11, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_3
    :goto_0
    move-object v12, v8

    if-nez v12, :cond_4

    move-object v12, v2

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v8, v13

    if-eqz v12, :cond_5

    :cond_4
    move-object v12, v9

    if-nez v12, :cond_6

    move-object v12, v3

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v9, v13

    .restart local v9    # "s":Ljava/lang/Object;
    if-nez v12, :cond_6

    .line 1770
    .end local v9    # "s":Ljava/lang/Object;
    :cond_5
    move-object v12, v10

    if-eqz v12, :cond_c

    .line 1771
    move-object v12, v9

    if-nez v12, :cond_6

    sget-object v12, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v13, v3

    sget-wide v14, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v16, v10

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v0

    move-object/from16 v19, v16

    move-object/from16 v20, v17

    move-object/from16 v16, v20

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v10

    .line 1773
    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1774
    .line 1785
    .end local v10    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v11    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_6
    :goto_1
    move-object v12, v8

    if-eqz v12, :cond_b

    move-object v12, v9

    if-eqz v12, :cond_b

    move-object v12, v7

    if-eqz v12, :cond_7

    move-object v12, v7

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture$RunAfterBoth;->compareAndSet(II)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1787
    :cond_7
    move-object v12, v8

    instance-of v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v12, :cond_f

    .line 1788
    move-object v12, v8

    check-cast v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v10, v12

    .line 1791
    .local v10, "ex":Ljava/lang/Throwable;
    :goto_2
    move-object v12, v10

    if-nez v12, :cond_8

    move-object v12, v9

    instance-of v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v12, :cond_8

    .line 1792
    move-object v12, v9

    check-cast v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v10, v12

    .line 1793
    :cond_8
    move-object v12, v10

    if-nez v12, :cond_9

    .line 1795
    move-object v12, v5

    if-eqz v12, :cond_10

    .line 1796
    move-object v12, v5

    :try_start_0
    new-instance v13, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v4

    move-object/from16 v16, v6

    invoke-direct/range {v14 .. v16}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v12, v13}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1801
    .line 1803
    :cond_9
    :goto_3
    move-object v12, v5

    if-eqz v12, :cond_a

    move-object v12, v10

    if-eqz v12, :cond_b

    .line 1804
    :cond_a
    move-object v12, v6

    const/4 v13, 0x0

    move-object v14, v10

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1806
    .end local v10    # "ex":Ljava/lang/Throwable;
    :cond_b
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1807
    move-object v12, v3

    invoke-virtual {v12}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1808
    move-object v12, v6

    move-object v2, v12

    .end local v2    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v2

    .line 1776
    .restart local v2    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local v10, "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .restart local v11    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_c
    move-object v12, v8

    if-nez v12, :cond_d

    sget-object v12, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v13, v2

    sget-wide v14, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v16, v11

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v0

    move-object/from16 v19, v16

    move-object/from16 v20, v17

    move-object/from16 v16, v20

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v11

    .line 1778
    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1779
    :cond_d
    move-object v12, v9

    if-eqz v12, :cond_e

    .line 1780
    goto/16 :goto_1

    .line 1781
    :cond_e
    new-instance v12, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    move-object v14, v7

    invoke-direct {v13, v14}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v10, v12

    goto/16 :goto_0

    .line 1790
    .end local v10    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v11    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_f
    const/4 v12, 0x0

    move-object v10, v12

    .local v10, "ex":Ljava/lang/Throwable;
    goto :goto_2

    .line 1798
    :cond_10
    move-object v12, v4

    :try_start_1
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1799
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 1800
    .local v11, "rex":Ljava/lang/Throwable;
    move-object v12, v11

    move-object v10, v12

    goto :goto_3
.end method

.method private doRunAfterEither(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1918
    move-object/from16 v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v2, p1

    .local v2, "other":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<*>;"
    move-object/from16 v3, p2

    .local v3, "action":Ljava/lang/Runnable;
    move-object/from16 v4, p3

    .local v4, "e":Ljava/util/concurrent/Executor;
    move-object v10, v2

    if-eqz v10, :cond_0

    move-object v10, v3

    if-nez v10, :cond_1

    :cond_0
    new-instance v10, Ljava/lang/NullPointerException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 1919
    :cond_1
    new-instance v10, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v5, v10

    .line 1920
    .local v5, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const/4 v10, 0x0

    move-object v6, v10

    .line 1922
    .local v6, "d":Ljava/util/concurrent/CompletableFuture$RunAfterEither;
    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v7, v11

    .local v7, "r":Ljava/lang/Object;
    if-nez v10, :cond_3

    move-object v10, v2

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v7, v11

    if-nez v10, :cond_3

    .line 1923
    new-instance v10, Ljava/util/concurrent/CompletableFuture$RunAfterEither;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v5

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Ljava/util/concurrent/CompletableFuture$RunAfterEither;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object v6, v10

    .line 1924
    const/4 v10, 0x0

    move-object v8, v10

    .local v8, "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    new-instance v10, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v6

    invoke-direct {v11, v12}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v9, v10

    .line 1925
    .local v9, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_2
    :goto_0
    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v7, v11

    if-nez v10, :cond_3

    move-object v10, v2

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v7, v11

    if-nez v10, :cond_3

    .line 1926
    move-object v10, v8

    if-eqz v10, :cond_8

    .line 1927
    sget-object v10, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v11, v2

    sget-wide v12, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object v14, v8

    move-object v15, v2

    iget-object v15, v15, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v14, v18

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v0, v16

    iput-object v0, v15, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v15, v8

    .line 1928
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1929
    .line 1936
    .end local v8    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v9    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_3
    move-object v10, v7

    if-eqz v10, :cond_7

    move-object v10, v6

    if-eqz v10, :cond_4

    move-object v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture$RunAfterEither;->compareAndSet(II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1938
    :cond_4
    move-object v10, v7

    instance-of v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v10, :cond_9

    .line 1939
    move-object v10, v7

    check-cast v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v10

    .line 1942
    .local v8, "ex":Ljava/lang/Throwable;
    :goto_1
    move-object v10, v8

    if-nez v10, :cond_5

    .line 1944
    move-object v10, v4

    if-eqz v10, :cond_a

    .line 1945
    move-object v10, v4

    :try_start_0
    new-instance v11, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v3

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v10, v11}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1950
    .line 1952
    :cond_5
    :goto_2
    move-object v10, v4

    if-eqz v10, :cond_6

    move-object v10, v8

    if-eqz v10, :cond_7

    .line 1953
    :cond_6
    move-object v10, v5

    const/4 v11, 0x0

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1955
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_7
    move-object v10, v1

    invoke-virtual {v10}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1956
    move-object v10, v2

    invoke-virtual {v10}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1957
    move-object v10, v5

    move-object v1, v10

    .end local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v1

    .line 1931
    .restart local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .local v8, "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .restart local v9    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_8
    sget-object v10, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v11, v1

    sget-wide v12, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object v14, v9

    move-object v15, v1

    iget-object v15, v15, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v14, v18

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v0, v16

    iput-object v0, v15, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v15, v9

    .line 1932
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1933
    new-instance v10, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v6

    invoke-direct {v11, v12}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v8, v10

    goto/16 :goto_0

    .line 1941
    .end local v8    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v9    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_9
    const/4 v10, 0x0

    move-object v8, v10

    .local v8, "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 1947
    :cond_a
    move-object v10, v3

    :try_start_1
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1948
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 1949
    .local v9, "rex":Ljava/lang/Throwable;
    move-object v10, v9

    move-object v8, v10

    goto :goto_2
.end method

.method private doThenAccept(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1544
    move-object/from16 v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v2, p1

    .local v2, "fn":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object/from16 v3, p2

    .local v3, "e":Ljava/util/concurrent/Executor;
    move-object v10, v2

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/NullPointerException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 1545
    :cond_0
    new-instance v10, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v4, v10

    .line 1546
    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const/4 v10, 0x0

    move-object v5, v10

    .line 1548
    .local v5, "d":Ljava/util/concurrent/CompletableFuture$ThenAccept;, "Ljava/util/concurrent/CompletableFuture$ThenAccept<TT;>;"
    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v6, v11

    .local v6, "r":Ljava/lang/Object;
    if-nez v10, :cond_2

    .line 1549
    new-instance v10, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    new-instance v12, Ljava/util/concurrent/CompletableFuture$ThenAccept;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    invoke-direct/range {v13 .. v17}, Ljava/util/concurrent/CompletableFuture$ThenAccept;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v5, v13

    invoke-direct {v11, v12}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v7, v10

    .line 1551
    .local v7, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v6, v11

    if-nez v10, :cond_2

    .line 1552
    sget-object v10, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v11, v1

    sget-wide v12, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object v14, v7

    move-object v15, v1

    iget-object v15, v15, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    move-object/from16 v14, v19

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v0, v16

    iput-object v0, v15, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v15, v7

    .line 1553
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1554
    .line 1557
    .end local v7    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_2
    move-object v10, v6

    if-eqz v10, :cond_6

    move-object v10, v5

    if-eqz v10, :cond_3

    move-object v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture$ThenAccept;->compareAndSet(II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1559
    :cond_3
    move-object v10, v6

    instance-of v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v10, :cond_7

    .line 1560
    move-object v10, v6

    check-cast v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v10

    .line 1561
    .local v8, "ex":Ljava/lang/Throwable;
    const/4 v10, 0x0

    move-object v7, v10

    .line 1568
    :goto_0
    move-object v10, v8

    if-nez v10, :cond_4

    .line 1570
    move-object v10, v3

    if-eqz v10, :cond_8

    .line 1571
    move-object v10, v3

    :try_start_0
    new-instance v11, Ljava/util/concurrent/CompletableFuture$AsyncAccept;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v7

    move-object v14, v2

    move-object v15, v4

    invoke-direct {v12, v13, v14, v15}, Ljava/util/concurrent/CompletableFuture$AsyncAccept;-><init>(Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v10, v11}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    .line 1578
    :cond_4
    :goto_1
    move-object v10, v3

    if-eqz v10, :cond_5

    move-object v10, v8

    if-eqz v10, :cond_6

    .line 1579
    :cond_5
    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1581
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_6
    move-object v10, v1

    invoke-virtual {v10}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1582
    move-object v10, v4

    move-object v1, v10

    .end local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v1

    .line 1564
    .restart local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_7
    const/4 v10, 0x0

    move-object v8, v10

    .line 1565
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object v10, v6

    move-object v9, v10

    .line 1566
    .local v9, "tr":Ljava/lang/Object;, "TT;"
    move-object v10, v9

    move-object v7, v10

    .local v7, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1573
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    .end local v9    # "tr":Ljava/lang/Object;, "TT;"
    :cond_8
    move-object v10, v2

    move-object v11, v7

    :try_start_1
    invoke-interface {v10, v11}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1574
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 1575
    .local v9, "rex":Ljava/lang/Throwable;
    move-object v10, v9

    move-object v8, v10

    goto :goto_1
.end method

.method private doThenAcceptBoth(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1695
    move-object/from16 v2, p0

    .local v2, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v3, p1

    .local v3, "other":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TU;>;"
    move-object/from16 v4, p2

    .local v4, "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    move-object/from16 v5, p3

    .local v5, "e":Ljava/util/concurrent/Executor;
    move-object v14, v3

    if-eqz v14, :cond_0

    move-object v14, v4

    if-nez v14, :cond_1

    :cond_0
    new-instance v14, Ljava/lang/NullPointerException;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1696
    :cond_1
    new-instance v14, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v6, v14

    .line 1697
    .local v6, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const/4 v14, 0x0

    move-object v7, v14

    .line 1698
    .local v7, "d":Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;, "Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth<TT;TU;>;"
    const/4 v14, 0x0

    move-object v9, v14

    .line 1699
    .local v9, "s":Ljava/lang/Object;
    move-object v14, v2

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v8, v15

    .local v8, "r":Ljava/lang/Object;
    if-eqz v14, :cond_2

    move-object v14, v3

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v9, v15

    if-nez v14, :cond_6

    .line 1700
    .end local v9    # "s":Ljava/lang/Object;
    :cond_2
    new-instance v14, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object v7, v14

    .line 1701
    const/4 v14, 0x0

    move-object v10, v14

    .local v10, "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    new-instance v14, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v16}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v11, v14

    .line 1702
    .local v11, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_3
    :goto_0
    move-object v14, v8

    if-nez v14, :cond_4

    move-object v14, v2

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v8, v15

    if-eqz v14, :cond_5

    :cond_4
    move-object v14, v9

    if-nez v14, :cond_6

    move-object v14, v3

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object v9, v15

    .restart local v9    # "s":Ljava/lang/Object;
    if-nez v14, :cond_6

    .line 1704
    .end local v9    # "s":Ljava/lang/Object;
    :cond_5
    move-object v14, v10

    if-eqz v14, :cond_b

    .line 1705
    move-object v14, v9

    if-nez v14, :cond_6

    sget-object v14, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v15, v3

    sget-wide v16, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v18, v10

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v0

    move-object/from16 v21, v18

    move-object/from16 v22, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v10

    .line 1707
    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1708
    .line 1719
    .end local v10    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v11    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_6
    :goto_1
    move-object v14, v8

    if-eqz v14, :cond_a

    move-object v14, v9

    if-eqz v14, :cond_a

    move-object v14, v7

    if-eqz v14, :cond_7

    move-object v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/util/concurrent/CompletableFuture$ThenAcceptBoth;->compareAndSet(II)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1721
    :cond_7
    move-object v14, v8

    instance-of v14, v14, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v14, :cond_e

    .line 1722
    move-object v14, v8

    check-cast v14, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v12, v14

    .line 1723
    .local v12, "ex":Ljava/lang/Throwable;
    const/4 v14, 0x0

    move-object v10, v14

    .line 1730
    :goto_2
    move-object v14, v12

    if-eqz v14, :cond_f

    .line 1731
    const/4 v14, 0x0

    move-object v11, v14

    .line 1740
    :goto_3
    move-object v14, v12

    if-nez v14, :cond_8

    .line 1742
    move-object v14, v5

    if-eqz v14, :cond_11

    .line 1743
    move-object v14, v5

    :try_start_0
    new-instance v15, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v20}, Ljava/util/concurrent/CompletableFuture$AsyncAcceptBoth;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v14, v15}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    .line 1750
    :cond_8
    :goto_4
    move-object v14, v5

    if-eqz v14, :cond_9

    move-object v14, v12

    if-eqz v14, :cond_a

    .line 1751
    :cond_9
    move-object v14, v6

    const/4 v15, 0x0

    move-object/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1753
    .end local v12    # "ex":Ljava/lang/Throwable;
    :cond_a
    move-object v14, v2

    invoke-virtual {v14}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1754
    move-object v14, v3

    invoke-virtual {v14}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1755
    move-object v14, v6

    move-object v2, v14

    .end local v2    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v2

    .line 1710
    .restart local v2    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .restart local v10    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .restart local v11    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_b
    move-object v14, v8

    if-nez v14, :cond_c

    sget-object v14, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v15, v2

    sget-wide v16, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v18, v11

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v0

    move-object/from16 v21, v18

    move-object/from16 v22, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v19, v11

    .line 1712
    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1713
    :cond_c
    move-object v14, v9

    if-eqz v14, :cond_d

    .line 1714
    goto/16 :goto_1

    .line 1715
    :cond_d
    new-instance v14, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v16}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v10, v14

    goto/16 :goto_0

    .line 1726
    .end local v10    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v11    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_e
    const/4 v14, 0x0

    move-object v12, v14

    .line 1727
    .restart local v12    # "ex":Ljava/lang/Throwable;
    move-object v14, v8

    move-object v13, v14

    .line 1728
    .local v13, "tr":Ljava/lang/Object;, "TT;"
    move-object v14, v13

    move-object v10, v14

    .local v10, "t":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 1732
    .end local v10    # "t":Ljava/lang/Object;, "TT;"
    .end local v13    # "tr":Ljava/lang/Object;, "TT;"
    :cond_f
    move-object v14, v9

    instance-of v14, v14, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v14, :cond_10

    .line 1733
    move-object v14, v9

    check-cast v14, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v14, v14, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v12, v14

    .line 1734
    const/4 v14, 0x0

    move-object v11, v14

    .local v11, "u":Ljava/lang/Object;, "TU;"
    goto/16 :goto_3

    .line 1737
    .end local v11    # "u":Ljava/lang/Object;, "TU;"
    :cond_10
    move-object v14, v9

    move-object v13, v14

    .line 1738
    .local v13, "us":Ljava/lang/Object;, "TU;"
    move-object v14, v13

    move-object v11, v14

    .restart local v11    # "u":Ljava/lang/Object;, "TU;"
    goto/16 :goto_3

    .line 1745
    .end local v11    # "u":Ljava/lang/Object;, "TU;"
    .end local v13    # "us":Ljava/lang/Object;, "TU;"
    :cond_11
    move-object v14, v4

    move-object v15, v10

    move-object/from16 v16, v11

    :try_start_1
    invoke-interface/range {v14 .. v16}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1746
    :catch_0
    move-exception v14

    move-object v13, v14

    .line 1747
    .local v13, "rex":Ljava/lang/Throwable;
    move-object v14, v13

    move-object v12, v14

    goto :goto_4
.end method

.method private doThenApply(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 1500
    move-object/from16 v2, p0

    .local v2, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v3, p1

    .local v3, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    move-object/from16 v4, p2

    .local v4, "e":Ljava/util/concurrent/Executor;
    move-object v12, v3

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/NullPointerException;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v12

    .line 1501
    :cond_0
    new-instance v12, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v5, v12

    .line 1502
    .local v5, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    const/4 v12, 0x0

    move-object v6, v12

    .line 1504
    .local v6, "d":Ljava/util/concurrent/CompletableFuture$ThenApply;, "Ljava/util/concurrent/CompletableFuture$ThenApply<TT;TU;>;"
    move-object v12, v2

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v7, v13

    .local v7, "r":Ljava/lang/Object;
    if-nez v12, :cond_2

    .line 1505
    new-instance v12, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    new-instance v14, Ljava/util/concurrent/CompletableFuture$ThenApply;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-direct/range {v15 .. v19}, Ljava/util/concurrent/CompletableFuture$ThenApply;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object v6, v15

    invoke-direct {v13, v14}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v8, v12

    .line 1507
    .local v8, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_1
    move-object v12, v2

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v7, v13

    if-nez v12, :cond_2

    .line 1508
    sget-object v12, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v13, v2

    sget-wide v14, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v0

    move-object/from16 v20, v16

    move-object/from16 v21, v17

    move-object/from16 v16, v21

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v8

    .line 1509
    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1510
    .line 1513
    .end local v8    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_2
    move-object v12, v7

    if-eqz v12, :cond_6

    move-object v12, v6

    if-eqz v12, :cond_3

    move-object v12, v6

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture$ThenApply;->compareAndSet(II)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1515
    :cond_3
    move-object v12, v7

    instance-of v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v12, :cond_7

    .line 1516
    move-object v12, v7

    check-cast v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v9, v12

    .line 1517
    .local v9, "ex":Ljava/lang/Throwable;
    const/4 v12, 0x0

    move-object v8, v12

    .line 1524
    :goto_0
    const/4 v12, 0x0

    move-object v10, v12

    .line 1525
    .local v10, "u":Ljava/lang/Object;, "TU;"
    move-object v12, v9

    if-nez v12, :cond_4

    .line 1527
    move-object v12, v4

    if-eqz v12, :cond_8

    .line 1528
    move-object v12, v4

    :try_start_0
    new-instance v13, Ljava/util/concurrent/CompletableFuture$AsyncApply;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v8

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v17}, Ljava/util/concurrent/CompletableFuture$AsyncApply;-><init>(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v12, v13}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    .line 1535
    .end local v10    # "u":Ljava/lang/Object;, "TU;"
    :cond_4
    :goto_1
    move-object v12, v4

    if-eqz v12, :cond_5

    move-object v12, v9

    if-eqz v12, :cond_6

    .line 1536
    :cond_5
    move-object v12, v5

    move-object v13, v10

    move-object v14, v9

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1538
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_6
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1539
    move-object v12, v5

    move-object v2, v12

    .end local v2    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v2

    .line 1520
    .restart local v2    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_7
    const/4 v12, 0x0

    move-object v9, v12

    .line 1521
    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object v12, v7

    move-object v10, v12

    .line 1522
    .local v10, "tr":Ljava/lang/Object;, "TT;"
    move-object v12, v10

    move-object v8, v12

    .local v8, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1530
    .end local v8    # "t":Ljava/lang/Object;, "TT;"
    .local v10, "u":Ljava/lang/Object;, "TU;"
    :cond_8
    move-object v12, v3

    move-object v13, v8

    :try_start_1
    invoke-interface {v12, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    move-object v10, v12

    goto :goto_1

    .line 1531
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 1532
    .local v11, "rex":Ljava/lang/Throwable;
    move-object v12, v11

    move-object v9, v12

    goto :goto_1
.end method

.method private doThenCombine(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1627
    move-object/from16 v3, p0

    .local v3, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v4, p1

    .local v4, "other":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<+TU;>;"
    move-object/from16 v5, p2

    .local v5, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    move-object/from16 v6, p3

    .local v6, "e":Ljava/util/concurrent/Executor;
    move-object/from16 v16, v4

    if-eqz v16, :cond_0

    move-object/from16 v16, v5

    if-nez v16, :cond_1

    :cond_0
    new-instance v16, Ljava/lang/NullPointerException;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/lang/NullPointerException;-><init>()V

    throw v16

    .line 1628
    :cond_1
    new-instance v16, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object/from16 v7, v16

    .line 1629
    .local v7, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TV;>;"
    const/16 v16, 0x0

    move-object/from16 v8, v16

    .line 1630
    .local v8, "d":Ljava/util/concurrent/CompletableFuture$ThenCombine;, "Ljava/util/concurrent/CompletableFuture$ThenCombine<TT;TU;TV;>;"
    const/16 v16, 0x0

    move-object/from16 v10, v16

    .line 1631
    .local v10, "s":Ljava/lang/Object;
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v9, v17

    .local v9, "r":Ljava/lang/Object;
    if-eqz v16, :cond_2

    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v10, v17

    if-nez v16, :cond_6

    .line 1632
    .end local v10    # "s":Ljava/lang/Object;
    :cond_2
    new-instance v16, Ljava/util/concurrent/CompletableFuture$ThenCombine;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v6

    invoke-direct/range {v17 .. v22}, Ljava/util/concurrent/CompletableFuture$ThenCombine;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object/from16 v8, v16

    .line 1633
    const/16 v16, 0x0

    move-object/from16 v11, v16

    .local v11, "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    new-instance v16, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v18}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object/from16 v12, v16

    .line 1634
    .local v12, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_3
    :goto_0
    move-object/from16 v16, v9

    if-nez v16, :cond_4

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v9, v17

    if-eqz v16, :cond_5

    :cond_4
    move-object/from16 v16, v10

    if-nez v16, :cond_6

    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v10, v17

    .restart local v10    # "s":Ljava/lang/Object;
    if-nez v16, :cond_6

    .line 1636
    .end local v10    # "s":Ljava/lang/Object;
    :cond_5
    move-object/from16 v16, v11

    if-eqz v16, :cond_b

    .line 1637
    move-object/from16 v16, v10

    if-nez v16, :cond_6

    sget-object v16, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v17, v4

    sget-wide v18, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v20, v11

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v0

    move-object/from16 v23, v20

    move-object/from16 v24, v21

    move-object/from16 v20, v24

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v11

    .line 1639
    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1640
    .line 1651
    .end local v11    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v12    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_6
    :goto_1
    move-object/from16 v16, v9

    if-eqz v16, :cond_a

    move-object/from16 v16, v10

    if-eqz v16, :cond_a

    move-object/from16 v16, v8

    if-eqz v16, :cond_7

    move-object/from16 v16, v8

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture$ThenCombine;->compareAndSet(II)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1653
    :cond_7
    move-object/from16 v16, v9

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 1654
    move-object/from16 v16, v9

    check-cast v16, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v13, v16

    .line 1655
    .local v13, "ex":Ljava/lang/Throwable;
    const/16 v16, 0x0

    move-object/from16 v11, v16

    .line 1662
    :goto_2
    move-object/from16 v16, v13

    if-eqz v16, :cond_f

    .line 1663
    const/16 v16, 0x0

    move-object/from16 v12, v16

    .line 1672
    :goto_3
    const/16 v16, 0x0

    move-object/from16 v14, v16

    .line 1673
    .local v14, "v":Ljava/lang/Object;, "TV;"
    move-object/from16 v16, v13

    if-nez v16, :cond_8

    .line 1675
    move-object/from16 v16, v6

    if-eqz v16, :cond_11

    .line 1676
    move-object/from16 v16, v6

    :try_start_0
    new-instance v17, Ljava/util/concurrent/CompletableFuture$AsyncCombine;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    invoke-direct/range {v18 .. v22}, Ljava/util/concurrent/CompletableFuture$AsyncCombine;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static/range {v16 .. v17}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    .line 1683
    .end local v14    # "v":Ljava/lang/Object;, "TV;"
    :cond_8
    :goto_4
    move-object/from16 v16, v6

    if-eqz v16, :cond_9

    move-object/from16 v16, v13

    if-eqz v16, :cond_a

    .line 1684
    :cond_9
    move-object/from16 v16, v7

    move-object/from16 v17, v14

    move-object/from16 v18, v13

    invoke-virtual/range {v16 .. v18}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1686
    .end local v13    # "ex":Ljava/lang/Throwable;
    :cond_a
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1687
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1688
    move-object/from16 v16, v7

    move-object/from16 v3, v16

    .end local v3    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v3

    .line 1642
    .restart local v3    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .restart local v11    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .restart local v12    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_b
    move-object/from16 v16, v9

    if-nez v16, :cond_c

    sget-object v16, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v17, v3

    sget-wide v18, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v20, v12

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v0

    move-object/from16 v23, v20

    move-object/from16 v24, v21

    move-object/from16 v20, v24

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v21, v12

    .line 1644
    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1645
    :cond_c
    move-object/from16 v16, v10

    if-eqz v16, :cond_d

    .line 1646
    goto/16 :goto_1

    .line 1647
    :cond_d
    new-instance v16, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v8

    invoke-direct/range {v17 .. v18}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object/from16 v11, v16

    goto/16 :goto_0

    .line 1658
    .end local v11    # "q":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    .end local v12    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_e
    const/16 v16, 0x0

    move-object/from16 v13, v16

    .line 1659
    .restart local v13    # "ex":Ljava/lang/Throwable;
    move-object/from16 v16, v9

    move-object/from16 v14, v16

    .line 1660
    .local v14, "tr":Ljava/lang/Object;, "TT;"
    move-object/from16 v16, v14

    move-object/from16 v11, v16

    .local v11, "t":Ljava/lang/Object;, "TT;"
    goto/16 :goto_2

    .line 1664
    .end local v11    # "t":Ljava/lang/Object;, "TT;"
    .end local v14    # "tr":Ljava/lang/Object;, "TT;"
    :cond_f
    move-object/from16 v16, v10

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;

    move/from16 v16, v0

    if-eqz v16, :cond_10

    .line 1665
    move-object/from16 v16, v10

    check-cast v16, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v13, v16

    .line 1666
    const/16 v16, 0x0

    move-object/from16 v12, v16

    .local v12, "u":Ljava/lang/Object;, "TU;"
    goto/16 :goto_3

    .line 1669
    .end local v12    # "u":Ljava/lang/Object;, "TU;"
    :cond_10
    move-object/from16 v16, v10

    move-object/from16 v14, v16

    .line 1670
    .local v14, "us":Ljava/lang/Object;, "TU;"
    move-object/from16 v16, v14

    move-object/from16 v12, v16

    .restart local v12    # "u":Ljava/lang/Object;, "TU;"
    goto/16 :goto_3

    .line 1678
    .end local v12    # "u":Ljava/lang/Object;, "TU;"
    .local v14, "v":Ljava/lang/Object;, "TV;"
    :cond_11
    move-object/from16 v16, v5

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    :try_start_1
    invoke-interface/range {v16 .. v18}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    move-object/from16 v14, v16

    goto/16 :goto_4

    .line 1679
    :catch_0
    move-exception v16

    move-object/from16 v15, v16

    .line 1680
    .local v15, "rex":Ljava/lang/Throwable;
    move-object/from16 v16, v15

    move-object/from16 v13, v16

    goto/16 :goto_4
.end method

.method private doThenCompose(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 1963
    move-object/from16 v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v2, p1

    .local v2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    move-object/from16 v3, p2

    .local v3, "e":Ljava/util/concurrent/Executor;
    move-object v10, v2

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/NullPointerException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 1964
    :cond_0
    const/4 v10, 0x0

    move-object v4, v10

    .line 1965
    .local v4, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    const/4 v10, 0x0

    move-object v5, v10

    .line 1967
    .local v5, "d":Ljava/util/concurrent/CompletableFuture$ThenCompose;, "Ljava/util/concurrent/CompletableFuture$ThenCompose<TT;TU;>;"
    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v6, v11

    .local v6, "r":Ljava/lang/Object;
    if-nez v10, :cond_2

    .line 1968
    new-instance v10, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v4, v10

    .line 1969
    new-instance v10, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    new-instance v12, Ljava/util/concurrent/CompletableFuture$ThenCompose;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    invoke-direct/range {v13 .. v17}, Ljava/util/concurrent/CompletableFuture$ThenCompose;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v5, v13

    invoke-direct {v11, v12}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v7, v10

    .line 1971
    .local v7, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v6, v11

    if-nez v10, :cond_2

    .line 1972
    sget-object v10, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v11, v1

    sget-wide v12, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object v14, v7

    move-object v15, v1

    iget-object v15, v15, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    move-object/from16 v14, v19

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v0, v16

    iput-object v0, v15, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v15, v7

    .line 1973
    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1974
    .line 1977
    .end local v7    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_2
    move-object v10, v6

    if-eqz v10, :cond_8

    move-object v10, v5

    if-eqz v10, :cond_3

    move-object v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture$ThenCompose;->compareAndSet(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1979
    :cond_3
    move-object v10, v6

    instance-of v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v10, :cond_9

    .line 1980
    move-object v10, v6

    check-cast v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v10

    .line 1981
    .local v8, "ex":Ljava/lang/Throwable;
    const/4 v10, 0x0

    move-object v7, v10

    .line 1988
    :goto_0
    move-object v10, v8

    if-nez v10, :cond_5

    .line 1989
    move-object v10, v3

    if-eqz v10, :cond_a

    .line 1990
    move-object v10, v4

    if-nez v10, :cond_4

    .line 1991
    new-instance v10, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v4, v10

    .line 1992
    :cond_4
    move-object v10, v3

    new-instance v11, Ljava/util/concurrent/CompletableFuture$AsyncCompose;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v7

    move-object v14, v2

    move-object v15, v4

    invoke-direct {v12, v13, v14, v15}, Ljava/util/concurrent/CompletableFuture$AsyncCompose;-><init>(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v10, v11}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V

    .line 2005
    :cond_5
    :goto_1
    move-object v10, v4

    if-nez v10, :cond_6

    .line 2006
    new-instance v10, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v4, v10

    .line 2007
    :cond_6
    move-object v10, v3

    if-eqz v10, :cond_7

    move-object v10, v8

    if-eqz v10, :cond_8

    .line 2008
    :cond_7
    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2010
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_8
    move-object v10, v1

    invoke-virtual {v10}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 2011
    move-object v10, v4

    invoke-virtual {v10}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 2012
    move-object v10, v4

    move-object v1, v10

    .end local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v1

    .line 1984
    .restart local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_9
    const/4 v10, 0x0

    move-object v8, v10

    .line 1985
    .restart local v8    # "ex":Ljava/lang/Throwable;
    move-object v10, v6

    move-object v9, v10

    .line 1986
    .local v9, "tr":Ljava/lang/Object;, "TT;"
    move-object v10, v9

    move-object v7, v10

    .local v7, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 1996
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    .end local v9    # "tr":Ljava/lang/Object;, "TT;"
    :cond_a
    move-object v10, v2

    move-object v11, v7

    :try_start_0
    invoke-interface {v10, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/CompletionStage;

    move-object v9, v10

    .line 1997
    .local v9, "cs":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    move-object v10, v9

    if-eqz v10, :cond_b

    move-object v10, v9

    .line 1998
    invoke-interface {v10}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v10

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v4, v11

    if-nez v10, :cond_c

    .line 1999
    :cond_b
    new-instance v10, Ljava/lang/NullPointerException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v10

    .line 2002
    :cond_c
    goto :goto_1

    .line 2000
    .end local v9    # "cs":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<TU;>;"
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 2001
    .local v9, "rex":Ljava/lang/Throwable;
    move-object v10, v9

    move-object v8, v10

    goto :goto_1
.end method

.method private doThenRun(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1587
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v1, p1

    .local v1, "action":Ljava/lang/Runnable;
    move-object/from16 v2, p2

    .local v2, "e":Ljava/util/concurrent/Executor;
    move-object v8, v1

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 1588
    :cond_0
    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v3, v8

    .line 1589
    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const/4 v8, 0x0

    move-object v4, v8

    .line 1591
    .local v4, "d":Ljava/util/concurrent/CompletableFuture$ThenRun;
    move-object v8, v0

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v5, v9

    .local v5, "r":Ljava/lang/Object;
    if-nez v8, :cond_2

    .line 1592
    new-instance v8, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    new-instance v10, Ljava/util/concurrent/CompletableFuture$ThenRun;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    move-object v13, v1

    move-object v14, v3

    move-object v15, v2

    invoke-direct {v11, v12, v13, v14, v15}, Ljava/util/concurrent/CompletableFuture$ThenRun;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v4, v11

    invoke-direct {v9, v10}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v6, v8

    .line 1594
    .local v6, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v5, v9

    if-nez v8, :cond_2

    .line 1595
    sget-object v8, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v9, v0

    sget-wide v10, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object v12, v6

    move-object v13, v0

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    iput-object v14, v13, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v13, v6

    .line 1596
    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1597
    .line 1600
    .end local v6    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_2
    move-object v8, v5

    if-eqz v8, :cond_6

    move-object v8, v4

    if-eqz v8, :cond_3

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/CompletableFuture$ThenRun;->compareAndSet(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1602
    :cond_3
    move-object v8, v5

    instance-of v8, v8, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v8, :cond_7

    .line 1603
    move-object v8, v5

    check-cast v8, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v6, v8

    .line 1606
    .local v6, "ex":Ljava/lang/Throwable;
    :goto_0
    move-object v8, v6

    if-nez v8, :cond_4

    .line 1608
    move-object v8, v2

    if-eqz v8, :cond_8

    .line 1609
    move-object v8, v2

    :try_start_0
    new-instance v9, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v1

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v8, v9}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    .line 1616
    :cond_4
    :goto_1
    move-object v8, v2

    if-eqz v8, :cond_5

    move-object v8, v6

    if-eqz v8, :cond_6

    .line 1617
    :cond_5
    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1619
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_6
    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 1620
    move-object v8, v3

    move-object v0, v8

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0

    .line 1605
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_7
    const/4 v8, 0x0

    move-object v6, v8

    .restart local v6    # "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 1611
    :cond_8
    move-object v8, v1

    :try_start_1
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1612
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 1613
    .local v7, "rex":Ljava/lang/Throwable;
    move-object v8, v7

    move-object v6, v8

    goto :goto_1
.end method

.method private doWhenComplete(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2018
    move-object/from16 v2, p0

    .local v2, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v3, p1

    .local v3, "fn":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    move-object/from16 v4, p2

    .local v4, "e":Ljava/util/concurrent/Executor;
    move-object v12, v3

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/NullPointerException;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v12

    .line 2019
    :cond_0
    new-instance v12, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v5, v12

    .line 2020
    .local v5, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v12, 0x0

    move-object v6, v12

    .line 2022
    .local v6, "d":Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;, "Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion<TT;>;"
    move-object v12, v2

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v7, v13

    .local v7, "r":Ljava/lang/Object;
    if-nez v12, :cond_2

    .line 2023
    new-instance v12, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    new-instance v14, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v4

    invoke-direct/range {v15 .. v19}, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/Executor;)V

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object v6, v15

    invoke-direct {v13, v14}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v8, v12

    .line 2026
    .local v8, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_1
    move-object v12, v2

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v7, v13

    if-nez v12, :cond_2

    .line 2027
    sget-object v12, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v13, v2

    sget-wide v14, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object/from16 v16, v8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v0

    move-object/from16 v20, v16

    move-object/from16 v21, v17

    move-object/from16 v16, v21

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v8

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2029
    .line 2032
    .end local v8    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_2
    move-object v12, v7

    if-eqz v12, :cond_5

    move-object v12, v6

    if-eqz v12, :cond_3

    move-object v12, v6

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture$WhenCompleteCompletion;->compareAndSet(II)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2034
    :cond_3
    move-object v12, v7

    instance-of v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v12, :cond_6

    .line 2035
    move-object v12, v7

    check-cast v12, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v9, v12

    .line 2036
    .local v9, "ex":Ljava/lang/Throwable;
    const/4 v12, 0x0

    move-object v8, v12

    .line 2043
    :goto_0
    const/4 v12, 0x0

    move-object v10, v12

    .line 2045
    .local v10, "dx":Ljava/lang/Throwable;
    move-object v12, v4

    if-eqz v12, :cond_7

    .line 2046
    move-object v12, v4

    :try_start_0
    new-instance v13, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    invoke-direct/range {v14 .. v18}, Ljava/util/concurrent/CompletableFuture$AsyncWhenComplete;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v12, v13}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2051
    .line 2052
    :goto_1
    move-object v12, v4

    if-eqz v12, :cond_4

    move-object v12, v10

    if-eqz v12, :cond_5

    .line 2053
    :cond_4
    move-object v12, v5

    move-object v13, v8

    move-object v14, v9

    if-eqz v14, :cond_8

    move-object v14, v9

    :goto_2
    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2055
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v10    # "dx":Ljava/lang/Throwable;
    :cond_5
    move-object v12, v2

    invoke-virtual {v12}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 2056
    move-object v12, v5

    move-object v2, v12

    .end local v2    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v2

    .line 2039
    .restart local v2    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_6
    const/4 v12, 0x0

    move-object v9, v12

    .line 2040
    .restart local v9    # "ex":Ljava/lang/Throwable;
    move-object v12, v7

    move-object v10, v12

    .line 2041
    .local v10, "tr":Ljava/lang/Object;, "TT;"
    move-object v12, v10

    move-object v8, v12

    .local v8, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 2048
    .end local v8    # "t":Ljava/lang/Object;, "TT;"
    .local v10, "dx":Ljava/lang/Throwable;
    :cond_7
    move-object v12, v3

    move-object v13, v8

    move-object v14, v9

    :try_start_1
    invoke-interface {v12, v13, v14}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2049
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 2050
    .local v11, "rex":Ljava/lang/Throwable;
    move-object v12, v11

    move-object v10, v12

    goto :goto_1

    .line 2053
    .end local v11    # "rex":Ljava/lang/Throwable;
    :cond_8
    move-object v14, v10

    goto :goto_2
.end method

.method static execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V
    .locals 6

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "e":Ljava/util/concurrent/Executor;
    move-object v1, p1

    .local v1, "r":Ljava/util/concurrent/CompletableFuture$Async;
    move-object v2, v0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 438
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 439
    new-instance v2, Ljava/lang/Thread;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 442
    :goto_0
    return-void

    .line 441
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private removeWaiter(Ljava/util/concurrent/CompletableFuture$WaitNode;)V
    .locals 12

    .prologue
    .line 389
    move-object v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v2, p1

    .local v2, "node":Ljava/util/concurrent/CompletableFuture$WaitNode;
    move-object v6, v2

    if-eqz v6, :cond_3

    .line 390
    move-object v6, v2

    const/4 v7, 0x0

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    .line 393
    :goto_0
    const/4 v6, 0x0

    move-object v3, v6

    .local v3, "pred":Ljava/util/concurrent/CompletableFuture$WaitNode;
    move-object v6, v1

    iget-object v6, v6, Ljava/util/concurrent/CompletableFuture;->waiters:Ljava/util/concurrent/CompletableFuture$WaitNode;

    move-object v4, v6

    .local v4, "q":Ljava/util/concurrent/CompletableFuture$WaitNode;
    :goto_1
    move-object v6, v4

    if-eqz v6, :cond_3

    .line 394
    move-object v6, v4

    iget-object v6, v6, Ljava/util/concurrent/CompletableFuture$WaitNode;->next:Ljava/util/concurrent/CompletableFuture$WaitNode;

    move-object v5, v6

    .line 395
    .local v5, "s":Ljava/util/concurrent/CompletableFuture$WaitNode;
    move-object v6, v4

    iget-object v6, v6, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    if-eqz v6, :cond_1

    .line 396
    move-object v6, v4

    move-object v3, v6

    .line 393
    :cond_0
    move-object v6, v5

    move-object v4, v6

    goto :goto_1

    .line 397
    :cond_1
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 398
    move-object v6, v3

    move-object v7, v5

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$WaitNode;->next:Ljava/util/concurrent/CompletableFuture$WaitNode;

    .line 399
    move-object v6, v3

    iget-object v6, v6, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    if-nez v6, :cond_0

    .line 400
    goto :goto_0

    .line 402
    :cond_2
    sget-object v6, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v7, v1

    sget-wide v8, Ljava/util/concurrent/CompletableFuture;->WAITERS:J

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 403
    goto :goto_0

    .line 405
    .line 408
    .end local v3    # "pred":Ljava/util/concurrent/CompletableFuture$WaitNode;
    .end local v4    # "q":Ljava/util/concurrent/CompletableFuture$WaitNode;
    .end local v5    # "s":Ljava/util/concurrent/CompletableFuture$WaitNode;
    :cond_3
    return-void
.end method

.method public static runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2163
    move-object v0, p0

    .local v0, "runnable":Ljava/lang/Runnable;
    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 2164
    :cond_0
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v1, v2

    .line 2165
    .local v1, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v2, v3}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V

    .line 2166
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "runnable":Ljava/lang/Runnable;
    return-object v0
.end method

.method public static runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2181
    move-object v0, p0

    .local v0, "runnable":Ljava/lang/Runnable;
    move-object v1, p1

    .local v1, "executor":Ljava/util/concurrent/Executor;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    if-nez v3, :cond_1

    .line 2182
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2183
    :cond_1
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v2, v3

    .line 2184
    .local v2, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/CompletableFuture$AsyncRun;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/CompletableFuture$AsyncRun;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v3, v4}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V

    .line 2185
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "runnable":Ljava/lang/Runnable;
    return-object v0
.end method

.method public static supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2127
    move-object v0, p0

    .local v0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    move-object v2, v0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 2128
    :cond_0
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v1, v2

    .line 2129
    .local v1, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/function/Supplier;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v2, v3}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V

    .line 2130
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    return-object v0
.end method

.method public static supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2146
    move-object v0, p0

    .local v0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    move-object v1, p1

    .local v1, "executor":Ljava/util/concurrent/Executor;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    if-nez v3, :cond_1

    .line 2147
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2148
    :cond_1
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v2, v3

    .line 2149
    .local v2, "f":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TU;>;"
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/CompletableFuture$AsyncSupply;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/CompletableFuture$AsyncSupply;-><init>(Ljava/util/function/Supplier;Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v3, v4}, Ljava/util/concurrent/CompletableFuture;->execAsync(Ljava/util/concurrent/Executor;Ljava/util/concurrent/CompletableFuture$Async;)V

    .line 2150
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    return-object v0
.end method

.method private timedAwaitDone(J)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 335
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-wide/from16 v1, p1

    .local v1, "nanos":J
    const/4 v8, 0x0

    move-object v3, v8

    .line 336
    .local v3, "q":Ljava/util/concurrent/CompletableFuture$WaitNode;
    const/4 v8, 0x0

    move v4, v8

    .line 338
    .local v4, "queued":Z
    :cond_0
    :goto_0
    move-object v8, v0

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v5, v9

    .local v5, "r":Ljava/lang/Object;
    if-eqz v8, :cond_2

    .line 339
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 340
    move-object v8, v3

    const/4 v9, 0x0

    iput-object v9, v8, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    .line 341
    move-object v8, v3

    iget v8, v8, Ljava/util/concurrent/CompletableFuture$WaitNode;->interruptControl:I

    if-gez v8, :cond_1

    .line 342
    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/util/concurrent/CompletableFuture;->removeWaiter(Ljava/util/concurrent/CompletableFuture$WaitNode;)V

    .line 343
    new-instance v8, Ljava/lang/InterruptedException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 346
    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 347
    move-object v8, v5

    move-object v0, v8

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0

    .line 349
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_2
    move-object v8, v3

    if-nez v8, :cond_5

    .line 350
    move-wide v8, v1

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    .line 351
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v8

    .line 352
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-wide v10, v1

    add-long/2addr v8, v10

    move-wide v6, v8

    .line 353
    .local v6, "d":J
    new-instance v8, Ljava/util/concurrent/CompletableFuture$WaitNode;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const/4 v10, 0x1

    move-wide v11, v1

    move-wide v13, v6

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_4

    const-wide/16 v13, 0x1

    :goto_1
    invoke-direct/range {v9 .. v14}, Ljava/util/concurrent/CompletableFuture$WaitNode;-><init>(ZJJ)V

    move-object v3, v8

    .line 354
    goto :goto_0

    .line 353
    :cond_4
    move-wide v13, v6

    goto :goto_1

    .line 355
    .end local v6    # "d":J
    :cond_5
    move v8, v4

    if-nez v8, :cond_6

    .line 356
    sget-object v8, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v9, v0

    sget-wide v10, Ljava/util/concurrent/CompletableFuture;->WAITERS:J

    move-object v12, v3

    move-object v13, v0

    iget-object v13, v13, Ljava/util/concurrent/CompletableFuture;->waiters:Ljava/util/concurrent/CompletableFuture$WaitNode;

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    iput-object v14, v13, Ljava/util/concurrent/CompletableFuture$WaitNode;->next:Ljava/util/concurrent/CompletableFuture$WaitNode;

    move-object v13, v3

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    move v4, v8

    goto/16 :goto_0

    .line 358
    :cond_6
    move-object v8, v3

    iget v8, v8, Ljava/util/concurrent/CompletableFuture$WaitNode;->interruptControl:I

    if-gez v8, :cond_7

    .line 359
    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/util/concurrent/CompletableFuture;->removeWaiter(Ljava/util/concurrent/CompletableFuture$WaitNode;)V

    .line 360
    new-instance v8, Ljava/lang/InterruptedException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 362
    :cond_7
    move-object v8, v3

    iget-wide v8, v8, Ljava/util/concurrent/CompletableFuture$WaitNode;->nanos:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_8

    .line 363
    move-object v8, v0

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v8, :cond_0

    .line 364
    move-object v8, v0

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/util/concurrent/CompletableFuture;->removeWaiter(Ljava/util/concurrent/CompletableFuture$WaitNode;)V

    .line 365
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v8

    .line 368
    :cond_8
    move-object v8, v3

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v8, :cond_0

    .line 370
    move-object v8, v3

    :try_start_0
    invoke-static {v8}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    goto/16 :goto_0

    .line 371
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 372
    .local v6, "ex":Ljava/lang/InterruptedException;
    move-object v8, v3

    const/4 v9, -0x1

    iput v9, v8, Ljava/util/concurrent/CompletableFuture$WaitNode;->interruptControl:I

    .line 373
    goto/16 :goto_0
.end method

.method private waitingGet(Z)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 283
    move-object/from16 v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move/from16 v1, p1

    .local v1, "interruptible":Z
    const/4 v7, 0x0

    move-object v2, v7

    .line 284
    .local v2, "q":Ljava/util/concurrent/CompletableFuture$WaitNode;
    const/4 v7, 0x0

    move v3, v7

    .line 285
    .local v3, "queued":Z
    sget v7, Ljava/util/concurrent/CompletableFuture;->SPINS:I

    move v4, v7

    .line 287
    .local v4, "spins":I
    :cond_0
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v5, v8

    .local v5, "r":Ljava/lang/Object;
    if-eqz v7, :cond_3

    .line 288
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 289
    move-object v7, v2

    const/4 v8, 0x0

    iput-object v8, v7, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    .line 290
    move-object v7, v2

    iget v7, v7, Ljava/util/concurrent/CompletableFuture$WaitNode;->interruptControl:I

    if-gez v7, :cond_2

    .line 291
    move v7, v1

    if-eqz v7, :cond_1

    .line 292
    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/util/concurrent/CompletableFuture;->removeWaiter(Ljava/util/concurrent/CompletableFuture$WaitNode;)V

    .line 293
    const/4 v7, 0x0

    move-object v0, v7

    .line 315
    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :goto_1
    return-object v0

    .line 295
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 298
    :cond_2
    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 299
    move-object v7, v5

    move-object v0, v7

    goto :goto_1

    .line 301
    :cond_3
    move v7, v4

    if-lez v7, :cond_6

    .line 302
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v7

    move v6, v7

    .line 303
    .local v6, "rnd":I
    move v7, v6

    if-nez v7, :cond_4

    .line 304
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v7

    move v6, v7

    .line 305
    :cond_4
    move v7, v6

    if-ltz v7, :cond_5

    .line 306
    add-int/lit8 v4, v4, -0x1

    .line 307
    :cond_5
    goto :goto_0

    .line 308
    .end local v6    # "rnd":I
    :cond_6
    move-object v7, v2

    if-nez v7, :cond_7

    .line 309
    new-instance v7, Ljava/util/concurrent/CompletableFuture$WaitNode;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move v9, v1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v8 .. v13}, Ljava/util/concurrent/CompletableFuture$WaitNode;-><init>(ZJJ)V

    move-object v2, v7

    goto :goto_0

    .line 310
    :cond_7
    move v7, v3

    if-nez v7, :cond_8

    .line 311
    sget-object v7, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v8, v0

    sget-wide v9, Ljava/util/concurrent/CompletableFuture;->WAITERS:J

    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Ljava/util/concurrent/CompletableFuture;->waiters:Ljava/util/concurrent/CompletableFuture$WaitNode;

    move-object v14, v11

    move-object v15, v12

    move-object v11, v15

    move-object v12, v14

    move-object v13, v15

    iput-object v13, v12, Ljava/util/concurrent/CompletableFuture$WaitNode;->next:Ljava/util/concurrent/CompletableFuture$WaitNode;

    move-object v12, v2

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    move v3, v7

    goto :goto_0

    .line 313
    :cond_8
    move v7, v1

    if-eqz v7, :cond_9

    move-object v7, v2

    iget v7, v7, Ljava/util/concurrent/CompletableFuture$WaitNode;->interruptControl:I

    if-gez v7, :cond_9

    .line 314
    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/util/concurrent/CompletableFuture;->removeWaiter(Ljava/util/concurrent/CompletableFuture$WaitNode;)V

    .line 315
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_1

    .line 317
    :cond_9
    move-object v7, v2

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v7, :cond_0

    .line 319
    move-object v7, v2

    :try_start_0
    invoke-static {v7}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto/16 :goto_0

    .line 320
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 321
    .local v6, "ex":Ljava/lang/InterruptedException;
    move-object v7, v2

    const/4 v8, -0x1

    iput v8, v7, Ljava/util/concurrent/CompletableFuture$WaitNode;->interruptControl:I

    .line 322
    goto/16 :goto_0
.end method


# virtual methods
.method public acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2506
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    move-object v2, p2

    .local v2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doAcceptEither(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->acceptEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2512
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    move-object v2, p2

    .local v2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    .line 2513
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v6

    .line 2512
    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doAcceptEither(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2520
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    move-object v2, p2

    .local v2, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object v3, p3

    .local v3, "executor":Ljava/util/concurrent/Executor;
    move-object v4, v3

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2521
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->doAcceptEither(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->acceptEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2485
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doApplyToEither(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->applyToEither(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2491
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    .line 2492
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v6

    .line 2491
    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doApplyToEither(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TT;>;",
            "Ljava/util/function/Function",
            "<-TT;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2499
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TT;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TU;>;"
    move-object v3, p3

    .local v3, "executor":Ljava/util/concurrent/Executor;
    move-object v4, v3

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2500
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->doApplyToEither(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->applyToEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public cancel(Z)Z
    .locals 14

    .prologue
    .line 2889
    move-object v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move v2, p1

    .local v2, "mayInterruptIfRunning":Z
    move-object v4, v1

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    sget-object v4, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v5, v1

    sget-wide v6, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v8, 0x0

    new-instance v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/util/concurrent/CancellationException;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v10, v11}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    .line 2891
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 2892
    .local v3, "cancelled":Z
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2893
    move v4, v3

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_1
    move v1, v4

    .end local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return v1

    .line 2891
    .end local v3    # "cancelled":Z
    .restart local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2893
    .restart local v3    # "cancelled":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public complete(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 2342
    move-object v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v2, p1

    .local v2, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v1

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    sget-object v4, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v5, v1

    sget-wide v6, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v8, 0x0

    move-object v9, v2

    if-nez v9, :cond_0

    sget-object v9, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .line 2343
    :goto_0
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v3, v4

    .line 2345
    .local v3, "triggered":Z
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2346
    move v4, v3

    move v1, v4

    .end local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return v1

    .line 2342
    .end local v3    # "triggered":Z
    .restart local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_0
    move-object v9, v2

    goto :goto_0

    .line 2343
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)Z
    .locals 13

    .prologue
    .line 2358
    move-object v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v2, p1

    .local v2, "ex":Ljava/lang/Throwable;
    move-object v4, v2

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2359
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_1

    sget-object v4, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v5, v1

    sget-wide v6, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v8, 0x0

    new-instance v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v2

    invoke-direct {v10, v11}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    .line 2360
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 2361
    .local v3, "triggered":Z
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2362
    move v4, v3

    move v1, v4

    .end local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return v1

    .line 2360
    .end local v3    # "triggered":Z
    .restart local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2623
    move-object/from16 v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v2, p1

    .local v2, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Throwable;+TT;>;"
    move-object v10, v2

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/NullPointerException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 2624
    :cond_0
    new-instance v10, Ljava/util/concurrent/CompletableFuture;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v3, v10

    .line 2625
    .local v3, "dst":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v10, 0x0

    move-object v4, v10

    .line 2627
    .local v4, "d":Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;, "Ljava/util/concurrent/CompletableFuture$ExceptionCompletion<TT;>;"
    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v5, v11

    .local v5, "r":Ljava/lang/Object;
    if-nez v10, :cond_2

    .line 2628
    new-instance v10, Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    new-instance v12, Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v16}, Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/Function;Ljava/util/concurrent/CompletableFuture;)V

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v4, v13

    invoke-direct {v11, v12}, Ljava/util/concurrent/CompletableFuture$CompletionNode;-><init>(Ljava/util/concurrent/CompletableFuture$Completion;)V

    move-object v6, v10

    .line 2631
    .local v6, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v5, v11

    if-nez v10, :cond_2

    .line 2632
    sget-object v10, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v11, v1

    sget-wide v12, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object v14, v6

    move-object v15, v1

    iget-object v15, v15, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    move-object/from16 v14, v18

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v0, v16

    iput-object v0, v15, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v15, v6

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2634
    .line 2637
    .end local v6    # "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :cond_2
    move-object v10, v5

    if-eqz v10, :cond_5

    move-object v10, v4

    if-eqz v10, :cond_3

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture$ExceptionCompletion;->compareAndSet(II)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2638
    :cond_3
    const/4 v10, 0x0

    move-object v6, v10

    .local v6, "t":Ljava/lang/Object;, "TT;"
    const/4 v10, 0x0

    move-object v8, v10

    .line 2639
    .local v8, "dx":Ljava/lang/Throwable;
    move-object v10, v5

    instance-of v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v10, :cond_6

    .line 2640
    move-object v10, v5

    check-cast v10, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v10, v10, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v7, v11

    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz v10, :cond_4

    .line 2642
    move-object v10, v2

    move-object v11, v7

    :try_start_0
    invoke-interface {v10, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v6, v10

    .line 2645
    .line 2652
    .end local v6    # "t":Ljava/lang/Object;, "TT;"
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_4
    :goto_0
    move-object v10, v3

    move-object v11, v6

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/CompletableFuture;->internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2654
    .end local v8    # "dx":Ljava/lang/Throwable;
    :cond_5
    move-object v10, v1

    invoke-virtual {v10}, Ljava/util/concurrent/CompletableFuture;->helpPostComplete()V

    .line 2655
    move-object v10, v3

    move-object v1, v10

    .end local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v1

    .line 2643
    .restart local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .restart local v6    # "t":Ljava/lang/Object;, "TT;"
    .restart local v7    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "dx":Ljava/lang/Throwable;
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 2644
    .local v9, "rex":Ljava/lang/Throwable;
    move-object v10, v9

    move-object v8, v10

    .line 2645
    goto :goto_0

    .line 2649
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v9    # "rex":Ljava/lang/Throwable;
    :cond_6
    move-object v10, v5

    move-object v9, v10

    .line 2650
    .local v9, "tr":Ljava/lang/Object;, "TT;"
    move-object v10, v9

    move-object v6, v10

    goto :goto_0
.end method

.method public bridge synthetic exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 2224
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v5, v0

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v1, v6

    .local v1, "r":Ljava/lang/Object;
    if-nez v5, :cond_0

    move-object v5, v0

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v1, v6

    if-nez v5, :cond_0

    .line 2225
    new-instance v5, Ljava/lang/InterruptedException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 2226
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-nez v5, :cond_1

    .line 2227
    move-object v5, v1

    move-object v4, v5

    .line 2228
    .local v4, "tr":Ljava/lang/Object;, "TT;"
    move-object v5, v4

    move-object v0, v5

    .line 2231
    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v4    # "tr":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .line 2230
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_1
    move-object v5, v1

    check-cast v5, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    .local v2, "ex":Ljava/lang/Throwable;
    if-nez v5, :cond_2

    .line 2231
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 2232
    :cond_2
    move-object v5, v2

    instance-of v5, v5, Ljava/util/concurrent/CancellationException;

    if-eqz v5, :cond_3

    .line 2233
    move-object v5, v2

    check-cast v5, Ljava/util/concurrent/CancellationException;

    throw v5

    .line 2234
    :cond_3
    move-object v5, v2

    instance-of v5, v5, Ljava/util/concurrent/CompletionException;

    if-eqz v5, :cond_4

    move-object v5, v2

    .line 2235
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    .local v3, "cause":Ljava/lang/Throwable;
    if-eqz v5, :cond_4

    .line 2236
    move-object v5, v3

    move-object v2, v5

    .line 2237
    .end local v3    # "cause":Ljava/lang/Throwable;
    :cond_4
    new-instance v5, Ljava/util/concurrent/ExecutionException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 2256
    move-object v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "timeout":J
    move-object/from16 v4, p3

    .local v4, "unit":Ljava/util/concurrent/TimeUnit;
    move-object v11, v4

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    move-wide v8, v11

    .line 2257
    .local v8, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2258
    new-instance v11, Ljava/lang/InterruptedException;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/InterruptedException;-><init>()V

    throw v11

    .line 2259
    :cond_0
    move-object v11, v1

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v5, v12

    .local v5, "r":Ljava/lang/Object;
    if-nez v11, :cond_1

    .line 2260
    move-object v11, v1

    move-wide v12, v8

    invoke-direct {v11, v12, v13}, Ljava/util/concurrent/CompletableFuture;->timedAwaitDone(J)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    .line 2261
    :cond_1
    move-object v11, v5

    instance-of v11, v11, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-nez v11, :cond_2

    .line 2262
    move-object v11, v5

    move-object v10, v11

    .line 2263
    .local v10, "tr":Ljava/lang/Object;, "TT;"
    move-object v11, v10

    move-object v1, v11

    .line 2266
    .end local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v10    # "tr":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v1

    .line 2265
    .restart local v1    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_2
    move-object v11, v5

    check-cast v11, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v6, v12

    .local v6, "ex":Ljava/lang/Throwable;
    if-nez v11, :cond_3

    .line 2266
    const/4 v11, 0x0

    move-object v1, v11

    goto :goto_0

    .line 2267
    :cond_3
    move-object v11, v6

    instance-of v11, v11, Ljava/util/concurrent/CancellationException;

    if-eqz v11, :cond_4

    .line 2268
    move-object v11, v6

    check-cast v11, Ljava/util/concurrent/CancellationException;

    throw v11

    .line 2269
    :cond_4
    move-object v11, v6

    instance-of v11, v11, Ljava/util/concurrent/CompletionException;

    if-eqz v11, :cond_5

    move-object v11, v6

    .line 2270
    invoke-virtual {v11}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v7, v12

    .local v7, "cause":Ljava/lang/Throwable;
    if-eqz v11, :cond_5

    .line 2271
    move-object v11, v7

    move-object v6, v11

    .line 2272
    .end local v7    # "cause":Ljava/lang/Throwable;
    :cond_5
    new-instance v11, Ljava/util/concurrent/ExecutionException;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v6

    invoke-direct {v12, v13}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method public getNow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 2318
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "valueIfAbsent":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    .local v2, "r":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 2319
    move-object v5, v1

    move-object v0, v5

    .line 2325
    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :goto_0
    return-object v0

    .line 2320
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_0
    move-object v5, v2

    instance-of v5, v5, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-nez v5, :cond_1

    .line 2321
    move-object v5, v2

    move-object v4, v5

    .line 2322
    .local v4, "tr":Ljava/lang/Object;, "TT;"
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 2324
    .end local v4    # "tr":Ljava/lang/Object;, "TT;"
    :cond_1
    move-object v5, v2

    check-cast v5, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v5, v5, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    .local v3, "ex":Ljava/lang/Throwable;
    if-nez v5, :cond_2

    .line 2325
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 2326
    :cond_2
    move-object v5, v3

    instance-of v5, v5, Ljava/util/concurrent/CancellationException;

    if-eqz v5, :cond_3

    .line 2327
    move-object v5, v3

    check-cast v5, Ljava/util/concurrent/CancellationException;

    throw v5

    .line 2328
    :cond_3
    move-object v5, v3

    instance-of v5, v5, Ljava/util/concurrent/CompletionException;

    if-eqz v5, :cond_4

    .line 2329
    move-object v5, v3

    check-cast v5, Ljava/util/concurrent/CompletionException;

    throw v5

    .line 2330
    :cond_4
    new-instance v5, Ljava/util/concurrent/CompletionException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getNumberOfDependents()I
    .locals 4

    .prologue
    .line 2964
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v3, 0x0

    move v1, v3

    .line 2965
    .local v1, "count":I
    move-object v3, v0

    iget-object v3, v3, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v2, v3

    .local v2, "p":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2966
    add-int/lit8 v1, v1, 0x1

    .line 2965
    move-object v3, v2

    iget-object v3, v3, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v2, v3

    goto :goto_0

    .line 2967
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return v0
.end method

.method public handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2580
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doHandle(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2585
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doHandle(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction",
            "<-TT;",
            "Ljava/lang/Throwable;",
            "+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2591
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;Ljava/lang/Throwable;+TU;>;"
    move-object v2, p2

    .local v2, "executor":Ljava/util/concurrent/Executor;
    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2592
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->doHandle(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->handleAsync(Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method final helpPostComplete()V
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 218
    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 219
    :cond_0
    return-void
.end method

.method final internalComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    move-object v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object/from16 v2, p1

    .local v2, "v":Ljava/lang/Object;, "TT;"
    move-object/from16 v3, p2

    .local v3, "ex":Ljava/lang/Throwable;
    move-object v4, v1

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 205
    sget-object v4, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v5, v1

    sget-wide v6, Ljava/util/concurrent/CompletableFuture;->RESULT:J

    const/4 v8, 0x0

    move-object v9, v3

    if-nez v9, :cond_2

    move-object v9, v2

    if-nez v9, :cond_1

    sget-object v9, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    .line 206
    :goto_0
    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 210
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 211
    return-void

    .line 205
    :cond_1
    move-object v9, v2

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v3

    instance-of v11, v11, Ljava/util/concurrent/CompletionException;

    if-eqz v11, :cond_3

    move-object v11, v3

    :goto_1
    invoke-direct {v10, v11}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    new-instance v11, Ljava/util/concurrent/CompletionException;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v3

    invoke-direct {v12, v13}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isCancelled()Z
    .locals 5

    .prologue
    .line 2905
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v1, v3

    .local v1, "r":Ljava/lang/Object;
    instance-of v2, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v2, v2, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return v0

    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCompletedExceptionally()Z
    .locals 5

    .prologue
    .line 2921
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    move-object v1, v3

    .local v1, "r":Ljava/lang/Object;
    instance-of v2, v2, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v2, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return v0

    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 2209
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return v0

    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public join()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2291
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    .local v1, "r":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 2292
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/CompletableFuture;->waitingGet(Z)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 2293
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-nez v4, :cond_1

    .line 2294
    move-object v4, v1

    move-object v3, v4

    .line 2295
    .local v3, "tr":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    move-object v0, v4

    .line 2298
    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .end local v3    # "tr":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .line 2297
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_1
    move-object v4, v1

    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    .local v2, "ex":Ljava/lang/Throwable;
    if-nez v4, :cond_2

    .line 2298
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 2299
    :cond_2
    move-object v4, v2

    instance-of v4, v4, Ljava/util/concurrent/CancellationException;

    if-eqz v4, :cond_3

    .line 2300
    move-object v4, v2

    check-cast v4, Ljava/util/concurrent/CancellationException;

    throw v4

    .line 2301
    :cond_3
    move-object v4, v2

    instance-of v4, v4, Ljava/util/concurrent/CompletionException;

    if-eqz v4, :cond_4

    .line 2302
    move-object v4, v2

    check-cast v4, Ljava/util/concurrent/CompletionException;

    throw v4

    .line 2303
    :cond_4
    new-instance v4, Ljava/util/concurrent/CompletionException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/util/concurrent/CompletionException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public obtrudeException(Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 2950
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "ex":Ljava/lang/Throwable;
    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 2951
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/CompletableFuture$AltResult;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CompletableFuture$AltResult;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2952
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2953
    return-void
.end method

.method public obtrudeValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2935
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/concurrent/CompletableFuture;->NIL:Ljava/util/concurrent/CompletableFuture$AltResult;

    :goto_0
    iput-object v3, v2, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    .line 2936
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    .line 2937
    return-void

    .line 2935
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method final postComplete()V
    .locals 13

    .prologue
    .line 181
    move-object v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :cond_0
    :goto_0
    move-object v6, v1

    iget-object v6, v6, Ljava/util/concurrent/CompletableFuture;->waiters:Ljava/util/concurrent/CompletableFuture$WaitNode;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    .local v2, "q":Ljava/util/concurrent/CompletableFuture$WaitNode;
    if-eqz v6, :cond_1

    .line 182
    sget-object v6, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v7, v1

    sget-wide v8, Ljava/util/concurrent/CompletableFuture;->WAITERS:J

    move-object v10, v2

    move-object v11, v2

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$WaitNode;->next:Ljava/util/concurrent/CompletableFuture$WaitNode;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    iget-object v6, v6, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v3, v7

    .local v3, "t":Ljava/lang/Thread;
    if-eqz v6, :cond_0

    .line 184
    move-object v6, v2

    const/4 v7, 0x0

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    .line 185
    move-object v6, v3

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    .line 190
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_1
    :goto_1
    move-object v6, v1

    iget-object v6, v6, Ljava/util/concurrent/CompletableFuture;->completions:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v4, v7

    .local v4, "h":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    if-eqz v6, :cond_2

    .line 191
    sget-object v6, Ljava/util/concurrent/CompletableFuture;->UNSAFE:Lsun/misc/Unsafe;

    move-object v7, v1

    sget-wide v8, Ljava/util/concurrent/CompletableFuture;->COMPLETIONS:J

    move-object v10, v4

    move-object v11, v4

    iget-object v11, v11, Ljava/util/concurrent/CompletableFuture$CompletionNode;->next:Ljava/util/concurrent/CompletableFuture$CompletionNode;

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    iget-object v6, v6, Ljava/util/concurrent/CompletableFuture$CompletionNode;->completion:Ljava/util/concurrent/CompletableFuture$Completion;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    .local v5, "c":Ljava/util/concurrent/CompletableFuture$Completion;
    if-eqz v6, :cond_1

    .line 193
    move-object v6, v5

    invoke-virtual {v6}, Ljava/util/concurrent/CompletableFuture$Completion;->run()V

    goto :goto_1

    .line 195
    .end local v5    # "c":Ljava/util/concurrent/CompletableFuture$Completion;
    :cond_2
    return-void
.end method

.method public runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2463
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    move-object v2, p2

    .local v2, "action":Ljava/lang/Runnable;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doRunAfterBoth(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->runAfterBoth(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2469
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    move-object v2, p2

    .local v2, "action":Ljava/lang/Runnable;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    .line 2470
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v6

    .line 2469
    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doRunAfterBoth(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2477
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    move-object v2, p2

    .local v2, "action":Ljava/lang/Runnable;
    move-object v3, p3

    .local v3, "executor":Ljava/util/concurrent/Executor;
    move-object v4, v3

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2478
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->doRunAfterBoth(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->runAfterBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2526
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    move-object v2, p2

    .local v2, "action":Ljava/lang/Runnable;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doRunAfterEither(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->runAfterEither(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2532
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    move-object v2, p2

    .local v2, "action":Ljava/lang/Runnable;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    .line 2533
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v6

    .line 2532
    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doRunAfterEither(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage",
            "<*>;",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2540
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<*>;"
    move-object v2, p2

    .local v2, "action":Ljava/lang/Runnable;
    move-object v3, p3

    .local v3, "executor":Ljava/util/concurrent/Executor;
    move-object v4, v3

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2541
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->doRunAfterEither(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->runAfterEitherAsync(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2386
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doThenAccept(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2391
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doThenAccept(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2397
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    move-object v2, p2

    .local v2, "executor":Ljava/util/concurrent/Executor;
    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2398
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->doThenAccept(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2442
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    move-object v2, p2

    .local v2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doThenAcceptBoth(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBoth(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2448
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    move-object v2, p2

    .local v2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    .line 2449
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v6

    .line 2448
    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doThenAcceptBoth(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiConsumer",
            "<-TT;-TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2456
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    move-object v2, p2

    .local v2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-TU;>;"
    move-object v3, p3

    .local v3, "executor":Ljava/util/concurrent/Executor;
    move-object v4, v3

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2457
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->doThenAcceptBoth(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->thenAcceptBothAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2369
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doThenApply(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2374
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doThenApply(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2380
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    move-object v2, p2

    .local v2, "executor":Ljava/util/concurrent/Executor;
    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2381
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->doThenApply(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2421
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doThenCombine(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2427
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v5, v2

    .line 2428
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v6

    .line 2427
    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->doThenCombine(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage",
            "<+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TT;-TU;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2435
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/util/concurrent/CompletionStage;, "Ljava/util/concurrent/CompletionStage<+TU;>;"
    move-object v2, p2

    .local v2, "fn":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TT;-TU;+TV;>;"
    move-object v3, p3

    .local v3, "executor":Ljava/util/concurrent/Executor;
    move-object v4, v3

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2436
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->doThenCombine(Ljava/util/concurrent/CompletableFuture;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 8

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CompletableFuture;->thenCombineAsync(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2546
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doThenCompose(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2551
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doThenCompose(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+",
            "Ljava/util/concurrent/CompletionStage",
            "<TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 2557
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "fn":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/concurrent/CompletionStage<TU;>;>;"
    move-object v2, p2

    .local v2, "executor":Ljava/util/concurrent/Executor;
    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2558
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->doThenCompose(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2403
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doThenRun(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2408
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doThenRun(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2414
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "executor":Ljava/util/concurrent/Executor;
    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2415
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->doThenRun(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->thenRunAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public toCompletableFuture()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2601
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2981
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v3, v0

    iget-object v3, v3, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    move-object v1, v3

    .line 2983
    .local v1, "r":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    invoke-super {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    if-nez v4, :cond_1

    move-object v4, v0

    .line 2985
    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->getNumberOfDependents()I

    move-result v4

    move v6, v4

    move v4, v6

    move v5, v6

    move v2, v5

    .local v2, "count":I
    if-nez v4, :cond_0

    const-string v4, "[Not completed]"

    .end local v2    # "count":I
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    .restart local v2    # "count":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Not completed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dependents]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v2    # "count":I
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Ljava/util/concurrent/CompletableFuture$AltResult;

    iget-object v4, v4, Ljava/util/concurrent/CompletableFuture$AltResult;->ex:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    const-string v4, "[Completed exceptionally]"

    goto :goto_0

    :cond_2
    const-string v4, "[Completed normally]"

    goto :goto_0
.end method

.method public whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2563
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doWhenComplete(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2568
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->doWhenComplete(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2574
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TT;-Ljava/lang/Throwable;>;"
    move-object v2, p2

    .local v2, "executor":Ljava/util/concurrent/Executor;
    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2575
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->doWhenComplete(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method

.method public bridge synthetic whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    return-object v0
.end method
