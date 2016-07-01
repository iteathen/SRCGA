.class Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;
.super Ljava/lang/Object;
.source "FontFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/FontFileWriter$FontTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TempFileDeletionHook"
.end annotation


# static fields
.field private static files:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Ljava/io/RandomAccessFile;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 341
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    .line 344
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->t:Ljava/lang/Thread;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->lambda$init$235()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1()V
    .locals 0

    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->lambda$null$234()V

    return-void
.end method

.method static declared-synchronized add(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    const-class v4, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->init()V

    .line 364
    sget-object v1, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 365
    monitor-exit v4

    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "file":Ljava/io/File;
    throw v0
.end method

.method static init()V
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->t:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 348
    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 358
    :cond_0
    return-void
.end method

.method private static synthetic lambda$init$235()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 350
    new-instance v0, Ljava/lang/Thread;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook$$Lambda$2;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->t:Ljava/lang/Thread;

    .line 353
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->t:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$null$234()V
    .locals 0

    .prologue
    .line 351
    invoke-static {}, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->runHooks()V

    .line 352
    return-void
.end method

.method static declared-synchronized remove(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    const-class v3, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 373
    monitor-exit v3

    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "file":Ljava/io/File;
    throw v0
.end method

.method static declared-synchronized runHooks()V
    .locals 5

    .prologue
    .line 376
    const-class v4, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    .line 390
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/io/RandomAccessFile;>;"
    :goto_0
    monitor-exit v4

    return-void

    .line 380
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/io/RandomAccessFile;>;"
    :cond_0
    :try_start_1
    sget-object v3, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/io/RandomAccessFile;>;"
    :goto_1
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 384
    move-object v3, v1

    :try_start_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 385
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    .line 388
    :cond_1
    :goto_2
    move-object v3, v1

    :try_start_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    .line 389
    goto :goto_1

    .line 387
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_2

    .line 390
    :cond_2
    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method static declared-synchronized set(Ljava/io/File;Ljava/io/RandomAccessFile;)V
    .locals 6

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    move-object v1, p1

    .local v1, "raf":Ljava/io/RandomAccessFile;
    const-class v5, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;

    monitor-enter v5

    :try_start_0
    sget-object v2, Lcom/sun/javafx/font/FontFileWriter$FontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 369
    monitor-exit v5

    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "file":Ljava/io/File;
    throw v0
.end method
