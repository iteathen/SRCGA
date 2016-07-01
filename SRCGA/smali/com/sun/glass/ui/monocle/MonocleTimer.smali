.class final Lcom/sun/glass/ui/monocle/MonocleTimer;
.super Lcom/sun/glass/ui/Timer;
.source "MonocleTimer.java"


# static fields
.field private static timer:Ljava/util/Timer;


# instance fields
.field private task:Ljava/util/TimerTask;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleTimer;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/Timer;-><init>(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method static getMaxPeriod_impl()I
    .locals 1

    .prologue
    .line 46
    const v0, 0xf4240

    return v0
.end method

.method static getMinPeriod_impl()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected _start(Ljava/lang/Runnable;)J
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleTimer;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "vsync timer not supported"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected _start(Ljava/lang/Runnable;I)J
    .locals 11

    .prologue
    .line 50
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleTimer;
    move-object v2, p1

    .local v2, "runnable":Ljava/lang/Runnable;
    move v3, p2

    .local v3, "period":I
    sget-object v4, Lcom/sun/glass/ui/monocle/MonocleTimer;->timer:Ljava/util/Timer;

    if-nez v4, :cond_0

    .line 51
    new-instance v4, Ljava/util/Timer;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/Timer;-><init>(Z)V

    sput-object v4, Lcom/sun/glass/ui/monocle/MonocleTimer;->timer:Ljava/util/Timer;

    .line 54
    :cond_0
    move-object v4, v1

    new-instance v5, Lcom/sun/glass/ui/monocle/MonocleTimer$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/glass/ui/monocle/MonocleTimer$1;-><init>(Lcom/sun/glass/ui/monocle/MonocleTimer;Ljava/lang/Runnable;)V

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/MonocleTimer;->task:Ljava/util/TimerTask;

    .line 62
    sget-object v4, Lcom/sun/glass/ui/monocle/MonocleTimer;->timer:Ljava/util/Timer;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MonocleTimer;->task:Ljava/util/TimerTask;

    const-wide/16 v6, 0x0

    move v8, v3

    int-to-long v8, v8

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 63
    const-wide/16 v4, 0x1

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleTimer;
    return-wide v1
.end method

.method protected _stop(J)V
    .locals 7

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleTimer;
    move-wide v2, p1

    .local v2, "timer":J
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleTimer;->task:Ljava/util/TimerTask;

    if-eqz v4, :cond_0

    .line 72
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleTimer;->task:Ljava/util/TimerTask;

    invoke-virtual {v4}, Ljava/util/TimerTask;->cancel()Z

    move-result v4

    .line 73
    move-object v4, v1

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/MonocleTimer;->task:Ljava/util/TimerTask;

    .line 75
    :cond_0
    return-void
.end method
