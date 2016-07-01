.class public Lsun/util/logging/PlatformLogger;
.super Ljava/lang/Object;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/logging/PlatformLogger$JavaLoggerProxy;,
        Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;,
        Lsun/util/logging/PlatformLogger$LoggerProxy;,
        Lsun/util/logging/PlatformLogger$Level;
    }
.end annotation


# static fields
.field public static final ALL:I = -0x80000000

.field public static final CONFIG:I = 0x2bc

.field private static final DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

.field public static final FINE:I = 0x1f4

.field public static final FINER:I = 0x190

.field public static final FINEST:I = 0x12c

.field public static final INFO:I = 0x320

.field public static final OFF:I = 0x7fffffff

.field public static final SEVERE:I = 0x3e8

.field public static final WARNING:I = 0x384

.field private static loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lsun/util/logging/PlatformLogger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static loggingEnabled:Z


# instance fields
.field private volatile javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

.field private volatile loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 159
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    sput-object v1, Lsun/util/logging/PlatformLogger;->DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

    .line 162
    new-instance v1, Lsun/util/logging/PlatformLogger$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lsun/util/logging/PlatformLogger$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    .line 178
    :try_start_0
    const-string v1, "sun.util.logging.PlatformLogger$DefaultLoggerProxy"

    const/4 v2, 0x0

    const-class v3, Lsun/util/logging/PlatformLogger;

    .line 180
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 178
    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 181
    const-string v1, "sun.util.logging.PlatformLogger$JavaLoggerProxy"

    const/4 v2, 0x0

    const-class v3, Lsun/util/logging/PlatformLogger;

    .line 183
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 181
    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    .line 190
    new-instance v1, Ljava/util/HashMap;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    return-void

    .line 184
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 185
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/InternalError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/InternalError;

    throw v1
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 243
    sget-boolean v2, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    if-eqz v2, :cond_0

    .line 244
    move-object v2, v0

    move-object v3, v0

    new-instance v4, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    move-object v8, v4

    move-object v3, v8

    move-object v4, v7

    move-object v5, v8

    iput-object v5, v4, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    iput-object v3, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    move-object v2, v0

    new-instance v3, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    goto :goto_0
.end method

.method static synthetic access$000()Lsun/util/logging/PlatformLogger$Level;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lsun/util/logging/PlatformLogger;->DEFAULT_LEVEL:Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;
    .locals 10

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v8, Lsun/util/logging/PlatformLogger;

    monitor-enter v8

    const/4 v3, 0x0

    move-object v1, v3

    .line 198
    .local v1, "log":Lsun/util/logging/PlatformLogger;
    :try_start_0
    sget-object v3, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    move-object v2, v3

    .line 199
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 200
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/logging/PlatformLogger;

    move-object v1, v3

    .line 202
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 203
    new-instance v3, Lsun/util/logging/PlatformLogger;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-direct {v4, v5}, Lsun/util/logging/PlatformLogger;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 204
    sget-object v3, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    move-object v4, v0

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 206
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "name":Ljava/lang/String;
    monitor-exit v8

    return-object v0

    .line 197
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    .restart local v0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "name":Ljava/lang/String;
    throw v0
.end method

.method public static declared-synchronized redirectPlatformLoggers()V
    .locals 6

    .prologue
    .line 214
    const-class v5, Lsun/util/logging/PlatformLogger;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    if-nez v4, :cond_0

    invoke-static {}, Lsun/util/logging/LoggingSupport;->isAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 224
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;>;"
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    .local v3, "plog":Lsun/util/logging/PlatformLogger;
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 216
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;>;"
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    .end local v3    # "plog":Lsun/util/logging/PlatformLogger;
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lsun/util/logging/PlatformLogger;->loggingEnabled:Z

    .line 217
    sget-object v4, Lsun/util/logging/PlatformLogger;->loggers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v0, v4

    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;>;"
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    .restart local v3    # "plog":Lsun/util/logging/PlatformLogger;
    :goto_1
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v1, v4

    .line 218
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    .end local v3    # "plog":Lsun/util/logging/PlatformLogger;
    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    move-object v2, v4

    .line 219
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/util/logging/PlatformLogger;

    move-object v3, v4

    .line 220
    .restart local v3    # "plog":Lsun/util/logging/PlatformLogger;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 221
    move-object v4, v3

    invoke-direct {v4}, Lsun/util/logging/PlatformLogger;->redirectToJavaLoggerProxy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :cond_2
    goto :goto_1

    .line 224
    :cond_3
    goto :goto_0

    .line 214
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lsun/util/logging/PlatformLogger;>;"
    .end local v3    # "plog":Lsun/util/logging/PlatformLogger;
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method private redirectToJavaLoggerProxy()V
    .locals 8

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    const-class v3, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    move-object v4, v0

    iget-object v4, v4, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;

    move-object v1, v3

    .line 231
    .local v1, "lp":Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;
    new-instance v3, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    iget-object v5, v5, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->name:Ljava/lang/String;

    move-object v6, v1

    iget-object v6, v6, Lsun/util/logging/PlatformLogger$DefaultLoggerProxy;->level:Lsun/util/logging/PlatformLogger$Level;

    invoke-direct {v4, v5, v6}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;-><init>(Ljava/lang/String;Lsun/util/logging/PlatformLogger$Level;)V

    move-object v2, v3

    .line 233
    .local v2, "jlp":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    .line 234
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    .line 235
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public config(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    return-void
.end method

.method public varargs config(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "params":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    return-void
.end method

.method public varargs fine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "params":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    return-void
.end method

.method public varargs finer(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "params":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    return-void
.end method

.method public varargs finest(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "params":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    return-void
.end method

.method public getLevel()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v2}, Lsun/util/logging/PlatformLogger$LoggerProxy;->getLevel()Lsun/util/logging/PlatformLogger$Level;

    move-result-object v2

    move-object v1, v2

    .line 285
    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lsun/util/logging/PlatformLogger$Level;->intValue()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Lsun/util/logging/PlatformLogger;
    return v0

    .restart local v0    # "this":Lsun/util/logging/PlatformLogger;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, v0

    iget-object v1, v1, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    iget-object v1, v1, Lsun/util/logging/PlatformLogger$LoggerProxy;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lsun/util/logging/PlatformLogger;
    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "params":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, v0

    iget-object v1, v1, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->isEnabled()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lsun/util/logging/PlatformLogger;
    return v0
.end method

.method public isLoggable(I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move v1, p1

    .local v1, "levelValue":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lsun/util/logging/PlatformLogger$Level;->valueOf(I)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lsun/util/logging/PlatformLogger;
    return v0
.end method

.method public isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z
    .locals 6

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "level":Lsun/util/logging/PlatformLogger$Level;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 304
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 307
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->javaLoggerProxy:Lsun/util/logging/PlatformLogger$JavaLoggerProxy;

    move-object v2, v3

    .line 308
    .local v2, "jlp":Lsun/util/logging/PlatformLogger$JavaLoggerProxy;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger$JavaLoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Lsun/util/logging/PlatformLogger;
    return v0

    .restart local v0    # "this":Lsun/util/logging/PlatformLogger;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger$LoggerProxy;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    goto :goto_0
.end method

.method public level()Lsun/util/logging/PlatformLogger$Level;
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, v0

    iget-object v1, v1, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    invoke-virtual {v1}, Lsun/util/logging/PlatformLogger$LoggerProxy;->getLevel()Lsun/util/logging/PlatformLogger$Level;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lsun/util/logging/PlatformLogger;
    return-object v0
.end method

.method public setLevel(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move v1, p1

    .local v1, "newLevel":I
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger$LoggerProxy;->setLevel(Lsun/util/logging/PlatformLogger$Level;)V

    .line 296
    return-void

    .line 295
    :cond_0
    move v3, v1

    invoke-static {v3}, Lsun/util/logging/PlatformLogger$Level;->valueOf(I)Lsun/util/logging/PlatformLogger$Level;

    move-result-object v3

    goto :goto_0
.end method

.method public setLevel(Lsun/util/logging/PlatformLogger$Level;)V
    .locals 4

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "newLevel":Lsun/util/logging/PlatformLogger$Level;
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger$LoggerProxy;->setLevel(Lsun/util/logging/PlatformLogger$Level;)V

    .line 336
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    return-void
.end method

.method public varargs severe(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "params":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    return-void
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lsun/util/logging/PlatformLogger;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, p2

    .local v2, "params":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lsun/util/logging/PlatformLogger;->loggerProxy:Lsun/util/logging/PlatformLogger$LoggerProxy;

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/logging/PlatformLogger$LoggerProxy;->doLog(Lsun/util/logging/PlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    return-void
.end method
