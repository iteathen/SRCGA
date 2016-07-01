.class public abstract Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;
.super Ljava/lang/Object;
.source "AbstractAsyncOperation.java"

# interfaces
.implements Lcom/sun/javafx/runtime/async/AsyncOperation;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/javafx/runtime/async/AsyncOperation;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private bytesRead:I

.field protected final future:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TV;>;"
        }
    .end annotation
.end field

.field private lastProgress:I

.field protected final listener:Lcom/sun/javafx/runtime/async/AsyncOperationListener;

.field private nextProgress:I

.field private progressGranularity:I

.field private progressIncrement:I

.field private progressMax:I


# direct methods
.method protected constructor <init>(Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/runtime/async/AsyncOperationListener",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/runtime/async/AsyncOperationListener;, "Lcom/sun/javafx/runtime/async/AsyncOperationListener<TV;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v4, v0

    const/16 v5, 0x64

    iput v5, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressGranularity:I

    .line 55
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->listener:Lcom/sun/javafx/runtime/async/AsyncOperationListener;

    .line 57
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;)Ljava/util/concurrent/Callable;

    move-result-object v4

    move-object v2, v4

    .line 59
    .local v2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    new-instance v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;-><init>(Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V

    move-object v3, v4

    .line 77
    .local v3, "completionRunnable":Ljava/lang/Runnable;
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$2;-><init>(Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)V

    iput-object v5, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->future:Ljava/util/concurrent/FutureTask;

    .line 88
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->lambda$new$254()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;II)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->lambda$notifyProgress$255(II)V

    return-void
.end method

.method private synthetic lambda$new$254()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->call()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    return-object v0
.end method

.method private synthetic lambda$notifyProgress$255(II)V
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move v1, p1

    .local v1, "last":I
    move v2, p2

    .local v2, "max":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->listener:Lcom/sun/javafx/runtime/async/AsyncOperationListener;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/runtime/async/AsyncOperationListener;->onProgress(II)V

    return-void
.end method


# virtual methods
.method protected addProgress(I)V
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move v1, p1

    .local v1, "amount":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->bytesRead:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->bytesRead:I

    .line 114
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->bytesRead:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->nextProgress:I

    if-le v2, v3, :cond_0

    .line 115
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->bytesRead:I

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->lastProgress:I

    .line 116
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->notifyProgress()V

    .line 117
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->lastProgress:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    div-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    mul-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->nextProgress:I

    .line 119
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->future:Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v1

    .line 100
    return-void
.end method

.method protected getProgressGranularity()I
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressGranularity:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    return v0
.end method

.method protected getProgressMax()I
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressMax:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    return v0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    return v0
.end method

.method protected notifyProgress()V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->lastProgress:I

    move v1, v3

    .line 108
    .local v1, "last":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressMax:I

    move v2, v3

    .line 109
    .local v2, "max":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;II)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method protected setProgressGranularity(I)V
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move v1, p1

    .local v1, "progressGranularity":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressGranularity:I

    .line 149
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressMax:I

    move v4, v1

    div-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    .line 150
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->lastProgress:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    div-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    mul-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->nextProgress:I

    .line 151
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->notifyProgress()V

    .line 152
    return-void
.end method

.method protected setProgressMax(I)V
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    move v1, p1

    .local v1, "progressMax":I
    move v2, v1

    if-nez v2, :cond_1

    .line 127
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressGranularity:I

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    .line 139
    :cond_0
    :goto_0
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->lastProgress:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    div-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    mul-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->nextProgress:I

    .line 140
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->notifyProgress()V

    .line 141
    return-void

    .line 129
    :cond_1
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 130
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressGranularity:I

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    goto :goto_0

    .line 133
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressMax:I

    .line 134
    move-object v2, v0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressGranularity:I

    div-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    .line 135
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 136
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->progressIncrement:I

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation<TV;>;"
    invoke-static {}, Lcom/sun/javafx/runtime/async/BackgroundExecutor;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->future:Ljava/util/concurrent/FutureTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
