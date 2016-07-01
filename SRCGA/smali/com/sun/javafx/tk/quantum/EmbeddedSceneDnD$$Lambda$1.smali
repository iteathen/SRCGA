.class final synthetic Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/util/concurrent/atomic/AtomicReference;

.field private final arg$2:Ljava/util/concurrent/Callable;

.field private final arg$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;->arg$1:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;->arg$2:Ljava/util/concurrent/Callable;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;->arg$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static get$Lambda(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;->arg$1:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;->arg$2:Ljava/util/concurrent/Callable;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD$$Lambda$1;->arg$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/tk/quantum/EmbeddedSceneDnD;->access$lambda$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
