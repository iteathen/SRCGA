.class final Lcom/sun/glass/ui/lens/LensApplication;
.super Lcom/sun/glass/ui/Application;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/lens/LensApplication$DragActions;,
        Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;,
        Lcom/sun/glass/ui/lens/LensApplication$LensScreenEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;,
        Lcom/sun/glass/ui/lens/LensApplication$Event;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEVICE_5WAY:I = 0x3

.field private static final DEVICE_MAX:I = 0x4

.field private static final DEVICE_MULTITOUCH:I = 0x1

.field private static final DEVICE_PC_KEYBOARD:I = 0x4

.field private static final DEVICE_POINTER:I = 0x2

.field private static final DEVICE_TOUCH:I

.field private static final activeEventLoopLock:Ljava/lang/Object;

.field private static activeEventLoopThreads:I

.field private static doComposite:Z

.field private static final invokeAndWaitLock:Ljava/lang/Object;

.field private static isInitialized:Z

.field private static nativeThreadCounter:I

.field private static waitingFor:Ljava/lang/Runnable;


# instance fields
.field activeRunLoops:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;",
            ">;"
        }
    .end annotation
.end field

.field private cachedButtonPressed:I

.field private cursorVisible:Z

.field private deviceFlags:[I

.field private dndEventLoop:Lcom/sun/glass/ui/EventLoop;

.field private dragActionsPreformed:I

.field private dragStarted:Z

.field private dragView:Lcom/sun/glass/ui/lens/LensView;

.field editMenu:Lcom/sun/glass/ui/Menu;

.field private final eventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sun/glass/ui/lens/LensApplication$Event;",
            ">;"
        }
    .end annotation
.end field

.field fileMenu:Lcom/sun/glass/ui/Menu;

.field private previousTouchMoveScreenX:I

.field private previousTouchMoveScreenY:I

.field private previousTouchMoveX:I

.field private previousTouchMoveY:I

.field windowMenu:Lcom/sun/glass/ui/Menu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const-class v0, Lcom/sun/glass/ui/lens/LensApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/glass/ui/lens/LensApplication;->$assertionsDisabled:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication;->invokeAndWaitLock:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopThreads:I

    .line 95
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopLock:Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/glass/ui/lens/LensApplication;->doComposite:Z

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/glass/ui/lens/LensApplication;->isInitialized:Z

    .line 140
    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication;->initLibrary()V

    .line 922
    const/4 v0, 0x0

    sput v0, Lcom/sun/glass/ui/lens/LensApplication;->nativeThreadCounter:I

    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Application;-><init>()V

    .line 73
    move-object v1, v0

    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->deviceFlags:[I

    .line 79
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->previousTouchMoveX:I

    .line 80
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->previousTouchMoveY:I

    .line 81
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->previousTouchMoveScreenX:I

    .line 82
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->previousTouchMoveScreenY:I

    .line 85
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->cursorVisible:Z

    .line 706
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    .line 767
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->activeRunLoops:Ljava/util/LinkedList;

    .line 1180
    move-object v1, v0

    const/16 v2, 0xd3

    iput v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->cachedButtonPressed:I

    .line 1182
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->dragView:Lcom/sun/glass/ui/lens/LensView;

    .line 1185
    move-object v1, v0

    sget-object v2, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->NONE:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v2}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v2

    iput v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->dragActionsPreformed:I

    .line 1189
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->dragStarted:Z

    .line 149
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "LensApplication ctor called, registering in native layer"

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 151
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/lens/LensApplication;->registerApplication()V

    .line 152
    return-void
.end method

.method private static native _initIDs()V
.end method

.method private static native _initialize()Z
.end method

.method private native _notfyPlatformDnDEnded()V
.end method

.method private native _notfyPlatformDnDStarted()V
.end method

.method private static native _notifyRenderingEnd()V
.end method

.method private _runLoop()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 823
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    new-instance v6, Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    move-object v1, v6

    .line 826
    .local v1, "control":Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensApplication;->activeRunLoops:Ljava/util/LinkedList;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 828
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    sget-object v7, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 829
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    const-string v7, "Starting event loop"

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 832
    :cond_0
    move-object v6, v1

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;->active:Z

    .line 833
    :goto_0
    move-object v6, v1

    iget-boolean v6, v6, Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;->active:Z

    if-eqz v6, :cond_4

    .line 835
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 836
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 838
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    .line 843
    :cond_1
    move-object v6, v0

    :try_start_2
    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 844
    move-object v6, v3

    monitor-exit v6

    goto :goto_0

    .line 839
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 840
    .local v4, "e":Ljava/lang/InterruptedException;
    move-object v6, v3

    monitor-exit v6

    goto :goto_0

    .line 846
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/glass/ui/lens/LensApplication$Event;

    move-object v2, v6

    .line 847
    .local v2, "event":Lcom/sun/glass/ui/lens/LensApplication$Event;
    move-object v6, v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 849
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    sget-object v7, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 850
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 854
    :cond_3
    move-object v6, v2

    :try_start_3
    invoke-virtual {v6}, Lcom/sun/glass/ui/lens/LensApplication$Event;->dispatch()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 857
    .line 858
    :goto_1
    goto :goto_0

    .line 847
    .end local v2    # "event":Lcom/sun/glass/ui/lens/LensApplication$Event;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v5

    throw v6

    .line 855
    .restart local v2    # "event":Lcom/sun/glass/ui/lens/LensApplication$Event;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 856
    .local v3, "e":Ljava/lang/Exception;
    move-object v6, v3

    invoke-static {v6}, Lcom/sun/glass/ui/lens/LensApplication;->reportException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 860
    .end local v2    # "event":Lcom/sun/glass/ui/lens/LensApplication$Event;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    sget-object v7, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 861
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    const-string v7, "Leaving event loop"

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 864
    :cond_5
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;->release:Ljava/lang/Object;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sun/glass/ui/lens/LensApplication;->invokeAndWaitLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljava/lang/Runnable;
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    sput-object v2, Lcom/sun/glass/ui/lens/LensApplication;->waitingFor:Ljava/lang/Runnable;

    move-object v0, v1

    .end local v0    # "x0":Ljava/lang/Runnable;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/glass/ui/lens/LensApplication;)[I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication;->deviceFlags:[I

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/glass/ui/lens/LensApplication;)Z
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/lens/LensApplication;->cursorVisible:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/lens/LensApplication;
    return v0
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication;->lambda$initLibrary$53()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication;->lambda$initLibrary$54()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/lens/LensApplication;->lambda$initLibrary$55(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$3()Ljava/lang/Long;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication;->lambda$runLoop$56()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/glass/ui/lens/LensApplication;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/lens/LensApplication;->lambda$runLoop$57()V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/glass/ui/lens/LensApplication;JJ)V
    .locals 11

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/lens/LensApplication;->lambda$createNativeEventThread$58(Lcom/sun/glass/ui/lens/LensApplication;JJ)V

    return-void
.end method

.method private static createNativeEventThread(JJ)V
    .locals 14

    .prologue
    .line 937
    move-wide v0, p0

    .local v0, "nativeEventHandler":J
    move-wide/from16 v2, p2

    .local v2, "data":J
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v6

    check-cast v6, Lcom/sun/glass/ui/lens/LensApplication;

    move-object v4, v6

    .line 939
    .local v4, "lensApplication":Lcom/sun/glass/ui/lens/LensApplication;
    new-instance v6, Ljava/lang/Thread;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v4

    move-wide v9, v0

    move-wide v11, v2

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/glass/ui/lens/LensApplication$$Lambda$6;->lambdaFactory$(Lcom/sun/glass/ui/lens/LensApplication;JJ)Ljava/lang/Runnable;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Lens Native Event Thread "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/sun/glass/ui/lens/LensApplication;->nativeThreadCounter:I

    move v13, v10

    move v10, v13

    move v11, v13

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/sun/glass/ui/lens/LensApplication;->nativeThreadCounter:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object v5, v6

    .line 949
    .local v5, "eventThread":Ljava/lang/Thread;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    const-string v7, "Starting native event thread"

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 951
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 952
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 953
    return-void
.end method

.method private handleDragEvents(Lcom/sun/glass/ui/lens/LensView;IIIIIII)Z
    .locals 22

    .prologue
    .line 1251
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v2, p2

    .local v2, "eventType":I
    move/from16 v3, p3

    .local v3, "x":I
    move/from16 v4, p4

    .local v4, "y":I
    move/from16 v5, p5

    .local v5, "absx":I
    move/from16 v6, p6

    .local v6, "absy":I
    move/from16 v7, p7

    .local v7, "button":I
    move/from16 v8, p8

    .local v8, "modifiers":I
    const/4 v10, 0x0

    move v9, v10

    .line 1253
    .local v9, "eventConsumed":Z
    move v10, v2

    const/16 v11, 0xdd

    if-ne v10, v11, :cond_1

    move-object v10, v0

    iget v10, v10, Lcom/sun/glass/ui/lens/LensApplication;->cachedButtonPressed:I

    const/16 v11, 0xd3

    if-ne v10, v11, :cond_1

    .line 1255
    move-object v10, v0

    move v11, v7

    iput v11, v10, Lcom/sun/glass/ui/lens/LensApplication;->cachedButtonPressed:I

    .line 1256
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    sget-object v11, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1257
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Caching mouse button - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 1347
    :cond_0
    :goto_0
    move v10, v9

    move v0, v10

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0

    .line 1259
    .restart local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    :cond_1
    move v10, v2

    const/16 v11, 0xde

    if-ne v10, v11, :cond_4

    move v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/sun/glass/ui/lens/LensApplication;->cachedButtonPressed:I

    if-ne v10, v11, :cond_4

    .line 1261
    move-object v10, v0

    const/16 v11, 0xd3

    iput v11, v10, Lcom/sun/glass/ui/lens/LensApplication;->cachedButtonPressed:I

    .line 1263
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    sget-object v11, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1264
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reset mouse button cache "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 1266
    :cond_2
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragStarted:Z

    if-eqz v10, :cond_0

    .line 1268
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    sget-object v11, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1269
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    const-string v11, "notifying drag DROP"

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 1271
    :cond_3
    move-object v10, v0

    new-instance v11, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    move-object v13, v0

    move-object v14, v1

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    sget-object v19, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->DROP:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-direct/range {v12 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication;Lcom/sun/glass/ui/lens/LensView;IIIILcom/sun/glass/ui/lens/LensApplication$DragActions;)V

    invoke-direct {v10, v11}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1274
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/glass/ui/lens/LensApplication;->_notfyPlatformDnDEnded()V

    .line 1277
    move-object v10, v0

    sget-object v11, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->NONE:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v11}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v11

    iput v11, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragActionsPreformed:I

    .line 1278
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragView:Lcom/sun/glass/ui/lens/LensView;

    .line 1279
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragStarted:Z

    goto/16 :goto_0

    .line 1281
    :cond_4
    move v10, v2

    const/16 v11, 0xe0

    if-ne v10, v11, :cond_0

    move-object v10, v0

    iget v10, v10, Lcom/sun/glass/ui/lens/LensApplication;->cachedButtonPressed:I

    const/16 v11, 0xd3

    if-eq v10, v11, :cond_0

    move v10, v8

    const/16 v11, 0x20

    and-int/lit8 v10, v10, 0x20

    const/16 v11, 0x20

    if-eq v10, v11, :cond_5

    move v10, v8

    const/16 v11, 0x80

    and-int/lit16 v10, v10, 0x80

    const/16 v11, 0x80

    if-eq v10, v11, :cond_5

    move v10, v8

    const/16 v11, 0x40

    and-int/lit8 v10, v10, 0x40

    const/16 v11, 0x40

    if-ne v10, v11, :cond_0

    .line 1288
    :cond_5
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragStarted:Z

    if-eqz v10, :cond_a

    .line 1290
    const/4 v10, 0x1

    move v9, v10

    .line 1293
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragView:Lcom/sun/glass/ui/lens/LensView;

    move-object v11, v1

    if-ne v10, v11, :cond_6

    move-object v10, v0

    iget v10, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragActionsPreformed:I

    sget-object v11, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->NONE:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    .line 1294
    invoke-virtual {v11}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v11

    if-ne v10, v11, :cond_6

    .line 1296
    move-object v10, v0

    new-instance v11, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    move-object v13, v0

    move-object v14, v1

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    sget-object v19, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->ENTER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-direct/range {v12 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication;Lcom/sun/glass/ui/lens/LensView;IIIILcom/sun/glass/ui/lens/LensApplication$DragActions;)V

    invoke-direct {v10, v11}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1297
    move-object v10, v0

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    iget v11, v11, Lcom/sun/glass/ui/lens/LensApplication;->dragActionsPreformed:I

    sget-object v12, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->ENTER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v12}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v12

    or-int/2addr v11, v12

    iput v11, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragActionsPreformed:I

    .line 1298
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    sget-object v11, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1299
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    const-string v11, "Notifying DragEnter"

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1301
    :cond_6
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragView:Lcom/sun/glass/ui/lens/LensView;

    move-object v11, v1

    if-ne v10, v11, :cond_7

    move-object v10, v0

    iget v10, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragActionsPreformed:I

    sget-object v11, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->ENTER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    .line 1302
    invoke-virtual {v11}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v11

    and-int/2addr v10, v11

    sget-object v11, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->ENTER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v11}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v11

    if-ne v10, v11, :cond_7

    .line 1305
    move-object v10, v0

    new-instance v11, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    move-object v13, v0

    move-object v14, v1

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    sget-object v19, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->OVER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-direct/range {v12 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication;Lcom/sun/glass/ui/lens/LensView;IIIILcom/sun/glass/ui/lens/LensApplication$DragActions;)V

    invoke-direct {v10, v11}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1306
    move-object v10, v0

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    iget v11, v11, Lcom/sun/glass/ui/lens/LensApplication;->dragActionsPreformed:I

    sget-object v12, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->OVER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v12}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v12

    or-int/2addr v11, v12

    iput v11, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragActionsPreformed:I

    .line 1307
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    sget-object v11, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1308
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    const-string v11, "Notifying DragOver"

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1310
    :cond_7
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragView:Lcom/sun/glass/ui/lens/LensView;

    move-object v11, v1

    if-eq v10, v11, :cond_0

    .line 1315
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    sget-object v11, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1316
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    const-string v11, "Notifying DragLeave old view"

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 1318
    :cond_8
    move-object v10, v0

    new-instance v11, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    move-object v13, v0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/lens/LensApplication;->dragView:Lcom/sun/glass/ui/lens/LensView;

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    sget-object v19, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->LEAVE:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-direct/range {v12 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication;Lcom/sun/glass/ui/lens/LensView;IIIILcom/sun/glass/ui/lens/LensApplication$DragActions;)V

    invoke-direct {v10, v11}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1320
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    sget-object v11, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1321
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    const-string v11, "Notifying DragEnter new view"

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 1323
    :cond_9
    move-object v10, v0

    new-instance v11, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    move-object v13, v0

    move-object v14, v1

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    sget-object v19, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->ENTER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-direct/range {v12 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensDragEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication;Lcom/sun/glass/ui/lens/LensView;IIIILcom/sun/glass/ui/lens/LensApplication$DragActions;)V

    invoke-direct {v10, v11}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1325
    move-object v10, v0

    sget-object v11, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->ENTER:Lcom/sun/glass/ui/lens/LensApplication$DragActions;

    invoke-virtual {v11}, Lcom/sun/glass/ui/lens/LensApplication$DragActions;->getValue()I

    move-result v11

    iput v11, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragActionsPreformed:I

    .line 1326
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragView:Lcom/sun/glass/ui/lens/LensView;

    goto/16 :goto_0

    .line 1330
    :cond_a
    const/16 v10, 0xdf

    move v2, v10

    .line 1331
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragView:Lcom/sun/glass/ui/lens/LensView;

    if-nez v10, :cond_b

    .line 1333
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/sun/glass/ui/lens/LensApplication;->dragView:Lcom/sun/glass/ui/lens/LensView;

    .line 1335
    :cond_b
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    sget-object v11, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1336
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    const-string v11, "Drag detected - sending DRAG event"

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 1338
    :cond_c
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v10 .. v20}, Lcom/sun/glass/ui/lens/LensApplication;->postMouseEvent(Lcom/sun/glass/ui/lens/LensView;IIIIIIIZZ)V

    .line 1342
    const/4 v10, 0x1

    move v9, v10

    goto/16 :goto_0
.end method

.method private static initLibrary()V
    .locals 4

    .prologue
    .line 112
    const-string v2, "glass.lens"

    move-object v0, v2

    .line 113
    .local v0, "lensProperty":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 116
    .local v1, "platform":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication$$Lambda$2;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/sun/glass/ui/lens/LensApplication;->doComposite:Z

    .line 118
    sget-boolean v2, Lcom/sun/glass/ui/lens/LensApplication;->isInitialized:Z

    if-eqz v2, :cond_0

    .line 120
    .line 137
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "LensApplication initialization"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 125
    move-object v2, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "System property glass.lens not defined"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 130
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/glass/ui/lens/LensApplication$$Lambda$3;->lambdaFactory$(Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    .line 134
    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication;->_initIDs()V

    .line 135
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sun/glass/ui/lens/LensApplication;->isInitialized:Z

    .line 136
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "LensApplication initialization done"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 137
    goto :goto_0
.end method

.method private static synthetic lambda$createNativeEventThread$58(Lcom/sun/glass/ui/lens/LensApplication;JJ)V
    .locals 13

    .prologue
    .line 940
    move-object v1, p0

    .local v1, "lensApplication":Lcom/sun/glass/ui/lens/LensApplication;
    move-wide v2, p1

    .local v2, "nativeEventHandler":J
    move-wide/from16 v4, p3

    .local v4, "data":J
    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication;->registerEventLoop()V

    .line 941
    move-object v6, v1

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/glass/ui/lens/LensApplication;->nativeEventLoop(Lcom/sun/glass/ui/lens/LensApplication;JJ)V

    .line 946
    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication;->unregisterEventLoop()V

    .line 947
    return-void
.end method

.method private static synthetic lambda$initLibrary$53()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    const-string v0, "glass.lens"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$initLibrary$54()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 116
    const-string v0, "doNativeComposite"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$initLibrary$55(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "platform":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glass_lens_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/glass/ui/Application;->loadNativeLibrary(Ljava/lang/String;)V

    .line 132
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "platform":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$runLoop$56()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 904
    const-string v1, "glass.lens.stackSize"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method private synthetic lambda$runLoop$57()V
    .locals 5

    .prologue
    .line 907
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication;->_initialize()Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "Display failed initialization"

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 909
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Display failed initialization"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/lens/LensApplication;->_runLoop()Ljava/lang/Object;

    move-result-object v1

    .line 912
    return-void
.end method

.method private native nativeEventLoop(Lcom/sun/glass/ui/lens/LensApplication;JJ)V
.end method

.method private notifyDeviceEvent(IZ)V
    .locals 10

    .prologue
    .line 1600
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move v1, p1

    .local v1, "flags":I
    move v2, p2

    .local v2, "attach":Z
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1601
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notify device event attach="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    .line 1603
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1601
    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1606
    :cond_0
    move-object v3, v0

    new-instance v4, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/lens/LensApplication$LensDeviceEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication;IZ)V

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1607
    return-void
.end method

.method private notifyKeyEvent(Lcom/sun/glass/ui/lens/LensView;III[C)V
    .locals 16

    .prologue
    .line 1127
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v2, p2

    .local v2, "type":I
    move/from16 v3, p3

    .local v3, "keyCode":I
    move/from16 v4, p4

    .local v4, "modifiers":I
    move-object/from16 v5, p5

    .local v5, "chars":[C
    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1128
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key event on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    .line 1130
    :cond_0
    move-object v7, v0

    new-instance v8, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/sun/glass/ui/lens/LensApplication$LensKeyEvent;-><init>(Lcom/sun/glass/ui/lens/LensView;III[C)V

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    .line 1135
    :goto_0
    return-void

    .line 1132
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 1133
    .local v6, "e":Ljava/lang/Exception;
    move-object v7, v6

    invoke-static {v7}, Lcom/sun/glass/ui/lens/LensApplication;->reportException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private notifyMenuEvent(Lcom/sun/glass/ui/lens/LensView;IIIIZ)V
    .locals 18

    .prologue
    .line 1576
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "xAbs":I
    move/from16 v5, p5

    .local v5, "yAbs":I
    move/from16 v6, p6

    .local v6, "isKeyboardTrigger":Z
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1577
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notify menu event x="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", xAbs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", yAbs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isKeyboardTrigger "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    .line 1583
    :cond_0
    move-object v7, v1

    if-eqz v7, :cond_2

    .line 1584
    move-object v7, v0

    new-instance v8, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/sun/glass/ui/lens/LensApplication$LensMenuEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication;Lcom/sun/glass/ui/lens/LensView;IIIIZ)V

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1590
    :cond_1
    :goto_0
    return-void

    .line 1586
    :cond_2
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1587
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    const-string v8, "view is null, skipping event"

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyMultiTouchEvent(Lcom/sun/glass/ui/lens/LensView;[I[J[I[III)V
    .locals 29

    .prologue
    .line 1487
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v4, p1

    .local v4, "view":Lcom/sun/glass/ui/lens/LensView;
    move-object/from16 v5, p2

    .local v5, "states":[I
    move-object/from16 v6, p3

    .local v6, "ids":[J
    move-object/from16 v7, p4

    .local v7, "xs":[I
    move-object/from16 v8, p5

    .local v8, "ys":[I
    move/from16 v9, p6

    .local v9, "dx":I
    move/from16 v10, p7

    .local v10, "dy":I
    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v18

    sget-object v19, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1488
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MultiTouch event with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " points "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " on "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1492
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v11, v19

    monitor-enter v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 1499
    .local v12, "match":Z
    move-object/from16 v18, v3

    :try_start_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_8

    .line 1500
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v13, v18

    .line 1501
    .local v13, "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    :goto_0
    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1502
    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/glass/ui/lens/LensApplication$Event;

    move-object/from16 v14, v18

    .line 1503
    .local v14, "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1504
    move-object/from16 v18, v14

    check-cast v18, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;

    move-object/from16 v15, v18

    .line 1505
    .local v15, "e":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    move-object/from16 v18, v15

    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2300(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;)Lcom/sun/glass/ui/lens/LensView;

    move-result-object v18

    move-object/from16 v19, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v18, v15

    .line 1506
    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2400(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;)[I

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1507
    sget-boolean v18, Lcom/sun/glass/ui/lens/LensApplication;->$assertionsDisabled:Z

    if-nez v18, :cond_1

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1544
    .end local v13    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    .end local v14    # "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    .end local v15    # "e":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v11

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v18, v17

    :try_start_2
    throw v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1546
    .end local v12    # "match":Z
    :catch_0
    move-exception v18

    move-object/from16 v11, v18

    .line 1547
    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v18, v11

    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication;->reportException(Ljava/lang/Throwable;)V

    .line 1549
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1508
    .restart local v12    # "match":Z
    .restart local v13    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    .restart local v14    # "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    .restart local v15    # "e":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    :cond_1
    :try_start_3
    sget-boolean v18, Lcom/sun/glass/ui/lens/LensApplication;->$assertionsDisabled:Z

    if-nez v18, :cond_2

    move-object/from16 v18, v15

    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2400(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;)[I

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v15

    invoke-static/range {v19 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2500(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;)[J

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    new-instance v18, Ljava/lang/AssertionError;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1509
    :cond_2
    const/16 v18, 0x1

    move/from16 v12, v18

    .line 1510
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "i":I
    :goto_2
    move/from16 v18, v16

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    move/from16 v18, v12

    if-eqz v18, :cond_7

    .line 1512
    move-object/from16 v18, v15

    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2400(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;)[I

    move-result-object v18

    move/from16 v19, v16

    aget v18, v18, v19

    const/16 v19, 0x32c

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v18, v15

    .line 1513
    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2400(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;)[I

    move-result-object v18

    move/from16 v19, v16

    aget v18, v18, v19

    const/16 v19, 0x32e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :cond_3
    move-object/from16 v18, v5

    move/from16 v19, v16

    aget v18, v18, v19

    const/16 v19, 0x32c

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v18, v5

    move/from16 v19, v16

    aget v18, v18, v19

    const/16 v19, 0x32e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 1516
    :cond_4
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 1518
    :cond_5
    move-object/from16 v18, v15

    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2500(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;)[J

    move-result-object v18

    move/from16 v19, v16

    aget-wide v18, v18, v19

    move-object/from16 v20, v6

    move/from16 v21, v16

    aget-wide v20, v20, v21

    cmp-long v18, v18, v20

    if-eqz v18, :cond_6

    .line 1519
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 1510
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1522
    :cond_7
    move/from16 v18, v12

    if-eqz v18, :cond_8

    .line 1525
    move-object/from16 v18, v15

    move-object/from16 v19, v7

    invoke-static/range {v18 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2602(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;[I)[I

    move-result-object v18

    .line 1526
    move-object/from16 v18, v15

    move-object/from16 v19, v8

    invoke-static/range {v18 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2702(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;[I)[I

    move-result-object v18

    .line 1527
    move-object/from16 v18, v15

    move-object/from16 v19, v5

    invoke-static/range {v18 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2402(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;[I)[I

    move-result-object v18

    .line 1528
    move-object/from16 v18, v15

    move/from16 v19, v9

    invoke-static/range {v18 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2802(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;I)I

    move-result v18

    .line 1529
    move-object/from16 v18, v15

    move/from16 v19, v10

    invoke-static/range {v18 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;->access$2902(Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;I)I

    move-result v18

    .line 1540
    .end local v13    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    .end local v14    # "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    .end local v15    # "e":Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;
    .end local v16    # "i":I
    :cond_8
    :goto_3
    move/from16 v18, v12

    if-nez v18, :cond_9

    .line 1541
    move-object/from16 v18, v3

    new-instance v19, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;

    move-object/from16 v28, v19

    move-object/from16 v19, v28

    move-object/from16 v20, v28

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v10

    invoke-direct/range {v20 .. v27}, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;-><init>(Lcom/sun/glass/ui/lens/LensView;[I[J[I[III)V

    invoke-direct/range {v18 .. v19}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1544
    :cond_9
    move-object/from16 v18, v11

    monitor-exit v18

    .line 1548
    goto/16 :goto_1

    .line 1534
    .restart local v13    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    .restart local v14    # "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    :cond_a
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;

    move/from16 v18, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v18, :cond_b

    .line 1536
    goto :goto_3

    .line 1538
    :cond_b
    goto/16 :goto_0
.end method

.method private notifyScreenSettingsChanged()V
    .locals 7

    .prologue
    .line 1614
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1615
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v1

    const-string v2, "Notify screen settings changed"

    invoke-virtual {v1, v2}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1617
    :cond_0
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/lens/LensApplication$LensScreenEvent;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/lens/LensApplication$LensScreenEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication;Lcom/sun/glass/ui/lens/LensApplication$1;)V

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1618
    return-void
.end method

.method private notifyScrollEvent(Lcom/sun/glass/ui/lens/LensView;IIIIDDIIIIIDD)V
    .locals 42

    .prologue
    .line 1378
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "absx":I
    move/from16 v5, p5

    .local v5, "absy":I
    move-wide/from16 v6, p6

    .local v6, "deltaX":D
    move-wide/from16 v8, p8

    .local v8, "deltaY":D
    move/from16 v10, p10

    .local v10, "modifiers":I
    move/from16 v11, p11

    .local v11, "lines":I
    move/from16 v12, p12

    .local v12, "chars":I
    move/from16 v13, p13

    .local v13, "defaultLines":I
    move/from16 v14, p14

    .local v14, "defaultChars":I
    move-wide/from16 v15, p15

    .local v15, "xMultiplier":D
    move-wide/from16 v17, p17

    .local v17, "yMultiplier":D
    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v20

    sget-object v21, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v20 .. v21}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1379
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v41, v21

    move-object/from16 v21, v41

    move-object/from16 v22, v41

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Scroll event on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1382
    :cond_0
    move-object/from16 v20, v0

    new-instance v21, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;

    move-object/from16 v41, v21

    move-object/from16 v21, v41

    move-object/from16 v22, v41

    move-object/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-wide/from16 v30, v8

    move/from16 v32, v10

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 v35, v13

    move/from16 v36, v14

    move-wide/from16 v37, v15

    move-wide/from16 v39, v17

    invoke-direct/range {v22 .. v40}, Lcom/sun/glass/ui/lens/LensApplication$LensScrollEvent;-><init>(Lcom/sun/glass/ui/lens/LensView;IIIIDDIIIIIDD)V

    invoke-direct/range {v20 .. v21}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    .line 1390
    :goto_0
    return-void

    .line 1387
    :catch_0
    move-exception v20

    move-object/from16 v19, v20

    .line 1388
    .local v19, "e":Ljava/lang/Exception;
    move-object/from16 v20, v19

    invoke-static/range {v20 .. v20}, Lcom/sun/glass/ui/lens/LensApplication;->reportException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private notifyTouchEvent(Lcom/sun/glass/ui/lens/LensView;IJIIII)V
    .locals 23

    .prologue
    .line 1454
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v2, p1

    .local v2, "view":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v3, p2

    .local v3, "state":I
    move-wide/from16 v4, p3

    .local v4, "id":J
    move/from16 v6, p5

    .local v6, "x":I
    move/from16 v7, p6

    .local v7, "y":I
    move/from16 v8, p7

    .local v8, "absX":I
    move/from16 v9, p8

    .local v9, "absY":I
    move-object v11, v1

    :try_start_0
    iget v11, v11, Lcom/sun/glass/ui/lens/LensApplication;->previousTouchMoveScreenX:I

    if-ltz v11, :cond_1

    const/4 v11, 0x1

    :goto_0
    move v10, v11

    .line 1455
    .local v10, "hadPreviousTouchMove":Z
    move v11, v3

    const/16 v12, 0x32c

    if-ne v11, v12, :cond_2

    .line 1456
    move-object v11, v1

    move-object v12, v2

    move-wide v13, v4

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v11 .. v18}, Lcom/sun/glass/ui/lens/LensApplication;->postTouchMoveEvent(Lcom/sun/glass/ui/lens/LensView;JIIII)V

    .line 1461
    :goto_1
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v11

    sget-object v12, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1462
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Touch event "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " on "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1469
    .line 1470
    .end local v10    # "hadPreviousTouchMove":Z
    :cond_0
    :goto_2
    return-void

    .line 1454
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1458
    .restart local v10    # "hadPreviousTouchMove":Z
    :cond_2
    move-object v11, v1

    new-instance v12, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move-object v14, v2

    move v15, v3

    move-wide/from16 v16, v4

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    invoke-direct/range {v13 .. v21}, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;-><init>(Lcom/sun/glass/ui/lens/LensView;IJIIII)V

    invoke-direct {v11, v12}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1467
    .end local v10    # "hadPreviousTouchMove":Z
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 1468
    .local v10, "e":Ljava/lang/Exception;
    move-object v11, v10

    invoke-static {v11}, Lcom/sun/glass/ui/lens/LensApplication;->reportException(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private notifyViewEvent(Lcom/sun/glass/ui/lens/LensView;IIIII)V
    .locals 17

    .prologue
    .line 1563
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v2, p2

    .local v2, "viewEventType":I
    move/from16 v3, p3

    .local v3, "x":I
    move/from16 v4, p4

    .local v4, "y":I
    move/from16 v5, p5

    .local v5, "width":I
    move/from16 v6, p6

    .local v6, "height":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1564
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notify event type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    .line 1566
    invoke-static {v9}, Lcom/sun/glass/events/ViewEvent;->getTypeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1564
    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1570
    :cond_0
    move-object v7, v0

    new-instance v8, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    invoke-direct/range {v9 .. v15}, Lcom/sun/glass/ui/lens/LensApplication$LensViewEvent;-><init>(Lcom/sun/glass/ui/lens/LensView;IIIII)V

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1572
    return-void
.end method

.method private postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V
    .locals 7

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "e":Lcom/sun/glass/ui/lens/LensApplication$Event;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication;->getEventThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 711
    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Lcom/sun/glass/ui/lens/LensApplication$Event;->dispatch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .line 721
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 713
    .local v2, "ex":Ljava/lang/Exception;
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/glass/ui/lens/LensApplication;->reportException(Ljava/lang/Throwable;)V

    .line 714
    goto :goto_0

    .line 716
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 717
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 718
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 719
    move-object v4, v2

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method private postMouseEvent(Lcom/sun/glass/ui/lens/LensView;IIIIIIIZZ)V
    .locals 32

    .prologue
    .line 729
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v3, p1

    .local v3, "view":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v4, p2

    .local v4, "eventType":I
    move/from16 v5, p3

    .local v5, "x":I
    move/from16 v6, p4

    .local v6, "y":I
    move/from16 v7, p5

    .local v7, "absx":I
    move/from16 v8, p6

    .local v8, "absy":I
    move/from16 v9, p7

    .local v9, "button":I
    move/from16 v10, p8

    .local v10, "modifiers":I
    move/from16 v11, p9

    .local v11, "isPopupTrigger":Z
    move/from16 v12, p10

    .local v12, "isSynthesized":Z
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v31, v18

    move-object/from16 v18, v31

    move-object/from16 v19, v31

    move-object/from16 v13, v19

    monitor-enter v18

    .line 730
    move-object/from16 v18, v2

    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    move/from16 v18, v4

    const/16 v19, 0xdf

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move/from16 v18, v4

    const/16 v19, 0xe0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 732
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v14, v18

    .line 733
    .local v14, "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    :goto_0
    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 734
    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/glass/ui/lens/LensApplication$Event;

    move-object/from16 v15, v18

    .line 735
    .local v15, "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    move-object/from16 v18, v15

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 736
    move-object/from16 v18, v15

    check-cast v18, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;

    move-object/from16 v16, v18

    .line 737
    .local v16, "e":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    move-object/from16 v18, v16

    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->access$500(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)Lcom/sun/glass/ui/lens/LensView;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v18, v16

    .line 738
    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->access$600(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)I

    move-result v18

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v18, v16

    .line 739
    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->access$700(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)I

    move-result v18

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v18, v16

    .line 740
    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->access$800(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)I

    move-result v18

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v18, v16

    .line 741
    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->access$900(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)Z

    move-result v18

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v18, v16

    .line 742
    invoke-static/range {v18 .. v18}, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->access$1000(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;)Z

    move-result v18

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 745
    move-object/from16 v18, v16

    move/from16 v19, v5

    invoke-static/range {v18 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->access$1102(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;I)I

    move-result v18

    .line 746
    move-object/from16 v18, v16

    move/from16 v19, v6

    invoke-static/range {v18 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->access$1202(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;I)I

    move-result v18

    .line 747
    move-object/from16 v18, v16

    move/from16 v19, v7

    invoke-static/range {v18 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->access$1302(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;I)I

    move-result v18

    .line 748
    move-object/from16 v18, v16

    move/from16 v19, v8

    invoke-static/range {v18 .. v19}, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;->access$1402(Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;I)I

    move-result v18

    .line 749
    move-object/from16 v18, v13

    monitor-exit v18

    .line 758
    .end local v14    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    .end local v15    # "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    .end local v16    # "e":Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;
    :goto_1
    return-void

    .line 752
    .restart local v14    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    .restart local v15    # "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    :cond_1
    goto/16 :goto_0

    .line 754
    .end local v14    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    .end local v15    # "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    :cond_2
    move-object/from16 v18, v2

    new-instance v19, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;

    move-object/from16 v31, v19

    move-object/from16 v19, v31

    move-object/from16 v20, v31

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    invoke-direct/range {v20 .. v30}, Lcom/sun/glass/ui/lens/LensApplication$LensMouseEvent;-><init>(Lcom/sun/glass/ui/lens/LensView;IIIIIIIZZ)V

    invoke-direct/range {v18 .. v19}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 757
    move-object/from16 v18, v13

    monitor-exit v18

    .line 758
    goto :goto_1

    .line 757
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v13

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v17

    throw v18
.end method

.method private postTouchMoveEvent(Lcom/sun/glass/ui/lens/LensView;JIIII)V
    .locals 26

    .prologue
    .line 1405
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move-wide/from16 v2, p2

    .local v2, "id":J
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move/from16 v6, p6

    .local v6, "absX":I
    move/from16 v7, p7

    .local v7, "absY":I
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    move-object v8, v15

    monitor-enter v14

    .line 1406
    const/4 v14, 0x0

    move v9, v14

    .line 1407
    .local v9, "isEventCompacted":Z
    move-object v14, v0

    :try_start_0
    iget-object v14, v14, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1408
    move-object v14, v0

    iget-object v14, v14, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v10, v14

    .line 1409
    .local v10, "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    :goto_0
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1410
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/glass/ui/lens/LensApplication$Event;

    move-object v11, v14

    .line 1411
    .local v11, "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    move-object v14, v11

    instance-of v14, v14, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;

    if-eqz v14, :cond_3

    .line 1412
    move-object v14, v11

    check-cast v14, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;

    move-object v12, v14

    .line 1413
    .local v12, "e":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    move-object v14, v12

    invoke-static {v14}, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->access$1600(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;)Lcom/sun/glass/ui/lens/LensView;

    move-result-object v14

    move-object v15, v1

    if-ne v14, v15, :cond_1

    move-object v14, v12

    .line 1414
    invoke-static {v14}, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->access$1700(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;)J

    move-result-wide v14

    move-wide/from16 v16, v2

    cmp-long v14, v14, v16

    if-nez v14, :cond_1

    move-object v14, v12

    .line 1415
    invoke-static {v14}, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->access$1800(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;)I

    move-result v14

    const/16 v15, 0x32c

    if-eq v14, v15, :cond_0

    move-object v14, v12

    invoke-static {v14}, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->access$1800(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;)I

    move-result v14

    const/16 v15, 0x32e

    if-ne v14, v15, :cond_1

    .line 1418
    :cond_0
    move-object v14, v12

    move v15, v4

    invoke-static {v14, v15}, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->access$1902(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;I)I

    move-result v14

    .line 1419
    move-object v14, v12

    move v15, v5

    invoke-static {v14, v15}, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->access$2002(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;I)I

    move-result v14

    .line 1420
    move-object v14, v12

    move v15, v6

    invoke-static {v14, v15}, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->access$2102(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;I)I

    move-result v14

    .line 1421
    move-object v14, v12

    move v15, v7

    invoke-static {v14, v15}, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;->access$2202(Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;I)I

    move-result v14

    .line 1422
    const/4 v14, 0x1

    move v9, v14

    .line 1433
    .end local v10    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    .end local v11    # "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    .end local v12    # "e":Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;
    :cond_1
    :goto_1
    move v14, v9

    if-nez v14, :cond_2

    .line 1434
    move-object v14, v0

    new-instance v15, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v17, v1

    const/16 v18, 0x32c

    move-wide/from16 v19, v2

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    invoke-direct/range {v16 .. v24}, Lcom/sun/glass/ui/lens/LensApplication$LensTouchEvent;-><init>(Lcom/sun/glass/ui/lens/LensView;IJIIII)V

    invoke-direct {v14, v15}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1437
    :cond_2
    move-object v14, v8

    monitor-exit v14

    .line 1438
    return-void

    .line 1426
    .restart local v10    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    .restart local v11    # "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    :cond_3
    move-object v14, v11

    instance-of v14, v14, Lcom/sun/glass/ui/lens/LensApplication$LensMultiTouchEvent;

    if-eqz v14, :cond_4

    .line 1428
    goto :goto_1

    .line 1430
    :cond_4
    goto :goto_0

    .line 1437
    .end local v10    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/glass/ui/lens/LensApplication$Event;>;"
    .end local v11    # "lastEvent":Lcom/sun/glass/ui/lens/LensApplication$Event;
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v8

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v13

    throw v14
.end method

.method private static registerEventLoop()V
    .locals 6

    .prologue
    .line 868
    sget-object v2, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopLock:Ljava/lang/Object;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v0, v3

    monitor-enter v2

    .line 869
    :try_start_0
    sget v2, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopThreads:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopThreads:I

    .line 870
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activeEventLoopThreads := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopThreads:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 872
    sget-object v2, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 873
    move-object v2, v0

    monitor-exit v2

    .line 874
    return-void

    .line 873
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    throw v2
.end method

.method private static unregisterEventLoop()V
    .locals 6

    .prologue
    .line 877
    sget-object v2, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopLock:Ljava/lang/Object;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v0, v3

    monitor-enter v2

    .line 878
    :try_start_0
    sget v2, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopThreads:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopThreads:I

    .line 879
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activeEventLoopThreads := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopThreads:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 881
    sget-object v2, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 882
    move-object v2, v0

    monitor-exit v2

    .line 883
    return-void

    .line 882
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    throw v2
.end method

.method private static waitEventLoopsToFinish()V
    .locals 7

    .prologue
    .line 886
    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopLock:Ljava/lang/Object;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v0, v4

    monitor-enter v3

    .line 888
    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Waiting for all event loops to finish"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 889
    :goto_0
    sget v3, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopThreads:I

    if-lez v3, :cond_0

    .line 890
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeEventLoopThreads = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopThreads:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 892
    sget-object v3, Lcom/sun/glass/ui/lens/LensApplication;->activeEventLoopLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 896
    .line 897
    .local v1, "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    move-object v3, v0

    :try_start_1
    monitor-exit v3

    .line 898
    return-void

    .line 894
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 895
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "interrupted"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    goto :goto_1

    .line 897
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3
.end method


# virtual methods
.method protected _enterNestedEventLoop()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 771
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 772
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "_enterNestedEventLoop"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 779
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/lens/LensApplication;->_runLoop()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 781
    .local v1, "ret":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    sget-object v3, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 782
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Resuming event loop"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 786
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method protected native _getKeyCodeForChar(C)I
.end method

.method protected _invokeAndWait(Ljava/lang/Runnable;)V
    .locals 12

    .prologue
    .line 1752
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    sget-object v7, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1753
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invokeAndWait "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1755
    :cond_0
    sget-object v6, Lcom/sun/glass/ui/lens/LensApplication;->invokeAndWaitLock:Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v2, v7

    monitor-enter v6

    .line 1756
    move-object v6, v1

    :try_start_0
    sput-object v6, Lcom/sun/glass/ui/lens/LensApplication;->waitingFor:Ljava/lang/Runnable;

    .line 1757
    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1758
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v2, v7

    monitor-enter v6

    .line 1759
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    new-instance v7, Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;-><init>(ZLjava/lang/Runnable;)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1760
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 1761
    move-object v6, v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1762
    sget-object v6, Lcom/sun/glass/ui/lens/LensApplication;->invokeAndWaitLock:Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v2, v7

    monitor-enter v6

    .line 1763
    :goto_0
    :try_start_2
    sget-object v6, Lcom/sun/glass/ui/lens/LensApplication;->waitingFor:Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v1

    if-ne v6, v7, :cond_1

    .line 1765
    :try_start_3
    sget-object v6, Lcom/sun/glass/ui/lens/LensApplication;->invokeAndWaitLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1767
    goto :goto_0

    .line 1757
    :catchall_0
    move-exception v6

    move-object v3, v6

    move-object v6, v2

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v3

    throw v6

    .line 1761
    :catchall_1
    move-exception v6

    move-object v4, v6

    move-object v6, v2

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v6, v4

    throw v6

    .line 1766
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 1767
    goto :goto_0

    .line 1769
    :cond_1
    move-object v6, v2

    :try_start_6
    monitor-exit v6

    .line 1770
    return-void

    .line 1769
    :catchall_2
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v6, v5

    throw v6
.end method

.method protected _invokeLater(Ljava/lang/Runnable;)V
    .locals 10

    .prologue
    .line 1774
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1775
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invokeLater "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1777
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v2, v5

    monitor-enter v4

    .line 1778
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    new-instance v5, Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/sun/glass/ui/lens/LensApplication$RunnableEvent;-><init>(ZLjava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1779
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1780
    move-object v4, v2

    monitor-exit v4

    .line 1781
    return-void

    .line 1780
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method protected _leaveNestedEventLoop(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 792
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "retValue":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 793
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "_leaveNestedEventLoop"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 800
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/lens/LensApplication;->activeRunLoops:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;

    move-object v2, v3

    .line 801
    .local v2, "current":Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;
    sget-boolean v3, Lcom/sun/glass/ui/lens/LensApplication;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object v3, v2

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 804
    :cond_1
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;->active:Z

    .line 807
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;->release:Ljava/lang/Object;

    .line 809
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    sget-object v4, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 810
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "_leaveNestedEventLoop"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 817
    :cond_2
    return-void
.end method

.method protected _supportsTransparentWindows()Z
    .locals 2

    .prologue
    .line 985
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0
.end method

.method protected _supportsUnifiedWindows()Z
    .locals 2

    .prologue
    .line 989
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0
.end method

.method public createCursor(I)Lcom/sun/glass/ui/Cursor;
    .locals 6

    .prologue
    .line 1653
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move v1, p1

    .local v1, "type":I
    new-instance v2, Lcom/sun/glass/ui/lens/LensCursor;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/lens/LensCursor;-><init>(I)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method public createCursor(IILcom/sun/glass/ui/Pixels;)Lcom/sun/glass/ui/Cursor;
    .locals 10

    .prologue
    .line 1658
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, p3

    .local v3, "pixels":Lcom/sun/glass/ui/Pixels;
    new-instance v4, Lcom/sun/glass/ui/lens/LensCursor;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/lens/LensCursor;-><init>(IILcom/sun/glass/ui/Pixels;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method public createPixels(IILjava/nio/ByteBuffer;)Lcom/sun/glass/ui/Pixels;
    .locals 10

    .prologue
    .line 1676
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/ByteBuffer;
    new-instance v4, Lcom/sun/glass/ui/lens/LensPixels;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/lens/LensPixels;-><init>(IILjava/nio/ByteBuffer;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method public createPixels(IILjava/nio/IntBuffer;)Lcom/sun/glass/ui/Pixels;
    .locals 10

    .prologue
    .line 1681
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/IntBuffer;
    new-instance v4, Lcom/sun/glass/ui/lens/LensPixels;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/lens/LensPixels;-><init>(IILjava/nio/IntBuffer;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method public createPixels(IILjava/nio/IntBuffer;F)Lcom/sun/glass/ui/Pixels;
    .locals 12

    .prologue
    .line 1686
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/IntBuffer;
    move/from16 v4, p4

    .local v4, "scale":F
    new-instance v5, Lcom/sun/glass/ui/lens/LensPixels;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/glass/ui/lens/LensPixels;-><init>(IILjava/nio/IntBuffer;F)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method public createRobot()Lcom/sun/glass/ui/Robot;
    .locals 4

    .prologue
    .line 1696
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    new-instance v1, Lcom/sun/glass/ui/lens/LensRobot;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/lens/LensRobot;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method public createTimer(Ljava/lang/Runnable;)Lcom/sun/glass/ui/Timer;
    .locals 6

    .prologue
    .line 1707
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Lcom/sun/glass/ui/lens/LensTimer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/lens/LensTimer;-><init>(Ljava/lang/Runnable;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method public createView()Lcom/sun/glass/ui/View;
    .locals 4

    .prologue
    .line 1648
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    new-instance v1, Lcom/sun/glass/ui/lens/LensView;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/lens/LensView;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method public createWindow(J)Lcom/sun/glass/ui/Window;
    .locals 9

    .prologue
    .line 1643
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-wide v2, p1

    .local v2, "parent":J
    new-instance v4, Lcom/sun/glass/ui/lens/LensWindow;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/glass/ui/lens/LensWindow;-><init>(J)V

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v1
.end method

.method public createWindow(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;
    .locals 10

    .prologue
    .line 1638
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object v2, p2

    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move v3, p3

    .local v3, "styleMask":I
    new-instance v4, Lcom/sun/glass/ui/lens/LensWindow;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/lens/LensWindow;-><init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method enterDnDEventLoop()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/lens/LensApplication;->createEventLoop()Lcom/sun/glass/ui/EventLoop;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->dndEventLoop:Lcom/sun/glass/ui/EventLoop;

    .line 957
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication;->dndEventLoop:Lcom/sun/glass/ui/EventLoop;

    invoke-virtual {v1}, Lcom/sun/glass/ui/EventLoop;->enter()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method protected finishTerminating()V
    .locals 7

    .prologue
    .line 968
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    const-string v5, "Finishing terminating"

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 970
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/glass/ui/lens/LensApplication;->shutdown()V

    .line 971
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4

    .line 972
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 973
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication;->activeRunLoops:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 974
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication;->activeRunLoops:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;

    move-object v2, v4

    .line 975
    .local v2, "control":Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;
    move-object v4, v2

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;->active:Z

    .line 976
    goto :goto_0

    .line 977
    .end local v2    # "control":Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensApplication;->eventList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 978
    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    move-object v4, v0

    invoke-super {v4}, Lcom/sun/glass/ui/Application;->finishTerminating()V

    .line 981
    return-void

    .line 978
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public getWindowMenu()Lcom/sun/glass/ui/Menu;
    .locals 2

    .prologue
    .line 1628
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication;->windowMenu:Lcom/sun/glass/ui/Menu;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method public hasMultiTouch()Z
    .locals 3

    .prologue
    .line 1796
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication;->deviceFlags:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPointer()Z
    .locals 3

    .prologue
    .line 1800
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication;->deviceFlags:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasTouch()Z
    .locals 3

    .prologue
    .line 1792
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication;->deviceFlags:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasTwoLevelFocus()Z
    .locals 3

    .prologue
    .line 1784
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication;->deviceFlags:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication;->deviceFlags:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasVirtualKeyboard()Z
    .locals 3

    .prologue
    .line 1788
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication;->deviceFlags:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/lens/LensApplication;->deviceFlags:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasWindowManager()Z
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0
.end method

.method public installDefaultMenus(Lcom/sun/glass/ui/MenuBar;)V
    .locals 0
    .param p1, "menubar"    # Lcom/sun/glass/ui/MenuBar;

    .prologue
    .line 1633
    return-void
.end method

.method public installWindowMenu(Lcom/sun/glass/ui/MenuBar;)V
    .locals 5

    .prologue
    .line 1624
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "menubar":Lcom/sun/glass/ui/MenuBar;
    move-object v2, v0

    move-object v3, v0

    const-string v4, "Window"

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/lens/LensApplication;->createMenu(Ljava/lang/String;)Lcom/sun/glass/ui/Menu;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/lens/LensApplication;->windowMenu:Lcom/sun/glass/ui/Menu;

    .line 1625
    return-void
.end method

.method leaveDndEventLoop(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 961
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication;->dndEventLoop:Lcom/sun/glass/ui/EventLoop;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/EventLoop;->leave(Ljava/lang/Object;)V

    .line 962
    return-void
.end method

.method notifyDragStart()V
    .locals 3

    .prologue
    .line 1227
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/lens/LensApplication;->_notfyPlatformDnDStarted()V

    .line 1228
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/glass/ui/lens/LensApplication;->dragStarted:Z

    .line 1229
    return-void
.end method

.method notifyMouseEvent(Lcom/sun/glass/ui/lens/LensView;IIIIIIIZZ)V
    .locals 24

    .prologue
    .line 1161
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v1, p1

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v2, p2

    .local v2, "eventType":I
    move/from16 v3, p3

    .local v3, "x":I
    move/from16 v4, p4

    .local v4, "y":I
    move/from16 v5, p5

    .local v5, "absx":I
    move/from16 v6, p6

    .local v6, "absy":I
    move/from16 v7, p7

    .local v7, "button":I
    move/from16 v8, p8

    .local v8, "modifiers":I
    move/from16 v9, p9

    .local v9, "isPopupTrigger":Z
    move/from16 v10, p10

    .local v10, "isSynthesized":Z
    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v12

    sget-object v13, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v12, v13}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1162
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mouse event on "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 1166
    :cond_0
    move-object v12, v0

    move-object v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-direct/range {v12 .. v20}, Lcom/sun/glass/ui/lens/LensApplication;->handleDragEvents(Lcom/sun/glass/ui/lens/LensView;IIIIIII)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1167
    move-object v12, v0

    move-object v13, v1

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    invoke-direct/range {v12 .. v22}, Lcom/sun/glass/ui/lens/LensApplication;->postMouseEvent(Lcom/sun/glass/ui/lens/LensView;IIIIIIIZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    .line 1174
    :cond_1
    :goto_0
    return-void

    .line 1171
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 1172
    .local v11, "e":Ljava/lang/Exception;
    move-object v12, v11

    invoke-static {v12}, Lcom/sun/glass/ui/lens/LensApplication;->reportException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected notifyWindowEvent(Lcom/sun/glass/ui/lens/LensWindow;I)V
    .locals 11

    .prologue
    .line 1060
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "window":Lcom/sun/glass/ui/lens/LensWindow;
    move v2, p2

    .local v2, "windowEvent":I
    const/4 v4, 0x0

    move-object v3, v4

    .line 1061
    .local v3, "etype":Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;
    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 1081
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported event type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    .line 1082
    invoke-static {v6}, Lcom/sun/glass/events/WindowEvent;->getEventName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") skipping event"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1081
    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 1083
    .line 1095
    :goto_0
    return-void

    .line 1063
    :sswitch_0
    sget-object v4, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->FOCUS:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v3, v4

    .line 1086
    :goto_1
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1087
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyWindowEvent eventType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    .line 1089
    invoke-static {v6}, Lcom/sun/glass/events/WindowEvent;->getEventName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1087
    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1092
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 1093
    move-object v4, v0

    new-instance v5, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;Lcom/sun/glass/ui/lens/LensWindow;I)V

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1095
    :cond_1
    goto :goto_0

    .line 1066
    :sswitch_1
    sget-object v4, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->FOCUS:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v3, v4

    .line 1067
    goto :goto_1

    .line 1069
    :sswitch_2
    sget-object v4, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->DESTROY:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v3, v4

    .line 1070
    goto :goto_1

    .line 1072
    :sswitch_3
    sget-object v4, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->CLOSE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v3, v4

    .line 1073
    goto :goto_1

    .line 1075
    :sswitch_4
    sget-object v4, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->UNGRAB:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v3, v4

    .line 1076
    goto :goto_1

    .line 1078
    :sswitch_5
    sget-object v4, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->FOCUS_DISABLED:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v3, v4

    .line 1079
    goto :goto_1

    .line 1061
    :sswitch_data_0
    .sparse-switch
        0x209 -> :sswitch_3
        0x20a -> :sswitch_2
        0x21d -> :sswitch_1
        0x21e -> :sswitch_0
        0x221 -> :sswitch_5
        0x222 -> :sswitch_4
    .end sparse-switch
.end method

.method protected notifyWindowMove(Lcom/sun/glass/ui/lens/LensWindow;II)V
    .locals 15

    .prologue
    .line 1037
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v1, p1

    .local v1, "window":Lcom/sun/glass/ui/lens/LensWindow;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1038
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Move "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 1041
    :cond_0
    move-object v4, v0

    new-instance v5, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    sget-object v7, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->MOVE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v8, v1

    const/16 v9, 0x200

    move v10, v2

    move v11, v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;Lcom/sun/glass/ui/lens/LensWindow;IIIII)V

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1046
    return-void
.end method

.method protected notifyWindowResize(Lcom/sun/glass/ui/lens/LensWindow;III)V
    .locals 16

    .prologue
    .line 1011
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v1, p1

    .local v1, "window":Lcom/sun/glass/ui/lens/LensWindow;
    move/from16 v2, p2

    .local v2, "eventType":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v5

    sget-object v6, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1012
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyResize with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    .line 1013
    invoke-static {v7}, Lcom/sun/glass/events/WindowEvent;->getEventName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1012
    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 1016
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 1017
    move-object v5, v0

    new-instance v6, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    sget-object v8, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->RESIZE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v9, v1

    move v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v3

    move v14, v4

    invoke-direct/range {v7 .. v14}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;Lcom/sun/glass/ui/lens/LensWindow;IIIII)V

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1022
    :cond_1
    return-void
.end method

.method native registerApplication()V
.end method

.method protected runLoop(Ljava/lang/Runnable;)V
    .locals 13

    .prologue
    .line 902
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "launchable":Ljava/lang/Runnable;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/lens/LensApplication;->_invokeLater(Ljava/lang/Runnable;)V

    .line 903
    invoke-static {}, Lcom/sun/glass/ui/lens/LensApplication$$Lambda$4;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v5

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v2, v5

    .line 905
    .local v2, "stackSize":J
    new-instance v5, Ljava/lang/Thread;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    new-instance v7, Ljava/lang/ThreadGroup;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "Events"

    invoke-direct {v8, v9}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    invoke-static {v8}, Lcom/sun/glass/ui/lens/LensApplication$$Lambda$5;->lambdaFactory$(Lcom/sun/glass/ui/lens/LensApplication;)Ljava/lang/Runnable;

    move-result-object v8

    const-string v9, "Lens Event Thread"

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    move-object v4, v5

    .line 913
    .local v4, "toolkitThread":Ljava/lang/Thread;
    move-object v5, v4

    invoke-static {v5}, Lcom/sun/glass/ui/lens/LensApplication;->setEventThread(Ljava/lang/Thread;)V

    .line 914
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 915
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Lcom/sun/glass/ui/lens/LensApplication$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/lens/LensApplication$1;-><init>(Lcom/sun/glass/ui/lens/LensApplication;)V

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 920
    return-void
.end method

.method native shutdown()V
.end method

.method protected staticCommonDialogs_showFileChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .locals 10

    .prologue
    .line 1727
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object v2, p2

    .local v2, "folder":Ljava/lang/String;
    move-object v3, p3

    .local v3, "filename":Ljava/lang/String;
    move-object v4, p4

    .local v4, "title":Ljava/lang/String;
    move v5, p5

    .local v5, "type":I
    move/from16 v6, p6

    .local v6, "multipleMode":Z
    move-object/from16 v7, p7

    .local v7, "extensionFilters":[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    move/from16 v8, p8

    .local v8, "defaultFilterIndex":I
    const/4 v9, 0x0

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method protected staticCommonDialogs_showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .prologue
    .line 1735
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object v2, p2

    .local v2, "folder":Ljava/lang/String;
    move-object v3, p3

    .local v3, "title":Ljava/lang/String;
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method protected staticCursor_getBestSize(II)Lcom/sun/glass/ui/Size;
    .locals 5

    .prologue
    .line 1671
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/sun/glass/ui/lens/LensCursor;->getBestSize_impl(II)Lcom/sun/glass/ui/Size;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-object v0
.end method

.method protected staticCursor_setVisible(Z)V
    .locals 4

    .prologue
    .line 1663
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move v1, p1

    .local v1, "visible":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/glass/ui/lens/LensApplication;->cursorVisible:Z

    .line 1664
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/lens/LensApplication;->deviceFlags:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1665
    move v2, v1

    invoke-static {v2}, Lcom/sun/glass/ui/lens/LensCursor;->setVisible_impl(Z)V

    .line 1667
    :cond_0
    return-void
.end method

.method protected staticPixels_getNativeFormat()I
    .locals 2

    .prologue
    .line 1691
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensPixels;->getNativeFormat_impl()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0
.end method

.method protected native staticScreen_getScreens()[Lcom/sun/glass/ui/Screen;
.end method

.method protected staticScreen_getVideoRefreshPeriod()D
    .locals 3

    .prologue
    .line 1700
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-wide v0
.end method

.method protected staticTimer_getMaxPeriod()I
    .locals 2

    .prologue
    .line 1717
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensTimer;->getMaxPeriod_impl()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0
.end method

.method protected staticTimer_getMinPeriod()I
    .locals 2

    .prologue
    .line 1712
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensTimer;->getMinPeriod_impl()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0
.end method

.method protected staticView_getMultiClickMaxX()I
    .locals 2

    .prologue
    .line 1743
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensView;->_getMultiClickMaxX()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0
.end method

.method protected staticView_getMultiClickMaxY()I
    .locals 2

    .prologue
    .line 1747
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensView;->_getMultiClickMaxY()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return v0
.end method

.method protected staticView_getMultiClickTime()J
    .locals 3

    .prologue
    .line 1739
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    invoke-static {}, Lcom/sun/glass/ui/lens/LensView;->_getMultiClickTime()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/lens/LensApplication;
    return-wide v0
.end method

.method protected windowExpose(Lcom/sun/glass/ui/lens/LensWindow;IIII)V
    .locals 17

    .prologue
    .line 1099
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication;
    move-object/from16 v1, p1

    .local v1, "window":Lcom/sun/glass/ui/lens/LensWindow;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    sget-object v7, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1100
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expose "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1104
    :cond_0
    move-object v6, v0

    new-instance v7, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    sget-object v9, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;->EXPOSE:Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;

    move-object v10, v1

    const/16 v11, 0x1ff

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    invoke-direct/range {v8 .. v15}, Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication$LensWindowEvent$EType;Lcom/sun/glass/ui/lens/LensWindow;IIIII)V

    invoke-direct {v6, v7}, Lcom/sun/glass/ui/lens/LensApplication;->postEvent(Lcom/sun/glass/ui/lens/LensApplication$Event;)V

    .line 1107
    return-void
.end method
