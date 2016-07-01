.class public final Lcom/sun/webkit/Disposer;
.super Ljava/lang/Object;
.source "Disposer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/webkit/Disposer$WeakDisposerRecord;,
        Lcom/sun/webkit/Disposer$DisposerRunnable;
    }
.end annotation


# static fields
.field private static final disposerInstance:Lcom/sun/webkit/Disposer;

.field private static final queue:Ljava/lang/ref/ReferenceQueue;

.field private static final records:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/webkit/Disposer$WeakDisposerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 50
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v1, Lcom/sun/webkit/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 51
    new-instance v1, Lcom/sun/webkit/Disposer;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Lcom/sun/webkit/Disposer;-><init>()V

    sput-object v1, Lcom/sun/webkit/Disposer;->disposerInstance:Lcom/sun/webkit/Disposer;

    .line 52
    new-instance v1, Ljava/util/HashSet;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/sun/webkit/Disposer;->records:Ljava/util/Set;

    .line 56
    new-instance v1, Ljava/lang/Thread;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Lcom/sun/webkit/Disposer;->disposerInstance:Lcom/sun/webkit/Disposer;

    const-string v4, "Disposer"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v0, v1

    .line 57
    .local v0, "t":Ljava/lang/Thread;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 58
    move-object v1, v0

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 59
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Disposer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sun/webkit/Disposer;->records:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sun/webkit/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private declared-synchronized add(Ljava/lang/Object;Lcom/sun/webkit/DisposerRecord;)V
    .locals 11

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Disposer;
    move-object v1, p1

    .local v1, "target":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "rec":Lcom/sun/webkit/DisposerRecord;
    move-object v9, p0

    monitor-enter v9

    :try_start_0
    sget-object v3, Lcom/sun/webkit/Disposer;->records:Ljava/util/Set;

    new-instance v4, Lcom/sun/webkit/Disposer$WeakDisposerRecord;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/webkit/Disposer$WeakDisposerRecord;-><init>(Ljava/lang/Object;Lcom/sun/webkit/DisposerRecord;Lcom/sun/webkit/Disposer$1;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 80
    monitor-exit v9

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v9

    .end local v0    # "this":Lcom/sun/webkit/Disposer;
    throw v0
.end method

.method public static addRecord(Ljava/lang/Object;Lcom/sun/webkit/DisposerRecord;)V
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "target":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "rec":Lcom/sun/webkit/DisposerRecord;
    sget-object v2, Lcom/sun/webkit/Disposer;->disposerInstance:Lcom/sun/webkit/Disposer;

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/webkit/Disposer;->add(Ljava/lang/Object;Lcom/sun/webkit/DisposerRecord;)V

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Disposer;
    :goto_0
    :try_start_0
    sget-object v2, Lcom/sun/webkit/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Lcom/sun/webkit/Disposer$WeakDisposerRecord;

    move-object v1, v2

    .line 86
    .local v1, "obj":Lcom/sun/webkit/Disposer$WeakDisposerRecord;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/webkit/Disposer$WeakDisposerRecord;->clear()V

    .line 87
    # invokes: Lcom/sun/webkit/Disposer$DisposerRunnable;->getInstance()Lcom/sun/webkit/Disposer$DisposerRunnable;
    invoke-static {}, Lcom/sun/webkit/Disposer$DisposerRunnable;->access$100()Lcom/sun/webkit/Disposer$DisposerRunnable;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/webkit/Disposer$DisposerRunnable;->access$200(Lcom/sun/webkit/Disposer$DisposerRunnable;Lcom/sun/webkit/Disposer$WeakDisposerRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 88
    .end local v1    # "obj":Lcom/sun/webkit/Disposer$WeakDisposerRecord;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while removing reference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    goto :goto_0
.end method
