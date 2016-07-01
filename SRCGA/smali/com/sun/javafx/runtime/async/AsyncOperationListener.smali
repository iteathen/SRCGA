.class public interface abstract Lcom/sun/javafx/runtime/async/AsyncOperationListener;
.super Ljava/lang/Object;
.source "AsyncOperationListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onCompletion(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public abstract onException(Ljava/lang/Exception;)V
.end method

.method public abstract onProgress(II)V
.end method
