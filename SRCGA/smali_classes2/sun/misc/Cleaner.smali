.class public Lsun/misc/Cleaner;
.super Ljava/lang/ref/PhantomReference;
.source "Cleaner.java"


# static fields
.field private static final dummyQueue:Ljava/lang/ref/ReferenceQueue;

.field private static first:Lsun/misc/Cleaner;


# instance fields
.field private next:Lsun/misc/Cleaner;

.field private prev:Lsun/misc/Cleaner;

.field private final thunk:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lsun/misc/Cleaner;
    move-object v1, p1

    .local v1, "referent":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "thunk":Ljava/lang/Runnable;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lsun/misc/Cleaner;->dummyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v4, v5}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 74
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 116
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    .line 117
    return-void
.end method

.method private static declared-synchronized add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "cl":Lsun/misc/Cleaner;
    const-class v3, Lsun/misc/Cleaner;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    if-eqz v1, :cond_0

    .line 80
    move-object v1, v0

    sget-object v2, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    iput-object v2, v1, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 81
    sget-object v1, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    move-object v2, v0

    iput-object v2, v1, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 83
    :cond_0
    move-object v1, v0

    sput-object v1, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "cl":Lsun/misc/Cleaner;
    monitor-exit v3

    return-object v0

    .line 79
    .restart local v0    # "cl":Lsun/misc/Cleaner;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "cl":Lsun/misc/Cleaner;
    throw v0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "ob":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "thunk":Ljava/lang/Runnable;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 131
    const/4 v2, 0x0

    move-object v0, v2

    .line 132
    .end local v0    # "ob":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "ob":Ljava/lang/Object;
    :cond_0
    new-instance v2, Lsun/misc/Cleaner;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lsun/misc/Cleaner;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v2}, Lsun/misc/Cleaner;->add(Lsun/misc/Cleaner;)Lsun/misc/Cleaner;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private static declared-synchronized remove(Lsun/misc/Cleaner;)Z
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "cl":Lsun/misc/Cleaner;
    const-class v3, Lsun/misc/Cleaner;

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    if-ne v1, v2, :cond_0

    .line 91
    const/4 v1, 0x0

    move v0, v1

    .line 108
    .end local v0    # "cl":Lsun/misc/Cleaner;
    :goto_0
    monitor-exit v3

    return v0

    .line 94
    .restart local v0    # "cl":Lsun/misc/Cleaner;
    :cond_0
    :try_start_1
    sget-object v1, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    move-object v2, v0

    if-ne v1, v2, :cond_1

    .line 95
    move-object v1, v0

    iget-object v1, v1, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    if-eqz v1, :cond_4

    .line 96
    move-object v1, v0

    iget-object v1, v1, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    sput-object v1, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;

    .line 100
    :cond_1
    :goto_1
    move-object v1, v0

    iget-object v1, v1, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    if-eqz v1, :cond_2

    .line 101
    move-object v1, v0

    iget-object v1, v1, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    move-object v2, v0

    iget-object v2, v2, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    iput-object v2, v1, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 102
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    if-eqz v1, :cond_3

    .line 103
    move-object v1, v0

    iget-object v1, v1, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    move-object v2, v0

    iget-object v2, v2, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    iput-object v2, v1, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 106
    :cond_3
    move-object v1, v0

    move-object v2, v0

    iput-object v2, v1, Lsun/misc/Cleaner;->next:Lsun/misc/Cleaner;

    .line 107
    move-object v1, v0

    move-object v2, v0

    iput-object v2, v1, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    .line 108
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 98
    :cond_4
    move-object v1, v0

    iget-object v1, v1, Lsun/misc/Cleaner;->prev:Lsun/misc/Cleaner;

    sput-object v1, Lsun/misc/Cleaner;->first:Lsun/misc/Cleaner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "cl":Lsun/misc/Cleaner;
    throw v0
.end method


# virtual methods
.method public clean()V
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lsun/misc/Cleaner;
    move-object v2, v0

    invoke-static {v2}, Lsun/misc/Cleaner;->remove(Lsun/misc/Cleaner;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    .line 153
    :goto_0
    return-void

    .line 142
    :cond_0
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lsun/misc/Cleaner;->thunk:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    :goto_1
    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 144
    .local v1, "x":Ljava/lang/Throwable;
    new-instance v2, Lsun/misc/Cleaner$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lsun/misc/Cleaner$1;-><init>(Lsun/misc/Cleaner;Ljava/lang/Throwable;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method
