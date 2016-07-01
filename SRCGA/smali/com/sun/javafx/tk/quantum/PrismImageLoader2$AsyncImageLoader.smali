.class final Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
.super Lcom/sun/javafx/runtime/async/AbstractRemoteResource;
.source "PrismImageLoader2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsyncImageLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/runtime/async/AbstractRemoteResource",
        "<",
        "Lcom/sun/javafx/tk/quantum/PrismImageLoader2;",
        ">;"
    }
.end annotation


# static fields
.field private static final BG_LOADING_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field height:I

.field preserveRatio:Z

.field smooth:Z

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->createExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->BG_LOADING_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 228
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;IIZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/runtime/async/AsyncOperationListener",
            "<",
            "Lcom/sun/javafx/tk/quantum/PrismImageLoader2;",
            ">;",
            "Ljava/lang/String;",
            "IIZZ)V"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/runtime/async/AsyncOperationListener;, "Lcom/sun/javafx/runtime/async/AsyncOperationListener<Lcom/sun/javafx/tk/quantum/PrismImageLoader2;>;"
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move v5, p5

    .local v5, "preserveRatio":Z
    move/from16 v6, p6

    .local v6, "smooth":Z
    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;-><init>(Ljava/lang/String;Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V

    .line 243
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->width:I

    .line 244
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->height:I

    .line 245
    move-object v7, v0

    move v8, v5

    iput-boolean v8, v7, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->preserveRatio:Z

    .line 246
    move-object v7, v0

    move v8, v6

    iput-boolean v8, v7, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->smooth:Z

    .line 247
    move-object v7, v0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->acc:Ljava/security/AccessControlContext;

    .line 248
    return-void
.end method

.method static synthetic access$201(Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->call()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;)Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->lambda$call$412()Lcom/sun/javafx/tk/quantum/PrismImageLoader2;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1()Ljava/lang/ThreadGroup;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->lambda$createExecutor$413()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->lambda$createExecutor$415(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->lambda$null$414(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static createExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 7

    .prologue
    .line 277
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$2;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v3

    .line 278
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ThreadGroup;

    move-object v0, v3

    .line 285
    .local v0, "bgLoadingThreadGroup":Ljava/lang/ThreadGroup;
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$3;->lambdaFactory$(Ljava/lang/ThreadGroup;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    move-object v1, v3

    .line 298
    .local v1, "bgLoadingThreadFactory":Ljava/util/concurrent/ThreadFactory;
    move-object v3, v1

    .line 299
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object v2, v3

    .line 300
    .local v2, "bgLoadingExecutor":Ljava/util/concurrent/ExecutorService;
    move-object v3, v2

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 303
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "bgLoadingThreadGroup":Ljava/lang/ThreadGroup;
    return-object v0
.end method

.method private synthetic lambda$call$412()Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->access$201(Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    return-object v0
.end method

.method private static synthetic lambda$createExecutor$413()Ljava/lang/ThreadGroup;
    .locals 5

    .prologue
    .line 279
    new-instance v0, Ljava/lang/ThreadGroup;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 280
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->getFxUserThread()Ljava/lang/Thread;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v2

    const-string v3, "Background image loading thread pool"

    invoke-direct {v1, v2, v3}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$createExecutor$415(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "bgLoadingThreadGroup":Ljava/lang/ThreadGroup;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$4;->lambdaFactory$(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    move-object v0, v2

    .end local v0    # "bgLoadingThreadGroup":Ljava/lang/ThreadGroup;
    return-object v0
.end method

.method private static synthetic lambda$null$414(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 8

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "bgLoadingThreadGroup":Ljava/lang/ThreadGroup;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    move-object v2, v3

    .line 291
    .local v2, "newThread":Ljava/lang/Thread;
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 294
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "bgLoadingThreadGroup":Ljava/lang/ThreadGroup;
    return-object v0
.end method


# virtual methods
.method public call()Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;)Ljava/security/PrivilegedExceptionAction;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->acc:Ljava/security/AccessControlContext;

    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    return-object v0

    .line 260
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 261
    .local v1, "e":Ljava/security/PrivilegedActionException;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    move-object v2, v3

    .line 263
    .local v2, "cause":Ljava/lang/Throwable;
    move-object v3, v2

    instance-of v3, v3, Ljava/io/IOException;

    if-eqz v3, :cond_0

    .line 264
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 267
    :cond_0
    new-instance v3, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->call()Lcom/sun/javafx/tk/quantum/PrismImageLoader2;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    return-object v0
.end method

.method protected processStream(Ljava/io/InputStream;)Lcom/sun/javafx/tk/quantum/PrismImageLoader2;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    move-object v1, p1

    .local v1, "stream":Ljava/io/InputStream;
    new-instance v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->width:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->height:I

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->preserveRatio:Z

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->smooth:Z

    invoke-direct/range {v3 .. v8}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;-><init>(Ljava/io/InputStream;IIZZ)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    return-object v0
.end method

.method protected bridge synthetic processStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->processStream(Ljava/io/InputStream;)Lcom/sun/javafx/tk/quantum/PrismImageLoader2;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    return-object v0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;
    sget-object v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->BG_LOADING_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->future:Ljava/util/concurrent/FutureTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method
