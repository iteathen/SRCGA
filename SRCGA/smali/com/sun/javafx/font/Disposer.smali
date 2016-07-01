.class public Lcom/sun/javafx/font/Disposer;
.super Ljava/lang/Object;
.source "Disposer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static disposerInstance:Lcom/sun/javafx/font/Disposer;

.field private static final queue:Ljava/lang/ref/ReferenceQueue;

.field private static final records:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v1, Lcom/sun/javafx/font/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 48
    new-instance v1, Ljava/util/Hashtable;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/sun/javafx/font/Disposer;->records:Ljava/util/Hashtable;

    .line 52
    new-instance v1, Lcom/sun/javafx/font/Disposer;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/font/Disposer;-><init>()V

    sput-object v1, Lcom/sun/javafx/font/Disposer;->disposerInstance:Lcom/sun/javafx/font/Disposer;

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    move-object v0, v1

    .line 55
    .local v0, "tg":Ljava/lang/ThreadGroup;
    new-instance v1, Lcom/sun/javafx/font/Disposer$1;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/font/Disposer$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/Disposer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sun/javafx/font/Disposer;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sun/javafx/font/Disposer;->disposerInstance:Lcom/sun/javafx/font/Disposer;

    return-object v0
.end method

.method public static addRecord(Ljava/lang/Object;Lcom/sun/javafx/font/DisposerRecord;)Ljava/lang/ref/WeakReference;
    .locals 8

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "target":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "rec":Lcom/sun/javafx/font/DisposerRecord;
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    sget-object v6, Lcom/sun/javafx/font/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object v2, v3

    .line 86
    .local v2, "ref":Ljava/lang/ref/WeakReference;
    sget-object v3, Lcom/sun/javafx/font/Disposer;->disposerInstance:Lcom/sun/javafx/font/Disposer;

    sget-object v3, Lcom/sun/javafx/font/Disposer;->records:Ljava/util/Hashtable;

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 87
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "target":Ljava/lang/Object;
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/Disposer;
    :goto_0
    :try_start_0
    sget-object v3, Lcom/sun/javafx/font/Disposer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v3

    move-object v1, v3

    .line 94
    .local v1, "obj":Ljava/lang/ref/Reference;
    move-object v3, v1

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->clear()V

    .line 95
    sget-object v3, Lcom/sun/javafx/font/Disposer;->records:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/font/DisposerRecord;

    move-object v2, v3

    .line 96
    .local v2, "rec":Lcom/sun/javafx/font/DisposerRecord;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/javafx/font/DisposerRecord;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v3, 0x0

    move-object v1, v3

    .line 98
    .local v1, "obj":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v2, v3

    .line 102
    .end local v2    # "rec":Lcom/sun/javafx/font/DisposerRecord;
    goto :goto_0

    .line 99
    .end local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while removing reference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    goto :goto_0
.end method
