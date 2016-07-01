.class final Lcom/sun/glass/ui/gtk/GtkApplication;
.super Lcom/sun/glass/ui/Application;
.source "GtkApplication.java"

# interfaces
.implements Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;


# static fields
.field public static display:J

.field public static screen:I

.field public static visualID:J


# instance fields
.field private eventLoopExitEnterPassValue:Ljava/lang/Object;

.field private final invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication$$Lambda$8;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/sun/glass/ui/gtk/GtkApplication;->screen:I

    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sun/glass/ui/gtk/GtkApplication;->display:J

    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sun/glass/ui/gtk/GtkApplication;->visualID:J

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/Application;-><init>()V

    .line 67
    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication;->isDisplayValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Unable to open DISPLAY"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v2

    .line 73
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v1, v2

    .line 74
    .local v1, "isEventThread":Z
    move v2, v1

    if-nez v2, :cond_1

    .line 75
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/InvokeLaterDispatcher;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/InvokeLaterDispatcher;-><init>(Lcom/sun/glass/ui/InvokeLaterDispatcher$InvokeLaterSubmitter;)V

    iput-object v3, v2, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    .line 76
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v2}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->start()V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    goto :goto_0
.end method

.method private native _init(JZ)V
.end method

.method private static native _isDisplayValid()Z
.end method

.method private native _runLoop(Ljava/lang/Runnable;Z)V
.end method

.method private native _submitForLaterInvocation(Ljava/lang/Runnable;)V
.end method

.method private native _terminateLoop()V
.end method

.method static synthetic access$lambda$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication;->lambda$new$45()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication;->lambda$init$46()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication;->lambda$runLoop$47()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication;->lambda$runLoop$48()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/glass/ui/gtk/GtkApplication;Ljava/lang/Runnable;Z)Ljava/lang/Thread;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/gtk/GtkApplication;->lambda$runLoop$50(Ljava/lang/Runnable;Z)Ljava/lang/Thread;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$5(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/glass/ui/gtk/GtkApplication;->lambda$_invokeAndWait$51(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/glass/ui/gtk/GtkApplication;Ljava/lang/Runnable;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/gtk/GtkApplication;->lambda$null$49(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$lambda$7()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication;->lambda$static$44()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method private native enterNestedEventLoopImpl()V
.end method

.method private init()V
    .locals 10

    .prologue
    .line 106
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v6, v1

    invoke-direct {v6}, Lcom/sun/glass/ui/gtk/GtkApplication;->initDisplay()V

    .line 107
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 108
    .local v2, "eventProc":J
    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication;->getDeviceDetails()Ljava/util/Map;

    move-result-object v6

    move-object v4, v6

    .line 109
    .local v4, "map":Ljava/util/Map;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 110
    move-object v6, v4

    const-string v7, "javafx.embed.eventProc"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move-object v5, v6

    .line 111
    .local v5, "result":Ljava/lang/Long;
    move-object v6, v5

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    :goto_0
    move-wide v2, v6

    .line 114
    .end local v5    # "result":Ljava/lang/Long;
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication$$Lambda$2;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v6

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move v5, v6

    .line 117
    .local v5, "disableGrab":Z
    move-object v6, v1

    move-wide v7, v2

    move v9, v5

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/glass/ui/gtk/GtkApplication;->_init(JZ)V

    .line 118
    return-void

    .line 111
    .local v5, "result":Ljava/lang/Long;
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0
.end method

.method private initDisplay()V
    .locals 6

    .prologue
    .line 87
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication;->getDeviceDetails()Ljava/util/Map;

    move-result-object v4

    move-object v2, v4

    .line 88
    .local v2, "ds":Ljava/util/Map;
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 90
    move-object v4, v2

    const-string v5, "XDisplay"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 91
    .local v3, "value":Ljava/lang/Object;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 92
    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sput-wide v4, Lcom/sun/glass/ui/gtk/GtkApplication;->display:J

    .line 94
    :cond_0
    move-object v4, v2

    const-string v5, "XVisualID"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 95
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 96
    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sput-wide v4, Lcom/sun/glass/ui/gtk/GtkApplication;->visualID:J

    .line 98
    :cond_1
    move-object v4, v2

    const-string v5, "XScreenID"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 99
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 100
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/sun/glass/ui/gtk/GtkApplication;->screen:I

    .line 103
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private static isDisplayValid()Z
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication;->_isDisplayValid()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$_invokeAndWait$51(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "runnable":Ljava/lang/Runnable;
    move-object v1, p1

    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 175
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 176
    return-void
.end method

.method private static synthetic lambda$init$46()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 114
    const-string v0, "sun.awt.disablegrab"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "glass.disableGrab"

    .line 115
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 114
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$new$45()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    const-string v0, "javafx.embed.isEventThread"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$null$49(Ljava/lang/Runnable;Z)V
    .locals 6

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v1, p1

    .local v1, "launchable":Ljava/lang/Runnable;
    move v2, p2

    .local v2, "noErrorTrap":Z
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/glass/ui/gtk/GtkApplication;->init()V

    .line 139
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/gtk/GtkApplication;->_runLoop(Ljava/lang/Runnable;Z)V

    .line 140
    return-void
.end method

.method private static synthetic lambda$runLoop$47()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 124
    const-string v0, "javafx.embed.isEventThread"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$runLoop$48()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 134
    const-string v0, "glass.noErrorTrap"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$runLoop$50(Ljava/lang/Runnable;Z)Ljava/lang/Thread;
    .locals 9

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v1, p1

    .local v1, "launchable":Ljava/lang/Runnable;
    move v2, p2

    .local v2, "noErrorTrap":Z
    new-instance v3, Ljava/lang/Thread;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Lcom/sun/glass/ui/gtk/GtkApplication$$Lambda$7;->lambdaFactory$(Lcom/sun/glass/ui/gtk/GtkApplication;Ljava/lang/Runnable;Z)Ljava/lang/Runnable;

    move-result-object v5

    const-string v6, "GtkNativeMainLoopThread"

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method private static synthetic lambda$static$44()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/sun/glass/ui/Application;->loadNativeLibrary()V

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method private native leaveNestedEventLoopImpl()V
.end method


# virtual methods
.method protected _enterNestedEventLoop()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v4, :cond_0

    .line 208
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v4}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->notifyEnteringNestedEventLoop()V

    .line 211
    :cond_0
    move-object v4, v0

    :try_start_0
    invoke-direct {v4}, Lcom/sun/glass/ui/gtk/GtkApplication;->enterNestedEventLoopImpl()V

    .line 212
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkApplication;->eventLoopExitEnterPassValue:Ljava/lang/Object;

    move-object v1, v4

    .line 213
    .local v1, "retValue":Ljava/lang/Object;
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/glass/ui/gtk/GtkApplication;->eventLoopExitEnterPassValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    move-object v4, v1

    move-object v2, v4

    .line 216
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v4, :cond_1

    .line 217
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v4}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->notifyLeftNestedEventLoop()V

    :cond_1
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0

    .line 216
    .end local v1    # "retValue":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v4, :cond_2

    .line 217
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v4}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->notifyLeftNestedEventLoop()V

    :cond_2
    move-object v4, v3

    throw v4
.end method

.method protected native _getKeyCodeForChar(C)I
.end method

.method protected _invokeAndWait(Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v4, :cond_0

    .line 170
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 183
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v2, v4

    .line 173
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/sun/glass/ui/gtk/GtkApplication$$Lambda$6;->lambdaFactory$(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/gtk/GtkApplication;->submitForLaterInvocation(Ljava/lang/Runnable;)V

    .line 178
    move-object v4, v2

    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method

.method protected _invokeLater(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v2, :cond_0

    .line 193
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->invokeLater(Ljava/lang/Runnable;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/gtk/GtkApplication;->submitForLaterInvocation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected _leaveNestedEventLoop(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v1, p1

    .local v1, "retValue":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    if-eqz v2, :cond_0

    .line 225
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/gtk/GtkApplication;->invokeLaterDispatcher:Lcom/sun/glass/ui/InvokeLaterDispatcher;

    invoke-virtual {v2}, Lcom/sun/glass/ui/InvokeLaterDispatcher;->notifyLeavingNestedEventLoop()V

    .line 227
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/gtk/GtkApplication;->eventLoopExitEnterPassValue:Ljava/lang/Object;

    .line 228
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/gtk/GtkApplication;->leaveNestedEventLoopImpl()V

    .line 229
    return-void
.end method

.method protected _supportsInputMethods()Z
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return v0
.end method

.method protected native _supportsTransparentWindows()Z
.end method

.method protected _supportsUnifiedWindows()Z
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return v0
.end method

.method public createCursor(I)Lcom/sun/glass/ui/Cursor;
    .locals 6

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move v1, p1

    .local v1, "type":I
    new-instance v2, Lcom/sun/glass/ui/gtk/GtkCursor;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/gtk/GtkCursor;-><init>(I)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method public createCursor(IILcom/sun/glass/ui/Pixels;)Lcom/sun/glass/ui/Cursor;
    .locals 10

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, p3

    .local v3, "pixels":Lcom/sun/glass/ui/Pixels;
    new-instance v4, Lcom/sun/glass/ui/gtk/GtkCursor;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/gtk/GtkCursor;-><init>(IILcom/sun/glass/ui/Pixels;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method public createPixels(IILjava/nio/ByteBuffer;)Lcom/sun/glass/ui/Pixels;
    .locals 10

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/ByteBuffer;
    new-instance v4, Lcom/sun/glass/ui/gtk/GtkPixels;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/gtk/GtkPixels;-><init>(IILjava/nio/ByteBuffer;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method public createPixels(IILjava/nio/IntBuffer;)Lcom/sun/glass/ui/Pixels;
    .locals 10

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/IntBuffer;
    new-instance v4, Lcom/sun/glass/ui/gtk/GtkPixels;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/gtk/GtkPixels;-><init>(IILjava/nio/IntBuffer;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method public createPixels(IILjava/nio/IntBuffer;F)Lcom/sun/glass/ui/Pixels;
    .locals 12

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/IntBuffer;
    move/from16 v4, p4

    .local v4, "scale":F
    new-instance v5, Lcom/sun/glass/ui/gtk/GtkPixels;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/glass/ui/gtk/GtkPixels;-><init>(IILjava/nio/IntBuffer;F)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method public createRobot()Lcom/sun/glass/ui/Robot;
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    new-instance v1, Lcom/sun/glass/ui/gtk/GtkRobot;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/gtk/GtkRobot;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method public createTimer(Ljava/lang/Runnable;)Lcom/sun/glass/ui/Timer;
    .locals 6

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Lcom/sun/glass/ui/gtk/GtkTimer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/gtk/GtkTimer;-><init>(Ljava/lang/Runnable;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method public createView()Lcom/sun/glass/ui/View;
    .locals 4

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    new-instance v1, Lcom/sun/glass/ui/gtk/GtkView;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/gtk/GtkView;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method public createWindow(J)Lcom/sun/glass/ui/Window;
    .locals 9

    .prologue
    .line 238
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-wide v2, p1

    .local v2, "parent":J
    new-instance v4, Lcom/sun/glass/ui/gtk/GtkChildWindow;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/glass/ui/gtk/GtkChildWindow;-><init>(J)V

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v1
.end method

.method public createWindow(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;
    .locals 10

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object v2, p2

    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move v3, p3

    .local v3, "styleMask":I
    new-instance v4, Lcom/sun/glass/ui/gtk/GtkWindow;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/gtk/GtkWindow;-><init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method protected finishTerminating()V
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication;->getEventThread()Ljava/lang/Thread;

    move-result-object v2

    move-object v1, v2

    .line 148
    .local v1, "toolkitThread":Ljava/lang/Thread;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 149
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/gtk/GtkApplication;->_terminateLoop()V

    .line 150
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sun/glass/ui/gtk/GtkApplication;->setEventThread(Ljava/lang/Thread;)V

    .line 152
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Lcom/sun/glass/ui/Application;->finishTerminating()V

    .line 153
    return-void
.end method

.method protected runLoop(Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v1, p1

    .local v1, "launchable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication$$Lambda$3;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v5

    .line 124
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v2, v5

    .line 126
    .local v2, "isEventThread":Z
    move v5, v2

    if-eqz v5, :cond_0

    .line 127
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/glass/ui/gtk/GtkApplication;->init()V

    .line 128
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/glass/ui/gtk/GtkApplication;->setEventThread(Ljava/lang/Thread;)V

    .line 129
    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 130
    .line 143
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/gtk/GtkApplication$$Lambda$4;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v5

    .line 134
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v3, v5

    .line 136
    .local v3, "noErrorTrap":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-static {v5, v6, v7}, Lcom/sun/glass/ui/gtk/GtkApplication$$Lambda$5;->lambdaFactory$(Lcom/sun/glass/ui/gtk/GtkApplication;Ljava/lang/Runnable;Z)Ljava/security/PrivilegedAction;

    move-result-object v5

    .line 137
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    move-object v4, v5

    .line 141
    .local v4, "toolkitThread":Ljava/lang/Thread;
    move-object v5, v4

    invoke-static {v5}, Lcom/sun/glass/ui/gtk/GtkApplication;->setEventThread(Ljava/lang/Thread;)V

    .line 142
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 143
    goto :goto_0
.end method

.method public shouldUpdateWindow()Z
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return v0
.end method

.method protected staticCommonDialogs_showFileChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .locals 17

    .prologue
    .line 312
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object/from16 v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object/from16 v2, p2

    .local v2, "folder":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "filename":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "title":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "type":I
    move/from16 v6, p6

    .local v6, "multipleMode":Z
    move-object/from16 v7, p7

    .local v7, "extensionFilters":[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    move/from16 v8, p8

    .local v8, "defaultFilterIndex":I
    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    move v14, v6

    move-object v15, v7

    move/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/sun/glass/ui/gtk/GtkCommonDialogs;->showFileChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method protected staticCommonDialogs_showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object v2, p2

    .local v2, "folder":Ljava/lang/String;
    move-object v3, p3

    .local v3, "title":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lcom/sun/glass/ui/gtk/GtkCommonDialogs;->showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method protected staticCursor_getBestSize(II)Lcom/sun/glass/ui/Size;
    .locals 5

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/sun/glass/ui/gtk/GtkCursor;->_getBestSize(II)Lcom/sun/glass/ui/Size;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-object v0
.end method

.method protected staticCursor_setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 258
    return-void
.end method

.method protected staticPixels_getNativeFormat()I
    .locals 2

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return v0
.end method

.method protected native staticScreen_getScreens()[Lcom/sun/glass/ui/Screen;
.end method

.method protected staticScreen_getVideoRefreshPeriod()D
    .locals 3

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    return-wide v0
.end method

.method protected native staticTimer_getMaxPeriod()I
.end method

.method protected native staticTimer_getMinPeriod()I
.end method

.method protected native staticView_getMultiClickMaxX()I
.end method

.method protected native staticView_getMultiClickMaxY()I
.end method

.method protected native staticView_getMultiClickTime()J
.end method

.method public submitForLaterInvocation(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/gtk/GtkApplication;
    move-object v1, p1

    .local v1, "r":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/gtk/GtkApplication;->_submitForLaterInvocation(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method
