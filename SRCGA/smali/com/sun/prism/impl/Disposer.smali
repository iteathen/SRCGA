.class public Lcom/sun/prism/impl/Disposer;
.super Ljava/lang/Object;
.source "Disposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/impl/Disposer$Target;,
        Lcom/sun/prism/impl/Disposer$Record;
    }
.end annotation


# static fields
.field private static final PHANTOM:I = 0x1

.field private static final SOFT:I = 0x2

.field private static final WEAK:I

.field private static disposerInstance:Lcom/sun/prism/impl/Disposer;

.field private static refType:I


# instance fields
.field private final disposalQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sun/prism/impl/Disposer$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;

.field private final records:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    const/4 v1, 0x1

    sput v1, Lcom/sun/prism/impl/Disposer;->refType:I

    .line 57
    sget-object v1, Lcom/sun/prism/impl/PrismSettings;->refType:Ljava/lang/String;

    move-object v0, v1

    .line 58
    .local v0, "type":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 59
    move-object v1, v0

    const-string v2, "weak"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const/4 v1, 0x0

    sput v1, Lcom/sun/prism/impl/Disposer;->refType:I

    .line 61
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Using WEAK refs"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    new-instance v1, Lcom/sun/prism/impl/Disposer;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/Disposer;-><init>()V

    sput-object v1, Lcom/sun/prism/impl/Disposer;->disposerInstance:Lcom/sun/prism/impl/Disposer;

    .line 71
    return-void

    .line 62
    :cond_1
    move-object v1, v0

    const-string v2, "soft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    const/4 v1, 0x2

    sput v1, Lcom/sun/prism/impl/Disposer;->refType:I

    .line 64
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Using SOFT refs"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    const/4 v1, 0x1

    sput v1, Lcom/sun/prism/impl/Disposer;->refType:I

    .line 67
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Using PHANTOM refs"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/Disposer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 73
    move-object v1, v0

    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, v1, Lcom/sun/prism/impl/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 74
    move-object v1, v0

    new-instance v2, Ljava/util/Hashtable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Lcom/sun/prism/impl/Disposer;->records:Ljava/util/Hashtable;

    .line 75
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lcom/sun/prism/impl/Disposer;->disposalQueue:Ljava/util/LinkedList;

    .line 81
    return-void
.end method

.method private declared-synchronized add(Ljava/lang/Object;Lcom/sun/prism/impl/Disposer$Record;)V
    .locals 10

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/Disposer;
    move-object v1, p1

    .local v1, "target":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "rec":Lcom/sun/prism/impl/Disposer$Record;
    move-object v8, p0

    monitor-enter v8

    move-object v4, v1

    :try_start_0
    instance-of v4, v4, Lcom/sun/prism/impl/Disposer$Target;

    if-eqz v4, :cond_0

    .line 143
    move-object v4, v1

    check-cast v4, Lcom/sun/prism/impl/Disposer$Target;

    invoke-interface {v4}, Lcom/sun/prism/impl/Disposer$Target;->getDisposerReferent()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 146
    :cond_0
    sget v4, Lcom/sun/prism/impl/Disposer;->refType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 147
    new-instance v4, Ljava/lang/ref/PhantomReference;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v5, v6, v7}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object v3, v4

    .line 153
    .local v3, "ref":Ljava/lang/ref/Reference;
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/Disposer;->records:Ljava/util/Hashtable;

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 154
    monitor-exit v8

    return-void

    .line 148
    .end local v3    # "ref":Ljava/lang/ref/Reference;
    :cond_1
    :try_start_1
    sget v4, Lcom/sun/prism/impl/Disposer;->refType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 149
    new-instance v4, Ljava/lang/ref/SoftReference;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v5, v6, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object v3, v4

    .restart local v3    # "ref":Ljava/lang/ref/Reference;
    goto :goto_0

    .line 151
    .end local v3    # "ref":Ljava/lang/ref/Reference;
    :cond_2
    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v5, v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    .restart local v3    # "ref":Ljava/lang/ref/Reference;
    goto :goto_0

    .line 142
    .end local v3    # "ref":Ljava/lang/ref/Reference;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/sun/prism/impl/Disposer;
    throw v0
.end method

.method public static addRecord(Ljava/lang/Object;Lcom/sun/prism/impl/Disposer$Record;)V
    .locals 5

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "target":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "rec":Lcom/sun/prism/impl/Disposer$Record;
    sget-object v2, Lcom/sun/prism/impl/Disposer;->disposerInstance:Lcom/sun/prism/impl/Disposer;

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/prism/impl/Disposer;->add(Ljava/lang/Object;Lcom/sun/prism/impl/Disposer$Record;)V

    .line 107
    return-void
.end method

.method private declared-synchronized addToDisposalQueue(Lcom/sun/prism/impl/Disposer$Record;)V
    .locals 5

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/Disposer;
    move-object v1, p1

    .local v1, "rec":Lcom/sun/prism/impl/Disposer$Record;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/prism/impl/Disposer;->disposalQueue:Ljava/util/LinkedList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 158
    monitor-exit v4

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/prism/impl/Disposer;
    throw v0
.end method

.method public static cleanUp()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/sun/prism/impl/Disposer;->disposerInstance:Lcom/sun/prism/impl/Disposer;

    invoke-direct {v0}, Lcom/sun/prism/impl/Disposer;->disposeUnreachables()V

    .line 130
    sget-object v0, Lcom/sun/prism/impl/Disposer;->disposerInstance:Lcom/sun/prism/impl/Disposer;

    invoke-direct {v0}, Lcom/sun/prism/impl/Disposer;->processDisposalQueue()V

    .line 131
    return-void
.end method

.method public static disposeRecord(Lcom/sun/prism/impl/Disposer$Record;)V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "rec":Lcom/sun/prism/impl/Disposer$Record;
    sget-object v1, Lcom/sun/prism/impl/Disposer;->disposerInstance:Lcom/sun/prism/impl/Disposer;

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/sun/prism/impl/Disposer;->addToDisposalQueue(Lcom/sun/prism/impl/Disposer$Record;)V

    .line 117
    return-void
.end method

.method private declared-synchronized disposeUnreachables()V
    .locals 8

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/Disposer;
    move-object v6, p0

    monitor-enter v6

    :goto_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/prism/impl/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    .local v1, "obj":Ljava/lang/ref/Reference;
    if-eqz v3, :cond_0

    .line 169
    move-object v3, v1

    :try_start_1
    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->clear()V

    .line 170
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/Disposer;->records:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/impl/Disposer$Record;

    move-object v2, v3

    .line 171
    .local v2, "rec":Lcom/sun/prism/impl/Disposer$Record;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/impl/Disposer$Record;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    const/4 v3, 0x0

    move-object v1, v3

    .line 173
    .local v1, "obj":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v2, v3

    .line 177
    .end local v2    # "rec":Lcom/sun/prism/impl/Disposer$Record;
    goto :goto_0

    .line 174
    .local v1, "obj":Ljava/lang/ref/Reference;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while removing reference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    goto :goto_0

    .line 179
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v6

    return-void

    .line 167
    .end local v1    # "obj":Ljava/lang/ref/Reference;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/prism/impl/Disposer;
    throw v0
.end method

.method private declared-synchronized processDisposalQueue()V
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/Disposer;
    move-object v2, p0

    monitor-enter v2

    :goto_0
    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/prism/impl/Disposer;->disposalQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/Disposer;->disposalQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/impl/Disposer$Record;

    invoke-interface {v1}, Lcom/sun/prism/impl/Disposer$Record;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 186
    :cond_0
    monitor-exit v2

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/sun/prism/impl/Disposer;
    throw v0
.end method
