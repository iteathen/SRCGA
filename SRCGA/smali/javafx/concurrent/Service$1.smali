.class final Ljavafx/concurrent/Service$1;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljavafx/concurrent/Service$1;->offer(Ljava/lang/Runnable;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/concurrent/Service$1;
    return v0
.end method

.method public offer(Ljava/lang/Runnable;)Z
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/Service$1;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    # getter for: Ljavafx/concurrent/Service;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Ljavafx/concurrent/Service;->access$000()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 164
    const/4 v2, 0x0

    move v0, v2

    .line 166
    .end local v0    # "this":Ljavafx/concurrent/Service$1;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/concurrent/Service$1;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method
