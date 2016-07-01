.class Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;
.super Ljava/lang/Object;
.source "AbstractAsyncOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;-><init>(Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;

.field final synthetic val$listener:Lcom/sun/javafx/runtime/async/AsyncOperationListener;


# direct methods
.method constructor <init>(Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;Lcom/sun/javafx/runtime/async/AsyncOperationListener;)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;->this$0:Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;->val$listener:Lcom/sun/javafx/runtime/async/AsyncOperationListener;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;, "Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;->this$0:Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;

    iget-object v2, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;->val$listener:Lcom/sun/javafx/runtime/async/AsyncOperationListener;

    invoke-interface {v2}, Lcom/sun/javafx/runtime/async/AsyncOperationListener;->onCancel()V

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;->val$listener:Lcom/sun/javafx/runtime/async/AsyncOperationListener;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;->this$0:Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;

    iget-object v3, v3, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation;->future:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sun/javafx/runtime/async/AsyncOperationListener;->onCompletion(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 69
    .local v1, "e":Ljava/lang/InterruptedException;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;->val$listener:Lcom/sun/javafx/runtime/async/AsyncOperationListener;

    invoke-interface {v2}, Lcom/sun/javafx/runtime/async/AsyncOperationListener;->onCancel()V

    .line 73
    goto :goto_0

    .line 71
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 72
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/runtime/async/AbstractAsyncOperation$1;->val$listener:Lcom/sun/javafx/runtime/async/AsyncOperationListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/runtime/async/AsyncOperationListener;->onException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
