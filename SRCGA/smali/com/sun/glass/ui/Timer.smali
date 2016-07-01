.class public abstract Lcom/sun/glass/ui/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field private static final SET_PERIOD:D = -2.0

.field private static final UNSET_PERIOD:D = -1.0


# instance fields
.field private period:D

.field private ptr:J

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 56
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Timer;
    move-object v2, p1

    .local v2, "runnable":Ljava/lang/Runnable;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/sun/glass/ui/Timer;->period:D

    .line 57
    move-object v3, v2

    if-nez v3, :cond_0

    .line 58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "runnable shouldn\'t be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_0
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/glass/ui/Timer;->runnable:Ljava/lang/Runnable;

    .line 61
    return-void
.end method

.method public static getMaxPeriod()I
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticTimer_getMaxPeriod()I

    move-result v0

    return v0
.end method

.method public static getMinPeriod()I
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/glass/ui/Application;->staticTimer_getMinPeriod()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected abstract _start(Ljava/lang/Runnable;)J
.end method

.method protected abstract _start(Ljava/lang/Runnable;I)J
.end method

.method protected abstract _stop(J)V
.end method

.method public declared-synchronized isRunning()Z
    .locals 7

    .prologue
    .line 138
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Timer;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v1

    :try_start_0
    iget-wide v2, v2, Lcom/sun/glass/ui/Timer;->period:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/glass/ui/Timer;
    monitor-exit v6

    return v1

    .restart local v1    # "this":Lcom/sun/glass/ui/Timer;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v6

    .end local v1    # "this":Lcom/sun/glass/ui/Timer;
    throw v1
.end method

.method public declared-synchronized start()V
    .locals 8

    .prologue
    .line 108
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Timer;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v1

    :try_start_0
    iget-wide v2, v2, Lcom/sun/glass/ui/Timer;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 109
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/glass/ui/Timer;->stop()V

    .line 112
    :cond_0
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/Timer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/Timer;->_start(Ljava/lang/Runnable;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/glass/ui/Timer;->ptr:J

    .line 113
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/glass/ui/Timer;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 114
    move-object v2, v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    iput-wide v3, v2, Lcom/sun/glass/ui/Timer;->period:D

    .line 115
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Failed to start the timer"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v6

    .end local v1    # "this":Lcom/sun/glass/ui/Timer;
    throw v1

    .line 117
    .restart local v1    # "this":Lcom/sun/glass/ui/Timer;
    :cond_1
    move-object v2, v1

    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    :try_start_1
    iput-wide v3, v2, Lcom/sun/glass/ui/Timer;->period:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit v6

    return-void
.end method

.method public declared-synchronized start(I)V
    .locals 8

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Timer;
    move v1, p1

    .local v1, "period":I
    move-object v6, p0

    monitor-enter v6

    move v2, v1

    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/Timer;->getMinPeriod()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v2, v1

    invoke-static {}, Lcom/sun/glass/ui/Timer;->getMaxPeriod()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 85
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "period is out of range"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/glass/ui/Timer;
    throw v0

    .line 88
    .restart local v0    # "this":Lcom/sun/glass/ui/Timer;
    :cond_1
    move-object v2, v0

    :try_start_1
    iget-wide v2, v2, Lcom/sun/glass/ui/Timer;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 89
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Timer;->stop()V

    .line 92
    :cond_2
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Timer;->runnable:Ljava/lang/Runnable;

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Timer;->_start(Ljava/lang/Runnable;I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sun/glass/ui/Timer;->ptr:J

    .line 93
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/Timer;->ptr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 94
    move-object v2, v0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    iput-wide v3, v2, Lcom/sun/glass/ui/Timer;->period:D

    .line 95
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Failed to start the timer"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_3
    move-object v2, v0

    move v3, v1

    int-to-double v3, v3

    iput-wide v3, v2, Lcom/sun/glass/ui/Timer;->period:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit v6

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Timer;
    move-object v5, p0

    monitor-enter v5

    move-object v1, v0

    :try_start_0
    iget-wide v1, v1, Lcom/sun/glass/ui/Timer;->ptr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 127
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/glass/ui/Timer;->ptr:J

    invoke-virtual {v1, v2, v3}, Lcom/sun/glass/ui/Timer;->_stop(J)V

    .line 128
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/glass/ui/Timer;->ptr:J

    .line 129
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Lcom/sun/glass/ui/Timer;->period:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    monitor-exit v5

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/sun/glass/ui/Timer;
    throw v0
.end method
