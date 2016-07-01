.class public Lcom/sun/prism/impl/QueuedPixelSource;
.super Ljava/lang/Object;
.source "QueuedPixelSource.java"

# interfaces
.implements Lcom/sun/prism/PixelSource;


# instance fields
.field private volatile beingConsumed:Lcom/sun/glass/ui/Pixels;

.field private volatile enqueued:Lcom/sun/glass/ui/Pixels;

.field private final saved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/glass/ui/Pixels;",
            ">;>;"
        }
    .end annotation
.end field

.field private final useDirectBuffers:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/QueuedPixelSource;
    move v1, p1

    .local v1, "useDirectBuffers":Z
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lcom/sun/prism/impl/QueuedPixelSource;->saved:Ljava/util/List;

    .line 69
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/impl/QueuedPixelSource;->useDirectBuffers:Z

    .line 70
    return-void
.end method

.method private usesSameBuffer(Lcom/sun/glass/ui/Pixels;Lcom/sun/glass/ui/Pixels;)Z
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/QueuedPixelSource;
    move-object v1, p1

    .local v1, "p1":Lcom/sun/glass/ui/Pixels;
    move-object v2, p2

    .local v2, "p2":Lcom/sun/glass/ui/Pixels;
    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 103
    .end local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    :goto_0
    return v0

    .line 102
    .restart local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v2

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 103
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized doneWithPixels(Lcom/sun/glass/ui/Pixels;)V
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/QueuedPixelSource;
    move-object v1, p1

    .local v1, "used":Lcom/sun/glass/ui/Pixels;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/prism/impl/QueuedPixelSource;->beingConsumed:Lcom/sun/glass/ui/Pixels;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 87
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong pixels buffer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/QueuedPixelSource;->beingConsumed:Lcom/sun/glass/ui/Pixels;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    throw v0

    .line 89
    .restart local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    :try_start_1
    iput-object v3, v2, Lcom/sun/prism/impl/QueuedPixelSource;->beingConsumed:Lcom/sun/glass/ui/Pixels;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit v6

    return-void
.end method

.method public declared-synchronized enqueuePixels(Lcom/sun/glass/ui/Pixels;)V
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/QueuedPixelSource;
    move-object v1, p1

    .local v1, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    iput-object v3, v2, Lcom/sun/prism/impl/QueuedPixelSource;->enqueued:Lcom/sun/glass/ui/Pixels;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit v4

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    throw v0
.end method

.method public declared-synchronized getLatestPixels()Lcom/sun/glass/ui/Pixels;
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/QueuedPixelSource;
    move-object v5, p0

    monitor-enter v5

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/prism/impl/QueuedPixelSource;->beingConsumed:Lcom/sun/glass/ui/Pixels;

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already consuming pixels: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/QueuedPixelSource;->beingConsumed:Lcom/sun/glass/ui/Pixels;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    throw v0

    .line 77
    .restart local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    :cond_0
    move-object v1, v0

    :try_start_1
    iget-object v1, v1, Lcom/sun/prism/impl/QueuedPixelSource;->enqueued:Lcom/sun/glass/ui/Pixels;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/QueuedPixelSource;->enqueued:Lcom/sun/glass/ui/Pixels;

    iput-object v2, v1, Lcom/sun/prism/impl/QueuedPixelSource;->beingConsumed:Lcom/sun/glass/ui/Pixels;

    .line 79
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/QueuedPixelSource;->enqueued:Lcom/sun/glass/ui/Pixels;

    .line 81
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/QueuedPixelSource;->beingConsumed:Lcom/sun/glass/ui/Pixels;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    monitor-exit v5

    return-object v0
.end method

.method public declared-synchronized getUnusedPixels(IIF)Lcom/sun/glass/ui/Pixels;
    .locals 15

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/QueuedPixelSource;
    move/from16 v1, p1

    .local v1, "w":I
    move/from16 v2, p2

    .local v2, "h":I
    move/from16 v3, p3

    .local v3, "scale":F
    move-object v13, p0

    monitor-enter v13

    const/4 v8, 0x0

    move v4, v8

    .line 121
    .local v4, "i":I
    const/4 v8, 0x0

    move-object v5, v8

    .line 122
    .local v5, "reuseBuffer":Ljava/nio/IntBuffer;
    :goto_0
    move v8, v4

    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/sun/prism/impl/QueuedPixelSource;->saved:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 123
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/QueuedPixelSource;->saved:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    move-object v6, v8

    .line 124
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/glass/ui/Pixels;>;"
    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/glass/ui/Pixels;

    move-object v7, v8

    .line 125
    .local v7, "p":Lcom/sun/glass/ui/Pixels;
    move-object v8, v7

    if-nez v8, :cond_0

    .line 126
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/QueuedPixelSource;->saved:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 127
    goto :goto_0

    .line 129
    :cond_0
    move-object v8, v0

    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/QueuedPixelSource;->beingConsumed:Lcom/sun/glass/ui/Pixels;

    invoke-direct {v8, v9, v10}, Lcom/sun/prism/impl/QueuedPixelSource;->usesSameBuffer(Lcom/sun/glass/ui/Pixels;Lcom/sun/glass/ui/Pixels;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v0

    move-object v9, v7

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/QueuedPixelSource;->enqueued:Lcom/sun/glass/ui/Pixels;

    invoke-direct {v8, v9, v10}, Lcom/sun/prism/impl/QueuedPixelSource;->usesSameBuffer(Lcom/sun/glass/ui/Pixels;Lcom/sun/glass/ui/Pixels;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 130
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 131
    goto :goto_0

    .line 133
    :cond_2
    move-object v8, v7

    invoke-virtual {v8}, Lcom/sun/glass/ui/Pixels;->getWidthUnsafe()I

    move-result v8

    move v9, v1

    if-ne v8, v9, :cond_3

    move-object v8, v7

    .line 134
    invoke-virtual {v8}, Lcom/sun/glass/ui/Pixels;->getHeightUnsafe()I

    move-result v8

    move v9, v2

    if-ne v8, v9, :cond_3

    move-object v8, v7

    .line 135
    invoke-virtual {v8}, Lcom/sun/glass/ui/Pixels;->getScaleUnsafe()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    move v9, v3

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    .line 137
    move-object v8, v7

    move-object v0, v8

    .line 160
    .end local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/glass/ui/Pixels;>;"
    .end local v7    # "p":Lcom/sun/glass/ui/Pixels;
    :goto_1
    monitor-exit v13

    return-object v0

    .line 140
    .restart local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    .restart local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/glass/ui/Pixels;>;"
    .restart local v7    # "p":Lcom/sun/glass/ui/Pixels;
    :cond_3
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lcom/sun/prism/impl/QueuedPixelSource;->saved:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 141
    move-object v8, v7

    invoke-virtual {v8}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/IntBuffer;

    move-object v5, v8

    .line 142
    move-object v8, v5

    invoke-virtual {v8}, Ljava/nio/IntBuffer;->capacity()I

    move-result v8

    move v9, v1

    move v10, v2

    mul-int/2addr v9, v10

    if-lt v8, v9, :cond_6

    .line 143
    .line 150
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/glass/ui/Pixels;>;"
    .end local v7    # "p":Lcom/sun/glass/ui/Pixels;
    :cond_4
    move-object v8, v5

    if-nez v8, :cond_5

    .line 151
    move v8, v1

    move v9, v2

    mul-int/2addr v8, v9

    move v6, v8

    .line 152
    .local v6, "bufsize":I
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/prism/impl/QueuedPixelSource;->useDirectBuffers:Z

    if-eqz v8, :cond_7

    .line 153
    move v8, v6

    invoke-static {v8}, Lcom/sun/prism/impl/BufferUtil;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v8

    move-object v5, v8

    .line 158
    .end local v6    # "bufsize":I
    :cond_5
    :goto_2
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v8

    move v9, v1

    move v10, v2

    move-object v11, v5

    move v12, v3

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/IntBuffer;F)Lcom/sun/glass/ui/Pixels;

    move-result-object v8

    move-object v6, v8

    .line 159
    .local v6, "p":Lcom/sun/glass/ui/Pixels;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/QueuedPixelSource;->saved:Ljava/util/List;

    new-instance v9, Ljava/lang/ref/WeakReference;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v6

    invoke-direct {v10, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 160
    move-object v8, v6

    move-object v0, v8

    goto :goto_1

    .line 145
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/sun/glass/ui/Pixels;>;"
    .restart local v7    # "p":Lcom/sun/glass/ui/Pixels;
    :cond_6
    const/4 v8, 0x0

    move-object v5, v8

    .line 149
    goto/16 :goto_0

    .line 155
    .end local v7    # "p":Lcom/sun/glass/ui/Pixels;
    .local v6, "bufsize":I
    :cond_7
    move v8, v6

    invoke-static {v8}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    move-object v5, v8

    goto :goto_2

    .line 120
    .end local v6    # "bufsize":I
    :catchall_0
    move-exception v0

    monitor-exit v13

    .end local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    throw v0
.end method

.method public declared-synchronized skipLatestPixels()V
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/QueuedPixelSource;
    move-object v5, p0

    monitor-enter v5

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/prism/impl/QueuedPixelSource;->beingConsumed:Lcom/sun/glass/ui/Pixels;

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot skip while processing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/QueuedPixelSource;->beingConsumed:Lcom/sun/glass/ui/Pixels;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    throw v0

    .line 97
    .restart local v0    # "this":Lcom/sun/prism/impl/QueuedPixelSource;
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    :try_start_1
    iput-object v2, v1, Lcom/sun/prism/impl/QueuedPixelSource;->enqueued:Lcom/sun/glass/ui/Pixels;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit v5

    return-void
.end method
