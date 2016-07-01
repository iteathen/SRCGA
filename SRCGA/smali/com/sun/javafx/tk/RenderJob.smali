.class public Lcom/sun/javafx/tk/RenderJob;
.super Ljava/util/concurrent/FutureTask;
.source "RenderJob.java"


# instance fields
.field private futureReturn:Ljava/lang/Object;

.field private listener:Lcom/sun/javafx/tk/CompletionListener;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/RenderJob;
    move-object v1, p1

    .local v1, "pen":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/sun/javafx/tk/CompletionListener;)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/RenderJob;
    move-object v1, p1

    .local v1, "pen":Ljava/lang/Runnable;
    move-object v2, p2

    .local v2, "cl":Lcom/sun/javafx/tk/CompletionListener;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 46
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/RenderJob;->setCompletionListener(Lcom/sun/javafx/tk/CompletionListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/RenderJob;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/RenderJob;->futureReturn:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/RenderJob;
    return-object v0
.end method

.method public getCompletionListener()Lcom/sun/javafx/tk/CompletionListener;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/RenderJob;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/RenderJob;->listener:Lcom/sun/javafx/tk/CompletionListener;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/RenderJob;
    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/RenderJob;
    move-object v2, v0

    invoke-super {v2}, Ljava/util/concurrent/FutureTask;->runAndReset()Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    move-object v2, v0

    :try_start_0
    invoke-super {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 62
    .local v1, "value":Ljava/lang/Object;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RenderJob.run: failed no exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 70
    .line 83
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 64
    .local v1, "ce":Ljava/util/concurrent/CancellationException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "RenderJob.run: task cancelled"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 65
    .end local v1    # "ce":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 66
    .local v1, "ee":Ljava/util/concurrent/ExecutionException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "RenderJob.run: internal exception"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    goto :goto_0

    .line 68
    .end local v1    # "ee":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 69
    .local v1, "th":Ljava/lang/Throwable;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    goto :goto_0

    .line 75
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/RenderJob;->listener:Lcom/sun/javafx/tk/CompletionListener;

    if-eqz v2, :cond_0

    .line 77
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/sun/javafx/tk/RenderJob;->listener:Lcom/sun/javafx/tk/CompletionListener;

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/CompletionListener;->done(Lcom/sun/javafx/tk/RenderJob;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 80
    goto :goto_0

    .line 78
    :catch_3
    move-exception v2

    move-object v1, v2

    .line 79
    .restart local v1    # "th":Ljava/lang/Throwable;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setCompletionListener(Lcom/sun/javafx/tk/CompletionListener;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/RenderJob;
    move-object v1, p1

    .local v1, "cl":Lcom/sun/javafx/tk/CompletionListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/RenderJob;->listener:Lcom/sun/javafx/tk/CompletionListener;

    .line 55
    return-void
.end method

.method public setFutureReturn(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/RenderJob;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/RenderJob;->futureReturn:Ljava/lang/Object;

    .line 91
    return-void
.end method
