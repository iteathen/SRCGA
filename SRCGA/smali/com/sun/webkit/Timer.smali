.class public Lcom/sun/webkit/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/webkit/Timer$Mode;
    }
.end annotation


# static fields
.field private static instance:Lcom/sun/webkit/Timer;

.field private static mode:Lcom/sun/webkit/Timer$Mode;


# instance fields
.field fireTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Timer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static fwkSetFireTime(D)V
    .locals 8

    .prologue
    .line 104
    move-wide v1, p0

    .local v1, "fireTime":D
    invoke-static {}, Lcom/sun/webkit/Timer;->getTimer()Lcom/sun/webkit/Timer;

    move-result-object v3

    move-wide v4, v1

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/webkit/Timer;->setFireTime(J)V

    .line 105
    return-void
.end method

.method private static fwkStopTimer()V
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lcom/sun/webkit/Timer;->getTimer()Lcom/sun/webkit/Timer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/webkit/Timer;->setFireTime(J)V

    .line 109
    return-void
.end method

.method public static declared-synchronized getMode()Lcom/sun/webkit/Timer$Mode;
    .locals 4

    .prologue
    .line 46
    const-class v2, Lcom/sun/webkit/Timer;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/sun/webkit/Timer;->mode:Lcom/sun/webkit/Timer$Mode;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/sun/webkit/Timer$1;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/webkit/Timer$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sun/webkit/Timer$Mode;->PLATFORM_TICKS:Lcom/sun/webkit/Timer$Mode;

    :goto_0
    sput-object v0, Lcom/sun/webkit/Timer;->mode:Lcom/sun/webkit/Timer$Mode;

    .line 56
    :cond_0
    sget-object v0, Lcom/sun/webkit/Timer;->mode:Lcom/sun/webkit/Timer$Mode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 47
    :cond_1
    :try_start_1
    sget-object v0, Lcom/sun/webkit/Timer$Mode;->SEPARATE_THREAD:Lcom/sun/webkit/Timer$Mode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized getTimer()Lcom/sun/webkit/Timer;
    .locals 4

    .prologue
    .line 60
    const-class v2, Lcom/sun/webkit/Timer;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/sun/webkit/Timer;->instance:Lcom/sun/webkit/Timer;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/sun/webkit/Timer;->getMode()Lcom/sun/webkit/Timer$Mode;

    move-result-object v0

    sget-object v1, Lcom/sun/webkit/Timer$Mode;->PLATFORM_TICKS:Lcom/sun/webkit/Timer$Mode;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/sun/webkit/Timer;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/webkit/Timer;-><init>()V

    :goto_0
    sput-object v0, Lcom/sun/webkit/Timer;->instance:Lcom/sun/webkit/Timer;

    .line 64
    :cond_0
    sget-object v0, Lcom/sun/webkit/Timer;->instance:Lcom/sun/webkit/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 61
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sun/webkit/SeparateThreadTimer;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/webkit/SeparateThreadTimer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static native twkFireTimerEvent()V
.end method


# virtual methods
.method fireTimerEvent(J)V
    .locals 13

    .prologue
    .line 74
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/Timer;
    move-wide v2, p1

    .local v2, "time":J
    const/4 v8, 0x0

    move v4, v8

    .line 75
    .local v4, "needFire":Z
    move-object v8, v1

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v5, v9

    monitor-enter v8

    .line 79
    move-wide v8, v2

    move-object v10, v1

    :try_start_0
    iget-wide v10, v10, Lcom/sun/webkit/Timer;->fireTime:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 80
    const/4 v8, 0x1

    move v4, v8

    .line 81
    move-object v8, v1

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Lcom/sun/webkit/Timer;->fireTime:J

    .line 83
    :cond_0
    move-object v8, v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    move v8, v4

    if-eqz v8, :cond_1

    .line 85
    invoke-static {}, Lcom/sun/webkit/WebPage;->lockPage()V

    .line 88
    :try_start_1
    invoke-static {}, Lcom/sun/webkit/Timer;->twkFireTimerEvent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    invoke-static {}, Lcom/sun/webkit/WebPage;->unlockPage()V

    .line 92
    .line 94
    :cond_1
    return-void

    .line 83
    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v5

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v6

    throw v8

    .line 91
    :catchall_1
    move-exception v8

    move-object v7, v8

    invoke-static {}, Lcom/sun/webkit/WebPage;->unlockPage()V

    move-object v8, v7

    throw v8
.end method

.method public declared-synchronized notifyTick()V
    .locals 7

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "this":Lcom/sun/webkit/Timer;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v1

    :try_start_0
    iget-wide v2, v2, Lcom/sun/webkit/Timer;->fireTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/webkit/Timer;->fireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 69
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/webkit/Timer;->fireTime:J

    invoke-virtual {v2, v3, v4}, Lcom/sun/webkit/Timer;->fireTimerEvent(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit v6

    return-void

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v6

    .end local v1    # "this":Lcom/sun/webkit/Timer;
    throw v1
.end method

.method declared-synchronized setFireTime(J)V
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/Timer;
    move-wide v1, p1

    .local v1, "time":J
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    move-wide v4, v1

    :try_start_0
    iput-wide v4, v3, Lcom/sun/webkit/Timer;->fireTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit v6

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/webkit/Timer;
    throw v0
.end method
