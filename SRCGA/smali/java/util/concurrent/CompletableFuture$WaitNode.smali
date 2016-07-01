.class final Ljava/util/concurrent/CompletableFuture$WaitNode;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WaitNode"
.end annotation


# instance fields
.field final deadline:J

.field volatile interruptControl:I

.field nanos:J

.field volatile next:Ljava/util/concurrent/CompletableFuture$WaitNode;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(ZJJ)V
    .locals 10

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$WaitNode;
    move v1, p1

    .local v1, "interruptible":Z
    move-wide v2, p2

    .local v2, "nanos":J
    move-wide v4, p4

    .local v4, "deadline":J
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 246
    move-object v6, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    iput-object v7, v6, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    .line 247
    move-object v6, v0

    move v7, v1

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    iput v7, v6, Ljava/util/concurrent/CompletableFuture$WaitNode;->interruptControl:I

    .line 248
    move-object v6, v0

    move-wide v7, v2

    iput-wide v7, v6, Ljava/util/concurrent/CompletableFuture$WaitNode;->nanos:J

    .line 249
    move-object v6, v0

    move-wide v7, v4

    iput-wide v7, v6, Ljava/util/concurrent/CompletableFuture$WaitNode;->deadline:J

    .line 250
    return-void

    .line 247
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public block()Z
    .locals 6

    .prologue
    .line 268
    move-object v1, p0

    .local v1, "this":Ljava/util/concurrent/CompletableFuture$WaitNode;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture$WaitNode;->isReleasable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const/4 v2, 0x1

    move v1, v2

    .line 274
    .end local v1    # "this":Ljava/util/concurrent/CompletableFuture$WaitNode;
    :goto_0
    return v1

    .line 270
    .restart local v1    # "this":Ljava/util/concurrent/CompletableFuture$WaitNode;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Ljava/util/concurrent/CompletableFuture$WaitNode;->deadline:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 271
    move-object v2, v1

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 274
    :cond_1
    :goto_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture$WaitNode;->isReleasable()Z

    move-result v2

    move v1, v2

    goto :goto_0

    .line 272
    :cond_2
    move-object v2, v1

    iget-wide v2, v2, Ljava/util/concurrent/CompletableFuture$WaitNode;->nanos:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 273
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Ljava/util/concurrent/CompletableFuture$WaitNode;->nanos:J

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1
.end method

.method public isReleasable()Z
    .locals 10

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$WaitNode;
    move-object v2, v0

    iget-object v2, v2, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 253
    const/4 v2, 0x1

    move v0, v2

    .line 265
    .end local v0    # "this":Ljava/util/concurrent/CompletableFuture$WaitNode;
    :goto_0
    return v0

    .line 254
    .restart local v0    # "this":Ljava/util/concurrent/CompletableFuture$WaitNode;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    move-object v2, v0

    iget v2, v2, Ljava/util/concurrent/CompletableFuture$WaitNode;->interruptControl:I

    move v1, v2

    .line 256
    .local v1, "i":I
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Ljava/util/concurrent/CompletableFuture$WaitNode;->interruptControl:I

    .line 257
    move v2, v1

    if-lez v2, :cond_1

    .line 258
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    :cond_1
    move-object v2, v0

    iget-wide v2, v2, Ljava/util/concurrent/CompletableFuture$WaitNode;->deadline:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-wide v2, v2, Ljava/util/concurrent/CompletableFuture$WaitNode;->nanos:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move-object v2, v0

    move-object v3, v0

    iget-wide v3, v3, Ljava/util/concurrent/CompletableFuture$WaitNode;->deadline:J

    .line 261
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    move-object v7, v2

    move-wide v8, v3

    move-wide v2, v8

    move-object v4, v7

    move-wide v5, v8

    iput-wide v5, v4, Ljava/util/concurrent/CompletableFuture$WaitNode;->nanos:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    .line 262
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljava/util/concurrent/CompletableFuture$WaitNode;->thread:Ljava/lang/Thread;

    .line 263
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 265
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
