.class public Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;
.super Ljava/io/BufferedInputStream;
.source "AbstractRemoteResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/runtime/async/AbstractRemoteResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProgressInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/runtime/async/AbstractRemoteResource;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/runtime/async/AbstractRemoteResource;Ljava/io/InputStream;)V
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>.ProgressInputStream;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/runtime/async/AbstractRemoteResource;
    move-object v2, p2

    .local v2, "in":Ljava/io/InputStream;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;->this$0:Lcom/sun/javafx/runtime/async/AbstractRemoteResource;

    .line 118
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 119
    return-void
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>.ProgressInputStream;"
    move-object v4, p0

    monitor-enter v4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    new-instance v2, Ljava/io/InterruptedIOException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>.ProgressInputStream;"
    throw v0

    .line 125
    .restart local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>.ProgressInputStream;"
    :cond_0
    move-object v2, v0

    :try_start_1
    invoke-super {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    move v1, v2

    .line 126
    .local v1, "ch":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;->this$0:Lcom/sun/javafx/runtime/async/AbstractRemoteResource;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->addProgress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>.ProgressInputStream;"
    monitor-exit v4

    return v0
.end method

.method public read([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>.ProgressInputStream;"
    move-object v1, p1

    .local v1, "b":[B
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    new-instance v3, Ljava/io/InterruptedIOException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 143
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    move v2, v3

    .line 144
    .local v2, "bytes":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;->this$0:Lcom/sun/javafx/runtime/async/AbstractRemoteResource;

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->addProgress(I)V

    .line 145
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>.ProgressInputStream;"
    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>.ProgressInputStream;"
    move-object v1, p1

    .local v1, "b":[B
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v9, p0

    monitor-enter v9

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    new-instance v5, Ljava/io/InterruptedIOException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/io/InterruptedIOException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>.ProgressInputStream;"
    throw v0

    .line 134
    .restart local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>.ProgressInputStream;"
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    :try_start_1
    invoke-super {v5, v6, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    move v4, v5

    .line 135
    .local v4, "bytes":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;->this$0:Lcom/sun/javafx/runtime/async/AbstractRemoteResource;

    move v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/runtime/async/AbstractRemoteResource;->addProgress(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/runtime/async/AbstractRemoteResource$ProgressInputStream;, "Lcom/sun/javafx/runtime/async/AbstractRemoteResource<TT;>.ProgressInputStream;"
    monitor-exit v9

    return v0
.end method
