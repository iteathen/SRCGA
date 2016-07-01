.class Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnableEvent"
.end annotation


# instance fields
.field private runnable:Ljava/lang/Runnable;

.field private wait:Z


# direct methods
.method constructor <init>(ZLjava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;
    move v1, p1

    .local v1, "wait":Z
    move-object v2, p2

    .local v2, "runnable":Ljava/lang/Runnable;
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    .line 163
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;->wait:Z

    .line 164
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;->runnable:Ljava/lang/Runnable;

    .line 165
    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 6

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;->runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 170
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;->wait:Z

    if-eqz v3, :cond_0

    .line 171
    # getter for: Lcom/sun/glass/ui/lens/LensApplication;->invokeAndWaitLock:Ljava/lang/Object;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication;->access$100()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 172
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/sun/glass/ui/lens/LensApplication;->access$202(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v3

    .line 173
    # getter for: Lcom/sun/glass/ui/lens/LensApplication;->invokeAndWaitLock:Ljava/lang/Object;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication;->access$100()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 174
    move-object v3, v1

    monitor-exit v3

    .line 176
    :cond_0
    return-void

    .line 174
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RunnableEvent[runnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",wait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;->wait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;
    return-object v0
.end method
