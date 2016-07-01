.class Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$2;
.super Ljava/util/concurrent/FutureTask;
.source "AbstractAsyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;-><init>(Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;

.field final synthetic val$completionRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$2;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$2;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;
    move-object v2, p2

    .local v2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$2;->this$0:Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$2;->val$completionRunnable:Ljava/lang/Runnable;

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$2;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$2;"
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$2;->val$completionRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    move-object v2, v0

    invoke-super {v2}, Ljava/util/concurrent/FutureTask;->done()V

    .line 85
    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    invoke-super {v2}, Ljava/util/concurrent/FutureTask;->done()V

    move-object v2, v1

    throw v2
.end method
