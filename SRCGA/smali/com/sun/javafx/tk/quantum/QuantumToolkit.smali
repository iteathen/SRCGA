.class public final Lcom/sun/javafx/tk/quantum/QuantumToolkit;
.super Lcom/sun/javafx/tk/Toolkit;
.source "QuantumToolkit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static debug:Z

.field static final drawInPaint:Z

.field static final liveResize:Z

.field private static final multithreaded:Z

.field private static noRenderJobs:Z

.field public static final pulseDebug:Z

.field private static pulseHZ:Ljava/lang/Integer;

.field private static screenAccessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

.field private static singleThreaded:Z

.field static tmpStroke:Lcom/sun/prism/BasicStroke;

.field public static final verbose:Z


# instance fields
.field final FULLSPEED_INTERVAL:I

.field final PULSE_INTERVAL:I

.field private _maxPixelScale:F

.field private animationRunnable:Lcom/sun/scenario/DelayedRunnable;

.field private animationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ccl:Ljava/lang/ClassLoader;

.field private clipboard:Lcom/sun/javafx/tk/quantum/QuantumClipboard;

.field private collector:Lcom/sun/javafx/tk/quantum/PaintCollector;

.field private contextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private eventLoopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sun/glass/ui/EventLoop;",
            ">;"
        }
    .end annotation
.end field

.field private inPulse:I

.field private launchLatch:Ljava/util/concurrent/CountDownLatch;

.field nativeSystemVsync:Z

.field private nextPulseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pause:Z

.field private final perfTracker:Lcom/sun/javafx/perf/PerformanceTracker;

.field private pipeline:Lcom/sun/prism/GraphicsPipeline;

.field private pulseRunnable:Ljava/lang/Runnable;

.field private pulseRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pulseTimer:Lcom/sun/glass/ui/Timer;

.field private renderer:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

.field private shutdownHook:Ljava/lang/Thread;

.field private systemMenu:Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

.field private timerRunnable:Ljava/lang/Runnable;

.field private toolkitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private userRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 135
    const-class v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->$assertionsDisabled:Z

    .line 137
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$10;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 138
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    .line 140
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$11;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 141
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseDebug:Z

    .line 143
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$12;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 144
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->multithreaded:Z

    .line 156
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$13;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 157
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->debug:Z

    .line 159
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$14;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 160
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseHZ:Ljava/lang/Integer;

    .line 162
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$15;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 163
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->liveResize:Z

    .line 169
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$16;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 170
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->drawInPaint:Z

    .line 175
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$17;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 176
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->singleThreaded:Z

    .line 184
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$18;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->noRenderJobs:Z

    .line 643
    new-instance v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$3;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->screenAccessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    .line 917
    new-instance v0, Lcom/sun/prism/BasicStroke;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/prism/BasicStroke;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->tmpStroke:Lcom/sun/prism/BasicStroke;

    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/Toolkit;-><init>()V

    .line 193
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->toolkitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->animationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 195
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->nextPulseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 196
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 197
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    .line 198
    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->launchLatch:Ljava/util/concurrent/CountDownLatch;

    .line 200
    move-object v1, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->getRefreshRate()I

    move-result v4

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->PULSE_INTERVAL:I

    .line 201
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->FULLSPEED_INTERVAL:I

    .line 202
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->nativeSystemVsync:Z

    .line 205
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseTimer:Lcom/sun/glass/ui/Timer;

    .line 206
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->shutdownHook:Ljava/lang/Thread;

    .line 213
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->eventLoopMap:Ljava/util/HashMap;

    .line 215
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->perfTracker:Lcom/sun/javafx/perf/PerformanceTracker;

    .line 814
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->contextMap:Ljava/util/Map;

    .line 1220
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->systemMenu:Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/tk/TKScreenConfigurationListener;)V
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/tk/TKScreenConfigurationListener;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->notifyScreenListener(Lcom/sun/javafx/tk/TKScreenConfigurationListener;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$init$384()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$startup$385()V

    return-void
.end method

.method static synthetic access$lambda$10()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$static$376()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$11()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$static$377()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$12()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$static$378()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$13()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$static$379()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$14()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$static$380()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$15()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$static$381()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$16()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$static$382()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$17()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$static$383()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$runToolkit$386()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$runToolkit$387()V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$pauseRenderer$388()V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$resumeRenderer$389()V

    return-void
.end method

.method static synthetic access$lambda$6()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$exit$390()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$dispose$391()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$8(Ljava/util/concurrent/CountDownLatch;Lcom/sun/javafx/tk/RenderJob;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$renderToImage$392(Ljava/util/concurrent/CountDownLatch;Lcom/sun/javafx/tk/RenderJob;)V

    return-void
.end method

.method static synthetic access$lambda$9()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->lambda$static$375()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private assertToolkitRunning()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method private static assignScreensAdapters()V
    .locals 6

    .prologue
    .line 691
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v3

    move-object v0, v3

    .line 692
    .local v0, "pipeline":Lcom/sun/prism/GraphicsPipeline;
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getScreens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/glass/ui/Screen;

    move-object v2, v3

    .line 693
    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move-object v3, v2

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/prism/GraphicsPipeline;->getAdapterOrdinal(Lcom/sun/glass/ui/Screen;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/Screen;->setAdapterOrdinal(I)V

    .line 694
    goto :goto_0

    .line 695
    .end local v2    # "screen":Lcom/sun/glass/ui/Screen;
    :cond_0
    return-void
.end method

.method private blockOwnerStage(Lcom/sun/javafx/tk/TKStage;)Lcom/sun/javafx/tk/quantum/WindowStage;
    .locals 6

    .prologue
    .line 1555
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "stage":Lcom/sun/javafx/tk/TKStage;
    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v4, :cond_0

    .line 1556
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/tk/quantum/WindowStage;

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/WindowStage;->getOwner()Lcom/sun/javafx/tk/quantum/GlassStage;

    move-result-object v4

    move-object v2, v4

    .line 1557
    .local v2, "ownerStage":Lcom/sun/javafx/tk/TKStage;
    move-object v4, v2

    instance-of v4, v4, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v4, :cond_0

    .line 1558
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/tk/quantum/WindowStage;

    move-object v3, v4

    .line 1559
    .local v3, "ownerWindowStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/quantum/WindowStage;->setEnabled(Z)V

    .line 1560
    move-object v4, v3

    move-object v0, v4

    .line 1564
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    .end local v2    # "ownerStage":Lcom/sun/javafx/tk/TKStage;
    .end local v3    # "ownerWindowStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method static clipboardActionToTransferMode(I)Ljavafx/scene/input/TransferMode;
    .locals 2

    .prologue
    .line 1193
    move v0, p0

    .local v0, "action":I
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 1209
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "action":I
    :goto_0
    return-object v0

    .line 1195
    .restart local v0    # "action":I
    :sswitch_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 1199
    :sswitch_1
    sget-object v1, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    move-object v0, v1

    goto :goto_0

    .line 1203
    :sswitch_2
    sget-object v1, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    move-object v0, v1

    goto :goto_0

    .line 1205
    :sswitch_3
    sget-object v1, Ljavafx/scene/input/TransferMode;->LINK:Ljavafx/scene/input/TransferMode;

    move-object v0, v1

    goto :goto_0

    .line 1207
    :sswitch_4
    sget-object v1, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    move-object v0, v1

    goto :goto_0

    .line 1193
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x40000000 -> :sswitch_3
        0x40000001 -> :sswitch_1
        0x40000002 -> :sswitch_2
        0x4fffffff -> :sswitch_4
    .end sparse-switch
.end method

.method private static convertExtensionFilters(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/stage/FileChooser$ExtensionFilter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1570
    move-object v0, p0

    .local v0, "extensionFilters":Ljava/util/List;, "Ljava/util/List<Ljavafx/stage/FileChooser$ExtensionFilter;>;"
    move-object v5, v0

    .line 1571
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;

    move-object v1, v5

    .line 1573
    .local v1, "glassExtensionFilters":[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;
    const/4 v5, 0x0

    move v2, v5

    .line 1575
    .local v2, "i":I
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/stage/FileChooser$ExtensionFilter;

    move-object v4, v5

    .line 1576
    .local v4, "extensionFilter":Ljavafx/stage/FileChooser$ExtensionFilter;
    move-object v5, v1

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    new-instance v7, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    .line 1578
    invoke-virtual {v9}, Ljavafx/stage/FileChooser$ExtensionFilter;->getDescription()Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    .line 1579
    invoke-virtual {v10}, Ljavafx/stage/FileChooser$ExtensionFilter;->getExtensions()Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    aput-object v7, v5, v6

    .line 1580
    goto :goto_0

    .line 1582
    .end local v4    # "extensionFilter":Ljavafx/stage/FileChooser$ExtensionFilter;
    :cond_0
    move-object v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "extensionFilters":Ljava/util/List;, "Ljava/util/List<Ljavafx/stage/FileChooser$ExtensionFilter;>;"
    return-object v0
.end method

.method private convertStops(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sun/prism/paint/Stop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 856
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v2, p1

    .local v2, "paintStops":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    .line 857
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v6

    .line 858
    .local v3, "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/paint/Stop;

    move-object v5, v6

    .line 859
    .local v5, "s":Ljavafx/scene/paint/Stop;
    move-object v6, v3

    new-instance v7, Lcom/sun/prism/paint/Stop;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->toPrismColor(Ljavafx/scene/paint/Color;)Lcom/sun/prism/paint/Color;

    move-result-object v9

    move-object v10, v5

    .line 860
    invoke-virtual {v10}, Ljavafx/scene/paint/Stop;->getOffset()D

    move-result-wide v10

    double-to-float v10, v10

    invoke-direct {v8, v9, v10}, Lcom/sun/prism/paint/Stop;-><init>(Lcom/sun/prism/paint/Color;F)V

    .line 859
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 861
    goto :goto_0

    .line 862
    .end local v5    # "s":Ljavafx/scene/paint/Stop;
    :cond_0
    move-object v6, v3

    move-object v1, v6

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v1
.end method

.method private endPulseRunning()V
    .locals 7

    .prologue
    .line 485
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 486
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->debug:Z

    if-eqz v2, :cond_0

    .line 487
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QT.endPulse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    :cond_0
    return-void
.end method

.method protected static getFxUserThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 430
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getFxUserThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method private static initSceneGraph()V
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Ljavafx/stage/Screen;->getPrimary()Ljavafx/stage/Screen;

    move-result-object v0

    .line 301
    return-void
.end method

.method private initStroke(Ljavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F[FF)V
    .locals 18

    .prologue
    .line 924
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v1, p1

    .local v1, "pgtype":Ljavafx/scene/shape/StrokeType;
    move-wide/from16 v2, p2

    .local v2, "strokewidth":D
    move-object/from16 v4, p4

    .local v4, "pgcap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v5, p5

    .local v5, "pgjoin":Ljavafx/scene/shape/StrokeLineJoin;
    move/from16 v6, p6

    .local v6, "miterLimit":F
    move-object/from16 v7, p7

    .local v7, "dashArray":[F
    move/from16 v8, p8

    .local v8, "dashOffset":F
    move-object v12, v1

    sget-object v13, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    if-ne v12, v13, :cond_0

    .line 925
    const/4 v12, 0x0

    move v9, v12

    .line 933
    .local v9, "type":I
    :goto_0
    move-object v12, v4

    sget-object v13, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    if-ne v12, v13, :cond_2

    .line 934
    const/4 v12, 0x0

    move v10, v12

    .line 942
    .local v10, "cap":I
    :goto_1
    move-object v12, v5

    sget-object v13, Ljavafx/scene/shape/StrokeLineJoin;->BEVEL:Ljavafx/scene/shape/StrokeLineJoin;

    if-ne v12, v13, :cond_4

    .line 943
    const/4 v12, 0x2

    move v11, v12

    .line 950
    .local v11, "join":I
    :goto_2
    sget-object v12, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->tmpStroke:Lcom/sun/prism/BasicStroke;

    move v13, v9

    move-wide v14, v2

    double-to-float v14, v14

    move v15, v10

    move/from16 v16, v11

    move/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lcom/sun/prism/BasicStroke;->set(IFIIF)V

    .line 951
    move-object v12, v7

    if-eqz v12, :cond_6

    move-object v12, v7

    array-length v12, v12

    if-lez v12, :cond_6

    .line 952
    sget-object v12, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->tmpStroke:Lcom/sun/prism/BasicStroke;

    move-object v13, v7

    move v14, v8

    invoke-virtual {v12, v13, v14}, Lcom/sun/prism/BasicStroke;->set([FF)V

    .line 956
    :goto_3
    return-void

    .line 926
    .end local v9    # "type":I
    .end local v10    # "cap":I
    .end local v11    # "join":I
    :cond_0
    move-object v12, v1

    sget-object v13, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    if-ne v12, v13, :cond_1

    .line 927
    const/4 v12, 0x1

    move v9, v12

    .restart local v9    # "type":I
    goto :goto_0

    .line 929
    .end local v9    # "type":I
    :cond_1
    const/4 v12, 0x2

    move v9, v12

    .restart local v9    # "type":I
    goto :goto_0

    .line 935
    :cond_2
    move-object v12, v4

    sget-object v13, Ljavafx/scene/shape/StrokeLineCap;->SQUARE:Ljavafx/scene/shape/StrokeLineCap;

    if-ne v12, v13, :cond_3

    .line 936
    const/4 v12, 0x2

    move v10, v12

    .restart local v10    # "cap":I
    goto :goto_1

    .line 938
    .end local v10    # "cap":I
    :cond_3
    const/4 v12, 0x1

    move v10, v12

    .restart local v10    # "cap":I
    goto :goto_1

    .line 944
    :cond_4
    move-object v12, v5

    sget-object v13, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    if-ne v12, v13, :cond_5

    .line 945
    const/4 v12, 0x0

    move v11, v12

    .restart local v11    # "join":I
    goto :goto_2

    .line 947
    .end local v11    # "join":I
    :cond_5
    const/4 v12, 0x1

    move v11, v12

    .restart local v11    # "join":I
    goto :goto_2

    .line 954
    :cond_6
    sget-object v12, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->tmpStroke:Lcom/sun/prism/BasicStroke;

    const/4 v13, 0x0

    check-cast v13, [F

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sun/prism/BasicStroke;->set([FF)V

    goto :goto_3
.end method

.method private synthetic lambda$dispose$391()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->shutdownHook:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    move-result v1

    .line 794
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method private static synthetic lambda$exit$390()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 776
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    move-object v0, v1

    .line 777
    .local v0, "app":Lcom/sun/glass/ui/Application;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/Application;->terminate()V

    .line 778
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "app":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method private synthetic lambda$init$384()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->shutdownHook:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 237
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method private synthetic lambda$pauseRenderer$388()V
    .locals 3

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pause:Z

    return-void
.end method

.method private static synthetic lambda$renderToImage$392(Ljava/util/concurrent/CountDownLatch;Lcom/sun/javafx/tk/RenderJob;)V
    .locals 3

    .prologue
    .line 1477
    move-object v0, p0

    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object v1, p1

    .local v1, "job":Lcom/sun/javafx/tk/RenderJob;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$resumeRenderer$389()V
    .locals 3

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pause:Z

    return-void
.end method

.method private synthetic lambda$runToolkit$386()V
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulse()V

    return-void
.end method

.method private synthetic lambda$runToolkit$387()V
    .locals 4

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->postPulse()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .line 328
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 326
    .local v1, "th":Ljava/lang/Throwable;
    move-object v2, v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method private synthetic lambda$startup$385()V
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runToolkit()V

    return-void
.end method

.method private static synthetic lambda$static$375()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 138
    const-string v0, "quantum.verbose"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$376()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 141
    const-string v0, "quantum.pulse"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$377()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 147
    const-string v2, "quantum.multithreaded"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 148
    .local v0, "value":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .line 153
    .end local v0    # "value":Ljava/lang/String;
    .local v1, "result":Z
    :goto_0
    return-object v0

    .line 149
    .end local v1    # "result":Z
    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move v1, v2

    .line 150
    .restart local v1    # "result":Z
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v2, :cond_1

    .line 151
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move v3, v1

    if-eqz v3, :cond_2

    const-string v3, "Multi-Threading Enabled"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    :cond_1
    move v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 151
    :cond_2
    const-string v3, "Multi-Threading Disabled"

    goto :goto_1
.end method

.method private static synthetic lambda$static$378()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 157
    const-string v0, "quantum.debug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$379()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 160
    const-string v0, "javafx.animation.pulse"

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$380()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 164
    const-string v2, "swt"

    const-string v3, "glass.platform"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 165
    .local v0, "isSWT":Z
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    if-nez v2, :cond_1

    const-string v2, "true"

    :goto_0
    move-object v1, v2

    .line 166
    .local v1, "result":Ljava/lang/String;
    const-string v2, "true"

    const-string v3, "javafx.live.resize"

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "isSWT":Z
    return-object v0

    .line 165
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "isSWT":Z
    :cond_1
    const-string v2, "false"

    goto :goto_0
.end method

.method private static synthetic lambda$static$381()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 171
    const-string v2, "swt"

    const-string v3, "glass.platform"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 172
    .local v0, "isSWT":Z
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    if-eqz v2, :cond_0

    const-string v2, "true"

    :goto_0
    move-object v1, v2

    .line 173
    .local v1, "result":Ljava/lang/String;
    const-string v2, "true"

    const-string v3, "javafx.draw.in.paint"

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "isSWT":Z
    return-object v0

    .line 172
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "isSWT":Z
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method

.method private static synthetic lambda$static$382()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 177
    const-string v1, "quantum.singlethreaded"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .line 178
    .local v0, "result":Ljava/lang/Boolean;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Warning: Single GUI Threadiong is enabled, FPS should be slower"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "result":Ljava/lang/Boolean;
    return-object v0
.end method

.method private static synthetic lambda$static$383()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 186
    const-string v1, "quantum.norenderjobs"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .line 187
    .local v0, "result":Ljava/lang/Boolean;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Warning: Quantum will not submit render jobs, nothing should draw"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "result":Ljava/lang/Boolean;
    return-object v0
.end method

.method private static notifyScreenListener(Lcom/sun/javafx/tk/TKScreenConfigurationListener;)V
    .locals 2

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "listener":Lcom/sun/javafx/tk/TKScreenConfigurationListener;
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->assignScreensAdapters()V

    .line 699
    move-object v1, v0

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKScreenConfigurationListener;->screenConfigurationChanged()V

    .line 700
    return-void
.end method

.method private pulseString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->toolkitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "T"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->animationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 474
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "A"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 475
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "P"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->nextPulseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 476
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "N"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->collector:Lcom/sun/javafx/tk/quantum/PaintCollector;

    .line 477
    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/PaintCollector;->hasDirty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "D"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0

    .line 473
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const-string v2, "t"

    goto :goto_0

    .line 474
    :cond_1
    const-string v2, "a"

    goto :goto_1

    .line 475
    :cond_2
    const-string v2, "p"

    goto :goto_2

    .line 476
    :cond_3
    const-string v2, "n"

    goto :goto_3

    .line 477
    :cond_4
    const-string v2, "d"

    goto :goto_4
.end method

.method public static runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    sget-object v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 409
    move-object v3, v0

    :try_start_0
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v1, v3

    .line 411
    sget-object v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v3, v1

    move-object v0, v3

    .end local v0    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    return-object v0

    .restart local v0    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    :catchall_0
    move-exception v3

    move-object v2, v3

    sget-object v3, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v3, v2

    throw v3
.end method

.method public static runWithoutRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    sget-object v4, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    move v1, v4

    .line 388
    .local v1, "locked":Z
    move v4, v1

    if-eqz v4, :cond_0

    .line 389
    :try_start_0
    sget-object v4, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 391
    :cond_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    move-object v2, v4

    .line 393
    move v4, v1

    if-eqz v4, :cond_1

    .line 394
    sget-object v4, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_1
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    return-object v0

    .line 393
    .restart local v0    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move v4, v1

    if-eqz v4, :cond_2

    .line 394
    sget-object v4, Lcom/sun/javafx/tk/quantum/ViewPainter;->renderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_2
    move-object v4, v3

    throw v4
.end method

.method private setPulseRunning()Z
    .locals 3

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0
.end method

.method private toPrismColor(Ljavafx/scene/paint/Color;)Lcom/sun/prism/paint/Color;
    .locals 4

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "color":Ljavafx/scene/paint/Color;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/prism/paint/Color;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method


# virtual methods
.method public accumulateStrokeBounds(Lcom/sun/javafx/geom/Shape;[FLjavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;FLcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 20

    .prologue
    .line 968
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v1, p1

    .local v1, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v2, p2

    .local v2, "bbox":[F
    move-object/from16 v3, p3

    .local v3, "pgtype":Ljavafx/scene/shape/StrokeType;
    move-wide/from16 v4, p4

    .local v4, "strokewidth":D
    move-object/from16 v6, p6

    .local v6, "pgcap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v7, p7

    .local v7, "pgjoin":Ljavafx/scene/shape/StrokeLineJoin;
    move/from16 v8, p8

    .local v8, "miterLimit":F
    move-object/from16 v9, p9

    .local v9, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v10, v0

    move-object v11, v3

    move-wide v12, v4

    move-object v14, v6

    move-object v15, v7

    move/from16 v16, v8

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->initStroke(Ljavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F[FF)V

    .line 969
    move-object v10, v9

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 970
    sget-object v10, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->tmpStroke:Lcom/sun/prism/BasicStroke;

    move-object v11, v2

    move-object v12, v1

    move-object v13, v9

    invoke-virtual {v10, v11, v12, v13}, Lcom/sun/prism/BasicStroke;->accumulateShapeBounds([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 974
    :goto_0
    return-void

    .line 972
    :cond_0
    move-object v10, v2

    sget-object v11, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->tmpStroke:Lcom/sun/prism/BasicStroke;

    move-object v12, v1

    invoke-virtual {v11, v12}, Lcom/sun/prism/BasicStroke;->createStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v11

    move-object v12, v9

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/geom/Shape;->accumulate([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    goto :goto_0
.end method

.method public addRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;
    .locals 6

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/tk/RenderJob;
    sget-boolean v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->noRenderJobs:Z

    if-eqz v4, :cond_2

    .line 436
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/tk/RenderJob;->getCompletionListener()Lcom/sun/javafx/tk/CompletionListener;

    move-result-object v4

    move-object v2, v4

    .line 437
    .local v2, "listener":Lcom/sun/javafx/tk/CompletionListener;
    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    if-eqz v4, :cond_0

    .line 438
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/tk/quantum/PaintRenderJob;

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/PaintRenderJob;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/quantum/GlassScene;->setPainting(Z)Z

    move-result v4

    .line 440
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 442
    move-object v4, v2

    move-object v5, v1

    :try_start_0
    invoke-interface {v4, v5}, Lcom/sun/javafx/tk/CompletionListener;->done(Lcom/sun/javafx/tk/RenderJob;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .line 447
    :cond_1
    :goto_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 454
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    .end local v2    # "listener":Lcom/sun/javafx/tk/CompletionListener;
    :goto_1
    return-object v0

    .line 443
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    .restart local v2    # "listener":Lcom/sun/javafx/tk/CompletionListener;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 444
    .local v3, "th":Ljava/lang/Throwable;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 450
    .end local v2    # "listener":Lcom/sun/javafx/tk/CompletionListener;
    .end local v3    # "th":Ljava/lang/Throwable;
    :cond_2
    sget-boolean v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->singleThreaded:Z

    if-eqz v4, :cond_3

    .line 451
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/tk/RenderJob;->run()V

    .line 452
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1

    .line 454
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->renderer:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->submitRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;

    move-result-object v4

    move-object v0, v4

    goto :goto_1
.end method

.method public canStartNestedEventLoop()Z
    .locals 2

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkFxUserThread()V
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 426
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->renderer:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->checkRendererIdle()V

    .line 427
    return-void
.end method

.method public closeAppletWindow()V
    .locals 4

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/javafx/tk/quantum/WindowStage;->getAppletWindow()Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    move-result-object v2

    move-object v1, v2

    .line 554
    .local v1, "gaw":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    const/4 v2, 0x0

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 555
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->dispose()V

    .line 556
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->setAppletWindow(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;)V

    .line 559
    :cond_0
    return-void
.end method

.method public convertHitInfoToFX(Ljava/lang/Object;)Lcom/sun/javafx/scene/text/HitInfo;
    .locals 7

    .prologue
    .line 1066
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "hit":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    move-object v2, v4

    .line 1067
    .local v2, "textHitPos":Ljava/lang/Integer;
    new-instance v4, Lcom/sun/javafx/scene/text/HitInfo;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/scene/text/HitInfo;-><init>()V

    move-object v3, v4

    .line 1068
    .local v3, "hitInfo":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/text/HitInfo;->setCharIndex(I)V

    .line 1069
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/text/HitInfo;->setLeading(Z)V

    .line 1070
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public convertShapeToFXPath(Ljava/lang/Object;)[Ljavafx/scene/shape/PathElement;
    .locals 27

    .prologue
    .line 1019
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v3, p1

    .local v3, "shape":Ljava/lang/Object;
    move-object v12, v3

    if-nez v12, :cond_0

    .line 1020
    const/4 v12, 0x0

    new-array v12, v12, [Ljavafx/scene/shape/PathElement;

    move-object v2, v12

    .line 1062
    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :goto_0
    return-object v2

    .line 1022
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v12

    .line 1025
    .local v4, "elements":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/shape/PathElement;>;"
    move-object v12, v3

    check-cast v12, Lcom/sun/javafx/geom/Shape;

    move-object v5, v12

    .line 1026
    .local v5, "geomShape":Lcom/sun/javafx/geom/Shape;
    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v12

    move-object v6, v12

    .line 1027
    .local v6, "itr":Lcom/sun/javafx/geom/PathIterator;
    new-instance v12, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    move-object v14, v6

    invoke-direct {v13, v14}, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;-><init>(Lcom/sun/javafx/geom/PathIterator;)V

    move-object v7, v12

    .line 1028
    .local v7, "helper":Lcom/sun/javafx/tk/quantum/PathIteratorHelper;
    new-instance v12, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    invoke-direct {v13}, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;-><init>()V

    move-object v8, v12

    .line 1030
    .local v8, "struct":Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;
    :goto_1
    move-object v12, v7

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->isDone()Z

    move-result v12

    if-nez v12, :cond_7

    .line 1032
    move-object v12, v7

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->getWindingRule()I

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    :goto_2
    move v9, v12

    .line 1033
    .local v9, "windEvenOdd":Z
    move-object v12, v7

    move-object v13, v8

    invoke-virtual {v12, v13}, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->currentSegment(Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;)I

    move-result v12

    move v10, v12

    .line 1035
    .local v10, "type":I
    move v12, v10

    if-nez v12, :cond_2

    .line 1036
    new-instance v12, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    move-object v14, v8

    iget v14, v14, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f0:F

    float-to-double v14, v14

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f1:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-direct/range {v13 .. v17}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    move-object v11, v12

    .line 1058
    .local v11, "el":Ljavafx/scene/shape/PathElement;
    :goto_3
    move-object v12, v7

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/PathIteratorHelper;->next()V

    .line 1059
    move-object v12, v4

    move-object v13, v11

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 1060
    goto :goto_1

    .line 1032
    .end local v9    # "windEvenOdd":Z
    .end local v10    # "type":I
    .end local v11    # "el":Ljavafx/scene/shape/PathElement;
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 1037
    .restart local v9    # "windEvenOdd":Z
    .restart local v10    # "type":I
    :cond_2
    move v12, v10

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1038
    new-instance v12, Ljavafx/scene/shape/LineTo;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    move-object v14, v8

    iget v14, v14, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f0:F

    float-to-double v14, v14

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f1:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-direct/range {v13 .. v17}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    move-object v11, v12

    .restart local v11    # "el":Ljavafx/scene/shape/PathElement;
    goto :goto_3

    .line 1039
    .end local v11    # "el":Ljavafx/scene/shape/PathElement;
    :cond_3
    move v12, v10

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 1040
    new-instance v12, Ljavafx/scene/shape/QuadCurveTo;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    move-object v14, v8

    iget v14, v14, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f0:F

    float-to-double v14, v14

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f1:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f2:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f3:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-direct/range {v13 .. v21}, Ljavafx/scene/shape/QuadCurveTo;-><init>(DDDD)V

    move-object v11, v12

    .restart local v11    # "el":Ljavafx/scene/shape/PathElement;
    goto :goto_3

    .line 1045
    .end local v11    # "el":Ljavafx/scene/shape/PathElement;
    :cond_4
    move v12, v10

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    .line 1046
    new-instance v12, Ljavafx/scene/shape/CubicCurveTo;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    move-object v14, v8

    iget v14, v14, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f0:F

    float-to-double v14, v14

    move-object/from16 v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f1:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f2:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f3:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v8

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f4:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v8

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/tk/quantum/PathIteratorHelper$Struct;->f5:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-direct/range {v13 .. v25}, Ljavafx/scene/shape/CubicCurveTo;-><init>(DDDDDD)V

    move-object v11, v12

    .restart local v11    # "el":Ljavafx/scene/shape/PathElement;
    goto/16 :goto_3

    .line 1053
    .end local v11    # "el":Ljavafx/scene/shape/PathElement;
    :cond_5
    move v12, v10

    const/4 v13, 0x4

    if-ne v12, v13, :cond_6

    .line 1054
    new-instance v12, Ljavafx/scene/shape/ClosePath;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    invoke-direct {v13}, Ljavafx/scene/shape/ClosePath;-><init>()V

    move-object v11, v12

    .restart local v11    # "el":Ljavafx/scene/shape/PathElement;
    goto/16 :goto_3

    .line 1056
    .end local v11    # "el":Ljavafx/scene/shape/PathElement;
    :cond_6
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v26, v14

    move-object/from16 v14, v26

    move-object/from16 v15, v26

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid element type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1062
    .end local v9    # "windEvenOdd":Z
    .end local v10    # "type":I
    :cond_7
    move-object v12, v4

    move-object v13, v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljavafx/scene/shape/PathElement;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljavafx/scene/shape/PathElement;

    move-object v2, v12

    goto/16 :goto_0
.end method

.method public createAppletWindow(JLjava/lang/String;)Lcom/sun/javafx/tk/AppletWindow;
    .locals 13

    .prologue
    .line 546
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-wide v2, p1

    .local v2, "parent":J
    move-object/from16 v4, p3

    .local v4, "serverName":Ljava/lang/String;
    new-instance v6, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-wide v8, v2

    move-object v10, v4

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;-><init>(JLjava/lang/String;)V

    move-object v5, v6

    .line 548
    .local v5, "parentWindow":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v6, v5

    invoke-static {v6}, Lcom/sun/javafx/tk/quantum/WindowStage;->setAppletWindow(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;)V

    .line 549
    move-object v6, v5

    move-object v1, v6

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v1
.end method

.method protected createColorPaint(Ljavafx/scene/paint/Color;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 846
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "color":Ljavafx/scene/paint/Color;
    new-instance v2, Lcom/sun/prism/paint/Color;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v1

    .line 847
    invoke-virtual {v4}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v1

    .line 848
    invoke-virtual {v6}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method protected createImagePatternPaint(Ljavafx/scene/paint/ImagePattern;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 904
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/ImagePattern;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/paint/ImagePattern;->getImage()Ljavafx/scene/image/Image;

    move-result-object v2

    if-nez v2, :cond_0

    .line 905
    sget-object v2, Lcom/sun/prism/paint/Color;->TRANSPARENT:Lcom/sun/prism/paint/Color;

    move-object v0, v2

    .line 913
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :goto_0
    return-object v0

    .line 907
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    new-instance v2, Lcom/sun/prism/paint/ImagePattern;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/ImagePattern;->getImage()Ljavafx/scene/image/Image;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/prism/Image;

    move-object v5, v1

    .line 908
    invoke-virtual {v5}, Ljavafx/scene/paint/ImagePattern;->getX()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v1

    .line 909
    invoke-virtual {v6}, Ljavafx/scene/paint/ImagePattern;->getY()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v1

    .line 910
    invoke-virtual {v7}, Ljavafx/scene/paint/ImagePattern;->getWidth()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v1

    .line 911
    invoke-virtual {v8}, Ljavafx/scene/paint/ImagePattern;->getHeight()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v1

    .line 912
    invoke-virtual {v9}, Ljavafx/scene/paint/ImagePattern;->isProportional()Z

    move-result v9

    .line 913
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v10

    move-object v11, v1

    invoke-interface {v10, v11}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->isMutable(Ljavafx/scene/paint/Paint;)Z

    move-result v10

    invoke-direct/range {v3 .. v10}, Lcom/sun/prism/paint/ImagePattern;-><init>(Lcom/sun/prism/Image;FFFFZZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method protected createLinearGradientPaint(Ljavafx/scene/paint/LinearGradient;)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 866
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v1, p1

    .local v1, "paint":Ljavafx/scene/paint/LinearGradient;
    const/4 v5, 0x2

    move v2, v5

    .line 867
    .local v2, "cmi":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/paint/LinearGradient;->getCycleMethod()Ljavafx/scene/paint/CycleMethod;

    move-result-object v5

    move-object v3, v5

    .line 868
    .local v3, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    move-object v5, v3

    sget-object v6, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    if-ne v5, v6, :cond_1

    .line 869
    const/4 v5, 0x0

    move v2, v5

    .line 874
    :cond_0
    :goto_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/paint/LinearGradient;->getStops()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->convertStops(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object v4, v5

    .line 875
    .local v4, "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    new-instance v5, Lcom/sun/prism/paint/LinearGradient;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v1

    .line 876
    invoke-virtual {v7}, Ljavafx/scene/paint/LinearGradient;->getStartX()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/paint/LinearGradient;->getStartY()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/paint/LinearGradient;->getEndX()D

    move-result-wide v9

    double-to-float v9, v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/paint/LinearGradient;->getEndY()D

    move-result-wide v10

    double-to-float v10, v10

    const/4 v11, 0x0

    move-object v12, v1

    .line 877
    invoke-virtual {v12}, Ljavafx/scene/paint/LinearGradient;->isProportional()Z

    move-result v12

    move v13, v2

    move-object v14, v4

    invoke-direct/range {v6 .. v14}, Lcom/sun/prism/paint/LinearGradient;-><init>(FFFFLcom/sun/javafx/geom/transform/BaseTransform;ZILjava/util/List;)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0

    .line 870
    .end local v4    # "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_1
    move-object v5, v3

    sget-object v6, Ljavafx/scene/paint/CycleMethod;->REFLECT:Ljavafx/scene/paint/CycleMethod;

    if-ne v5, v6, :cond_0

    .line 871
    const/4 v5, 0x1

    move v2, v5

    goto :goto_0
.end method

.method public createPerformanceTracker()Lcom/sun/javafx/perf/PerformanceTracker;
    .locals 4

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    new-instance v1, Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/PerformanceTrackerImpl;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public createPlatformImage(II)Lcom/sun/javafx/tk/PlatformImage;
    .locals 7

    .prologue
    .line 1358
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move v4, v1

    move v5, v2

    mul-int/2addr v4, v5

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v3, v4

    .line 1359
    .local v3, "bytebuf":Ljava/nio/ByteBuffer;
    move-object v4, v3

    move v5, v1

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/prism/Image;->fromByteBgraPreData(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method protected createRadialGradientPaint(Ljavafx/scene/paint/RadialGradient;)Ljava/lang/Object;
    .locals 20

    .prologue
    .line 882
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v1, p1

    .local v1, "paint":Ljavafx/scene/paint/RadialGradient;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/paint/RadialGradient;->getCenterX()D

    move-result-wide v8

    double-to-float v8, v8

    move v2, v8

    .line 883
    .local v2, "cx":F
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/paint/RadialGradient;->getCenterY()D

    move-result-wide v8

    double-to-float v8, v8

    move v3, v8

    .line 884
    .local v3, "cy":F
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/paint/RadialGradient;->getFocusAngle()D

    move-result-wide v8

    double-to-float v8, v8

    move v4, v8

    .line 885
    .local v4, "fa":F
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/paint/RadialGradient;->getFocusDistance()D

    move-result-wide v8

    double-to-float v8, v8

    move v5, v8

    .line 887
    .local v5, "fd":F
    const/4 v8, 0x0

    move v6, v8

    .line 888
    .local v6, "cmi":I
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/paint/RadialGradient;->getCycleMethod()Ljavafx/scene/paint/CycleMethod;

    move-result-object v8

    sget-object v9, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    if-ne v8, v9, :cond_0

    .line 889
    const/4 v8, 0x0

    move v6, v8

    .line 897
    :goto_0
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/paint/RadialGradient;->getStops()Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->convertStops(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move-object v7, v8

    .line 898
    .local v7, "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    new-instance v8, Lcom/sun/prism/paint/RadialGradient;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v1

    .line 899
    invoke-virtual {v14}, Ljavafx/scene/paint/RadialGradient;->getRadius()D

    move-result-wide v14

    double-to-float v14, v14

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/paint/RadialGradient;->isProportional()Z

    move-result v16

    move/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v9 .. v18}, Lcom/sun/prism/paint/RadialGradient;-><init>(FFFFFLcom/sun/javafx/geom/transform/BaseTransform;ZILjava/util/List;)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0

    .line 890
    .end local v7    # "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/paint/RadialGradient;->getCycleMethod()Ljavafx/scene/paint/CycleMethod;

    move-result-object v8

    sget-object v9, Ljavafx/scene/paint/CycleMethod;->REFLECT:Ljavafx/scene/paint/CycleMethod;

    if-ne v8, v9, :cond_1

    .line 891
    const/4 v8, 0x1

    move v6, v8

    goto :goto_0

    .line 893
    :cond_1
    const/4 v8, 0x2

    move v6, v8

    goto :goto_0
.end method

.method public createSVGPath2D(Ljavafx/scene/shape/SVGPath;)Lcom/sun/javafx/geom/Path2D;
    .locals 8

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "svgpath":Ljavafx/scene/shape/SVGPath;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/SVGPath;->getFillRule()Ljavafx/scene/shape/FillRule;

    move-result-object v4

    sget-object v5, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 1106
    .local v2, "windingRule":I
    new-instance v4, Lcom/sun/javafx/geom/Path2D;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/Path2D;-><init>(I)V

    move-object v3, v4

    .line 1107
    .local v3, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/SVGPath;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Path2D;->appendSVGPath(Ljava/lang/String;)V

    .line 1108
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0

    .line 1105
    .end local v2    # "windingRule":I
    .end local v3    # "path":Lcom/sun/javafx/geom/Path2D;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public createSVGPathObject(Ljavafx/scene/shape/SVGPath;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1098
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "svgpath":Ljavafx/scene/shape/SVGPath;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/SVGPath;->getFillRule()Ljavafx/scene/shape/FillRule;

    move-result-object v4

    sget-object v5, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 1099
    .local v2, "windingRule":I
    new-instance v4, Lcom/sun/javafx/geom/Path2D;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/Path2D;-><init>(I)V

    move-object v3, v4

    .line 1100
    .local v3, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/SVGPath;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Path2D;->appendSVGPath(Ljava/lang/String;)V

    .line 1101
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0

    .line 1098
    .end local v2    # "windingRule":I
    .end local v3    # "path":Lcom/sun/javafx/geom/Path2D;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public createStrokedShape(Lcom/sun/javafx/geom/Shape;Ljavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F[FF)Lcom/sun/javafx/geom/Shape;
    .locals 19

    .prologue
    .line 998
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v1, p1

    .local v1, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v2, p2

    .local v2, "pgtype":Ljavafx/scene/shape/StrokeType;
    move-wide/from16 v3, p3

    .local v3, "strokewidth":D
    move-object/from16 v5, p5

    .local v5, "pgcap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v6, p6

    .local v6, "pgjoin":Ljavafx/scene/shape/StrokeLineJoin;
    move/from16 v7, p7

    .local v7, "miterLimit":F
    move-object/from16 v8, p8

    .local v8, "dashArray":[F
    move/from16 v9, p9

    .local v9, "dashOffset":F
    move-object v10, v0

    move-object v11, v2

    move-wide v12, v3

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move-object/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->initStroke(Ljavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F[FF)V

    .line 1000
    sget-object v10, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->tmpStroke:Lcom/sun/prism/BasicStroke;

    move-object v11, v1

    invoke-virtual {v10, v11}, Lcom/sun/prism/BasicStroke;->createStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public createTKEmbeddedStage(Lcom/sun/javafx/embed/HostInterface;Ljava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;
    .locals 8

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "host":Lcom/sun/javafx/embed/HostInterface;
    move-object v2, p2

    .local v2, "acc":Ljava/security/AccessControlContext;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->assertToolkitRunning()V

    .line 638
    new-instance v4, Lcom/sun/javafx/tk/quantum/EmbeddedStage;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;-><init>(Lcom/sun/javafx/embed/HostInterface;)V

    move-object v3, v4

    .line 639
    .local v3, "stage":Lcom/sun/javafx/tk/quantum/EmbeddedStage;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedStage;->setSecurityContext(Ljava/security/AccessControlContext;)V

    .line 640
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public createTKPopupStage(Ljavafx/stage/Window;Ljavafx/stage/StageStyle;Lcom/sun/javafx/tk/TKStage;Ljava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;
    .locals 15

    .prologue
    .line 626
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v1, p1

    .local v1, "peerWindow":Ljavafx/stage/Window;
    move-object/from16 v2, p2

    .local v2, "popupStyle":Ljavafx/stage/StageStyle;
    move-object/from16 v3, p3

    .local v3, "owner":Lcom/sun/javafx/tk/TKStage;
    move-object/from16 v4, p4

    .local v4, "acc":Ljava/security/AccessControlContext;
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->assertToolkitRunning()V

    .line 627
    move-object v7, v3

    instance-of v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v7, :cond_0

    move-object v7, v3

    check-cast v7, Lcom/sun/javafx/tk/quantum/WindowStage;

    .line 628
    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->isSecurityDialog()Z

    move-result v7

    :goto_0
    move v5, v7

    .line 629
    .local v5, "securityDialog":Z
    new-instance v7, Lcom/sun/javafx/tk/quantum/WindowStage;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move v10, v5

    move-object v11, v2

    const/4 v12, 0x0

    move-object v13, v3

    invoke-direct/range {v8 .. v13}, Lcom/sun/javafx/tk/quantum/WindowStage;-><init>(Ljavafx/stage/Window;ZLjavafx/stage/StageStyle;Ljavafx/stage/Modality;Lcom/sun/javafx/tk/TKStage;)V

    move-object v6, v7

    .line 630
    .local v6, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/WindowStage;->setSecurityContext(Ljava/security/AccessControlContext;)V

    .line 631
    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->setIsPopup()V

    .line 632
    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->systemMenu:Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/WindowStage;->init(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;)Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v7

    .line 633
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0

    .line 628
    .end local v5    # "securityDialog":Z
    .end local v6    # "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public createTKStage(Ljavafx/stage/Window;ZLjavafx/stage/StageStyle;ZLjavafx/stage/Modality;Lcom/sun/javafx/tk/TKStage;ZLjava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;
    .locals 18

    .prologue
    .line 562
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v1, p1

    .local v1, "peerWindow":Ljavafx/stage/Window;
    move/from16 v2, p2

    .local v2, "securityDialog":Z
    move-object/from16 v3, p3

    .local v3, "stageStyle":Ljavafx/stage/StageStyle;
    move/from16 v4, p4

    .local v4, "primary":Z
    move-object/from16 v5, p5

    .local v5, "modality":Ljavafx/stage/Modality;
    move-object/from16 v6, p6

    .local v6, "owner":Lcom/sun/javafx/tk/TKStage;
    move/from16 v7, p7

    .local v7, "rtl":Z
    move-object/from16 v8, p8

    .local v8, "acc":Ljava/security/AccessControlContext;
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->assertToolkitRunning()V

    .line 563
    new-instance v10, Lcom/sun/javafx/tk/quantum/WindowStage;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v1

    move v13, v2

    move-object v14, v3

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lcom/sun/javafx/tk/quantum/WindowStage;-><init>(Ljavafx/stage/Window;ZLjavafx/stage/StageStyle;Ljavafx/stage/Modality;Lcom/sun/javafx/tk/TKStage;)V

    move-object v9, v10

    .line 564
    .local v9, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v10, v9

    move-object v11, v8

    invoke-virtual {v10, v11}, Lcom/sun/javafx/tk/quantum/WindowStage;->setSecurityContext(Ljava/security/AccessControlContext;)V

    .line 565
    move v10, v4

    if-eqz v10, :cond_0

    .line 566
    move-object v10, v9

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/WindowStage;->setIsPrimary()V

    .line 568
    :cond_0
    move-object v10, v9

    move v11, v7

    invoke-virtual {v10, v11}, Lcom/sun/javafx/tk/quantum/WindowStage;->setRTL(Z)V

    .line 569
    move-object v10, v9

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->systemMenu:Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

    invoke-virtual {v10, v11}, Lcom/sun/javafx/tk/quantum/WindowStage;->init(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;)Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v10

    .line 570
    move-object v10, v9

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public defer(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 755
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->toolkitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 758
    :goto_0
    return-void

    .line 757
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    .line 758
    goto :goto_0
.end method

.method public dispose()V
    .locals 5

    .prologue
    .line 787
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->toolkitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 788
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseTimer:Lcom/sun/glass/ui/Timer;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Timer;->stop()V

    .line 789
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->renderer:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->stopRenderer()V

    .line 792
    move-object v2, v0

    :try_start_0
    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 798
    .line 800
    :cond_0
    :goto_0
    return-void

    .line 796
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public enableDrop(Lcom/sun/javafx/tk/TKScene;Lcom/sun/javafx/tk/TKDropTargetListener;)V
    .locals 7

    .prologue
    .line 1247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/tk/TKScene;
    move-object v2, p2

    .local v2, "l":Lcom/sun/javafx/tk/TKDropTargetListener;
    sget-boolean v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/tk/quantum/GlassScene;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1249
    :cond_0
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/tk/quantum/GlassScene;

    move-object v3, v4

    .line 1250
    .local v3, "view":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/quantum/GlassScene;->setTKDropTargetListener(Lcom/sun/javafx/tk/TKDropTargetListener;)V

    .line 1251
    return-void
.end method

.method public enterNestedEventLoop(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->checkFxUserThread()V

    .line 580
    move-object v4, v1

    if-nez v4, :cond_0

    .line 581
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 584
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->canStartNestedEventLoop()Z

    move-result v4

    if-nez v4, :cond_1

    .line 585
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Cannot enter nested loop during animation or layout processing"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 588
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->eventLoopMap:Ljava/util/HashMap;

    if-nez v4, :cond_2

    .line 589
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->eventLoopMap:Ljava/util/HashMap;

    .line 591
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->eventLoopMap:Ljava/util/HashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 592
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key already associated with a running event loop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 595
    :cond_3
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/glass/ui/Application;->createEventLoop()Lcom/sun/glass/ui/EventLoop;

    move-result-object v4

    move-object v2, v4

    .line 596
    .local v2, "eventLoop":Lcom/sun/glass/ui/EventLoop;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->eventLoopMap:Ljava/util/HashMap;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 598
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/EventLoop;->enter()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 600
    .local v3, "ret":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->isNestedLoopRunning()Z

    move-result v4

    if-nez v4, :cond_4

    .line 601
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->notifyLastNestedLoopExited()V

    .line 604
    :cond_4
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->checkFxUserThread()V

    .line 765
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseTimer:Lcom/sun/glass/ui/Timer;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Timer;->stop()V

    .line 769
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/PaintCollector;->waitForRenderingToComplete()V

    .line 771
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->notifyShutdownHooks()V

    .line 773
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$7;->lambdaFactory$()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    .line 781
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->dispose()V

    .line 783
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/tk/Toolkit;->exit()V

    .line 784
    return-void
.end method

.method public exitNestedEventLoop(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "rval":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->checkFxUserThread()V

    .line 610
    move-object v4, v1

    if-nez v4, :cond_0

    .line 611
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 613
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->eventLoopMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->eventLoopMap:Ljava/util/HashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 614
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key not associated with a running event loop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 617
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->eventLoopMap:Ljava/util/HashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/glass/ui/EventLoop;

    move-object v3, v4

    .line 618
    .local v3, "eventLoop":Lcom/sun/glass/ui/EventLoop;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->eventLoopMap:Ljava/util/HashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 619
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/EventLoop;->leave(Ljava/lang/Object;)V

    .line 620
    return-void
.end method

.method public getBestCursorSize(II)Ljavafx/geometry/Dimension2D;
    .locals 5

    .prologue
    .line 1004
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move v1, p1

    .local v1, "preferredWidth":I
    move v2, p2

    .local v2, "preferredHeight":I
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/CursorUtils;->getBestCursorSize(II)Ljavafx/geometry/Dimension2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getContextMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->contextMap:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getFilterContext(Ljava/lang/Object;)Lcom/sun/scenario/effect/FilterContext;
    .locals 4

    .prologue
    .line 1078
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "config":Ljava/lang/Object;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    instance-of v3, v3, Lcom/sun/glass/ui/Screen;

    if-nez v3, :cond_1

    .line 1079
    :cond_0
    invoke-static {}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getDefaultInstance()Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-result-object v3

    move-object v0, v3

    .line 1082
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :goto_0
    return-object v0

    .line 1081
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/glass/ui/Screen;

    move-object v2, v3

    .line 1082
    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move-object v3, v2

    invoke-static {v3}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getFontLoader()Lcom/sun/javafx/tk/FontLoader;
    .locals 2

    .prologue
    .line 1090
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/javafx/font/PrismFontLoader;->getInstance()Lcom/sun/javafx/font/PrismFontLoader;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getKeyCodeForChar(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 1012
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "character":Ljava/lang/String;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    const/4 v3, 0x0

    .line 1014
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1013
    invoke-static {v2}, Lcom/sun/glass/events/KeyEvent;->getKeyCodeForChar(C)I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;
    .locals 2

    .prologue
    .line 1086
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/javafx/tk/quantum/MasterTimer;->getInstance()Lcom/sun/javafx/tk/quantum/MasterTimer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getMaxRenderScale()F
    .locals 6

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->_maxPixelScale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 727
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->getScreens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 728
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->_maxPixelScale:F

    move-object v5, v2

    check-cast v5, Lcom/sun/glass/ui/Screen;

    invoke-virtual {v5}, Lcom/sun/glass/ui/Screen;->getRenderScale()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->_maxPixelScale:F

    .line 729
    goto :goto_0

    .line 731
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->_maxPixelScale:F

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0
.end method

.method public getMaximumCursorColors()I
    .locals 2

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    const/4 v1, 0x2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0
.end method

.method public getMultiClickMaxX()I
    .locals 2

    .prologue
    .line 1592
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/glass/ui/View;->getMultiClickMaxX()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0
.end method

.method public getMultiClickMaxY()I
    .locals 2

    .prologue
    .line 1597
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/glass/ui/View;->getMultiClickMaxY()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0
.end method

.method public getMultiClickTime()J
    .locals 3

    .prologue
    .line 1587
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/glass/ui/View;->getMultiClickTime()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-wide v0
.end method

.method public getNamedClipboard(Ljava/lang/String;)Lcom/sun/javafx/tk/TKClipboard;
    .locals 3

    .prologue
    .line 1226
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getPerformanceTracker()Lcom/sun/javafx/perf/PerformanceTracker;
    .locals 2

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->perfTracker:Lcom/sun/javafx/perf/PerformanceTracker;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getPrimaryScreen()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 703
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getMainScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getRefreshRate()I
    .locals 2

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    sget-object v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseHZ:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 821
    const/16 v1, 0x3c

    move v0, v1

    .line 823
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    sget-object v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseHZ:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public getScreenConfigurationAccessor()Lcom/sun/javafx/tk/ScreenConfigurationAccessor;
    .locals 2

    .prologue
    .line 712
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    sget-object v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->screenAccessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getScreens()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getScreens()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getSystemClipboard()Lcom/sun/javafx/tk/TKClipboard;
    .locals 6

    .prologue
    .line 1214
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->clipboard:Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    if-nez v1, :cond_0

    .line 1215
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/ClipboardAssistance;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "SYSTEM"

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/ClipboardAssistance;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->getClipboardInstance(Lcom/sun/glass/ui/ClipboardAssistance;)Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->clipboard:Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    .line 1217
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->clipboard:Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getSystemMenu()Lcom/sun/javafx/tk/TKSystemMenu;
    .locals 2

    .prologue
    .line 1222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->systemMenu:Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getTextLayoutFactory()Lcom/sun/javafx/scene/text/TextLayoutFactory;
    .locals 2

    .prologue
    .line 1094
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/javafx/text/PrismTextLayoutFactory;->getFactory()Lcom/sun/javafx/text/PrismTextLayoutFactory;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public getThemeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1602
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/Application;->getHighContrastTheme()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method hasNativeSystemVsync()Z
    .locals 2

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->nativeSystemVsync:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0
.end method

.method public imageContains(Ljava/lang/Object;FF)Z
    .locals 12

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "image":Ljava/lang/Object;
    move v2, p2

    .local v2, "x":F
    move v3, p3

    .local v3, "y":F
    move-object v9, v1

    if-nez v9, :cond_0

    .line 1113
    const/4 v9, 0x0

    move v0, v9

    .line 1149
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :goto_0
    return v0

    .line 1116
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    move-object v9, v1

    check-cast v9, Lcom/sun/prism/Image;

    move-object v4, v9

    .line 1117
    .local v4, "pImage":Lcom/sun/prism/Image;
    move v9, v2

    float-to-int v9, v9

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getMinX()I

    move-result v10

    add-int/2addr v9, v10

    move v5, v9

    .line 1118
    .local v5, "intX":I
    move v9, v3

    float-to-int v9, v9

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getMinY()I

    move-result v10

    add-int/2addr v9, v10

    move v6, v9

    .line 1120
    .local v6, "intY":I
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/prism/Image;->isOpaque()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1121
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 1124
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v9

    sget-object v10, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    if-ne v9, v10, :cond_4

    .line 1125
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/IntBuffer;

    move-object v7, v9

    .line 1126
    .local v7, "ib":Ljava/nio/IntBuffer;
    move v9, v5

    move v10, v6

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/prism/Image;->getRowLength()I

    move-result v11

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    move v8, v9

    .line 1127
    .local v8, "index":I
    move v9, v8

    move-object v10, v7

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->limit()I

    move-result v10

    if-lt v9, v10, :cond_2

    .line 1128
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 1130
    :cond_2
    move-object v9, v7

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    move v0, v9

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 1132
    .end local v7    # "ib":Ljava/nio/IntBuffer;
    .end local v8    # "index":I
    :cond_4
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v9

    sget-object v10, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    if-ne v9, v10, :cond_7

    .line 1133
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    move-object v7, v9

    .line 1134
    .local v7, "bb":Ljava/nio/ByteBuffer;
    move v9, v5

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getBytesPerPixelUnit()I

    move-result v10

    mul-int/2addr v9, v10

    move v10, v6

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/prism/Image;->getScanlineStride()I

    move-result v11

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    move v8, v9

    .line 1135
    .restart local v8    # "index":I
    move v9, v8

    move-object v10, v7

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    if-lt v9, v10, :cond_5

    .line 1136
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 1138
    :cond_5
    move-object v9, v7

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    move v0, v9

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 1140
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    .end local v8    # "index":I
    :cond_7
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v9

    sget-object v10, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    if-ne v9, v10, :cond_a

    .line 1141
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    move-object v7, v9

    .line 1142
    .restart local v7    # "bb":Ljava/nio/ByteBuffer;
    move v9, v5

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getBytesPerPixelUnit()I

    move-result v10

    mul-int/2addr v9, v10

    move v10, v6

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/prism/Image;->getScanlineStride()I

    move-result v11

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    move v8, v9

    .line 1143
    .restart local v8    # "index":I
    move v9, v8

    move-object v10, v7

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    if-lt v9, v10, :cond_8

    .line 1144
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 1146
    :cond_8
    move-object v9, v7

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_3
    move v0, v9

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 1149
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    .end local v8    # "index":I
    :cond_a
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0
.end method

.method public init()Z
    .locals 7

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->getInstance()Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->renderer:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    .line 224
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/PaintCollector;->createInstance(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->collector:Lcom/sun/javafx/tk/quantum/PaintCollector;

    .line 225
    move-object v1, v0

    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pipeline:Lcom/sun/prism/GraphicsPipeline;

    .line 230
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "Glass/Prism Shutdown Hook"

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$1;-><init>(Lcom/sun/javafx/tk/quantum/QuantumToolkit;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->shutdownHook:Ljava/lang/Thread;

    .line 235
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 239
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0
.end method

.method public installInputMethodRequests(Lcom/sun/javafx/tk/TKScene;Ljavafx/scene/input/InputMethodRequests;)V
    .locals 7

    .prologue
    .line 1264
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/TKScene;
    move-object v2, p2

    .local v2, "requests":Ljavafx/scene/input/InputMethodRequests;
    sget-boolean v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/tk/quantum/GlassScene;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1266
    :cond_0
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/tk/quantum/GlassScene;

    move-object v3, v4

    .line 1267
    .local v3, "view":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/quantum/GlassScene;->setInputMethodRequests(Ljavafx/scene/input/InputMethodRequests;)V

    .line 1268
    return-void
.end method

.method public isBackwardTraversalKey(Ljavafx/scene/input/KeyEvent;)Z
    .locals 4

    .prologue
    .line 809
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 810
    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 811
    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isForwardTraversalKey(Ljavafx/scene/input/KeyEvent;)Z
    .locals 4

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 804
    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 805
    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isShiftDown()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isMSAASupported()Z
    .locals 2

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/prism/GraphicsPipeline;->isMSAASupported()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0
.end method

.method public isNestedLoopRunning()Z
    .locals 2

    .prologue
    .line 1154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Lcom/sun/glass/ui/Application;->isNestedLoopRunning()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0
.end method

.method public isSupported(Ljavafx/application/ConditionalFeature;)Z
    .locals 4

    .prologue
    .line 1159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "feature":Ljavafx/application/ConditionalFeature;
    sget-object v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit$6;->$SwitchMap$javafx$application$ConditionalFeature:[I

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1183
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :goto_0
    return v0

    .line 1161
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :pswitch_0
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/prism/GraphicsPipeline;->is3DSupported()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1163
    :pswitch_1
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/prism/GraphicsPipeline;->isEffectSupported()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1165
    :pswitch_2
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 1167
    :pswitch_3
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->supportsInputMethods()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1169
    :pswitch_4
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->supportsTransparentWindows()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1171
    :pswitch_5
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->supportsUnifiedWindows()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1173
    :pswitch_6
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->hasTwoLevelFocus()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1175
    :pswitch_7
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->hasVirtualKeyboard()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1177
    :pswitch_8
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->hasTouch()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1179
    :pswitch_9
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->hasMultiTouch()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1181
    :pswitch_a
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->hasPointer()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 1159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method isVsyncEnabled()Z
    .locals 2

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->isVsyncEnabled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pipeline:Lcom/sun/prism/GraphicsPipeline;

    .line 421
    invoke-virtual {v1}, Lcom/sun/prism/GraphicsPipeline;->isVsyncSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadImage(Ljava/io/InputStream;IIZZ)Lcom/sun/javafx/tk/ImageLoader;
    .locals 14

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "stream":Ljava/io/InputStream;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move/from16 v4, p4

    .local v4, "preserveRatio":Z
    move/from16 v5, p5

    .local v5, "smooth":Z
    new-instance v6, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;-><init>(Ljava/io/InputStream;IIZZ)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public loadImage(Ljava/lang/String;IIZZ)Lcom/sun/javafx/tk/ImageLoader;
    .locals 15

    .prologue
    .line 735
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v1, p1

    .local v1, "url":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move/from16 v4, p4

    .local v4, "preserveRatio":Z
    move/from16 v5, p5

    .local v5, "smooth":Z
    new-instance v6, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->getMaxRenderScale()F

    move-result v12

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2;-><init>(Ljava/lang/String;IIZFZ)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public loadImageAsync(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;IIZZ)Lcom/sun/javafx/runtime/async/AbstractRemoteResource;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/runtime/async/AsyncOperationListener;",
            "Ljava/lang/String;",
            "IIZZ)",
            "Lcom/sun/javafx/runtime/async/AbstractRemoteResource",
            "<+",
            "Lcom/sun/javafx/tk/ImageLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v1, p1

    .local v1, "listener":Lcom/sun/javafx/runtime/async/AsyncOperationListener;
    move-object/from16 v2, p2

    .local v2, "url":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move/from16 v5, p5

    .local v5, "preserveRatio":Z
    move/from16 v6, p6

    .local v6, "smooth":Z
    new-instance v7, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;-><init>(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;IIZZ)V

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public bridge synthetic loadImageAsync(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;IIZZ)Lcom/sun/javafx/runtime/async/AsyncOperation;
    .locals 14

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->loadImageAsync(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;IIZZ)Lcom/sun/javafx/runtime/async/AbstractRemoteResource;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method public loadPlatformImage(Ljava/lang/Object;)Lcom/sun/javafx/tk/ImageLoader;
    .locals 6

    .prologue
    .line 1345
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "platformImage":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;

    if-eqz v2, :cond_0

    .line 1346
    move-object v2, v1

    check-cast v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;

    move-object v0, v2

    .line 1350
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :goto_0
    return-object v0

    .line 1349
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/prism/Image;

    if-eqz v2, :cond_1

    .line 1350
    new-instance v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Lcom/sun/prism/Image;

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$QuantumImage;-><init>(Lcom/sun/prism/Image;)V

    move-object v0, v2

    goto :goto_0

    .line 1353
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "unsupported class for loadPlatformImage"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public pauseRenderer()V
    .locals 2

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/glass/ui/Application;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 494
    invoke-static {}, Lcom/sun/javafx/tk/quantum/PaintCollector;->getInstance()Lcom/sun/javafx/tk/quantum/PaintCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/PaintCollector;->waitForRenderingToComplete()V

    .line 495
    return-void
.end method

.method postPulse()V
    .locals 7

    .prologue
    .line 458
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->toolkitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->animationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 459
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->nextPulseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->collector:Lcom/sun/javafx/tk/quantum/PaintCollector;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/PaintCollector;->hasDirty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v2, v1

    .line 460
    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->setPulseRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 462
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/sun/glass/ui/Application;->invokeLater(Ljava/lang/Runnable;)V

    .line 464
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->debug:Z

    if-eqz v2, :cond_1

    .line 465
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QT.postPulse@("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 470
    :cond_1
    :goto_0
    return-void

    .line 467
    :cond_2
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->debug:Z

    if-eqz v2, :cond_1

    .line 468
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QT.postPulse#("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") DROP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected pulse()V
    .locals 3

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulse(Z)V

    .line 504
    return-void
.end method

.method pulse(Z)V
    .locals 7

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move v1, p1

    .local v1, "collect":Z
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    :try_start_0
    iget v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    .line 509
    sget-boolean v3, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v3, :cond_0

    .line 510
    invoke-static {}, Lcom/sun/javafx/logging/PulseLogger;->pulseStart()V

    .line 512
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 528
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    .line 529
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->endPulseRunning()V

    .line 530
    sget-boolean v3, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v3, :cond_1

    .line 531
    invoke-static {}, Lcom/sun/javafx/logging/PulseLogger;->pulseEnd()V

    .line 513
    .line 534
    :cond_1
    :goto_0
    return-void

    .line 515
    :cond_2
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->toolkitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 528
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    .line 529
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->endPulseRunning()V

    .line 530
    sget-boolean v3, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v3, :cond_3

    .line 531
    invoke-static {}, Lcom/sun/javafx/logging/PulseLogger;->pulseEnd()V

    .line 516
    :cond_3
    goto :goto_0

    .line 518
    :cond_4
    move-object v3, v0

    :try_start_2
    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->nextPulseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 519
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->animationRunnable:Lcom/sun/scenario/DelayedRunnable;

    if-eqz v3, :cond_7

    .line 520
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->animationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 521
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->animationRunnable:Lcom/sun/scenario/DelayedRunnable;

    invoke-interface {v3}, Lcom/sun/scenario/DelayedRunnable;->run()V

    .line 525
    :goto_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->firePulse()V

    .line 526
    move v3, v1

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->collector:Lcom/sun/javafx/tk/quantum/PaintCollector;

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/PaintCollector;->renderAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    :cond_5
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    .line 529
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->endPulseRunning()V

    .line 530
    sget-boolean v3, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v3, :cond_6

    .line 531
    invoke-static {}, Lcom/sun/javafx/logging/PulseLogger;->pulseEnd()V

    .line 534
    :cond_6
    goto :goto_0

    .line 523
    :cond_7
    move-object v3, v0

    :try_start_3
    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->animationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 528
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->inPulse:I

    .line 529
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->endPulseRunning()V

    .line 530
    sget-boolean v3, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v3, :cond_8

    .line 531
    invoke-static {}, Lcom/sun/javafx/logging/PulseLogger;->pulseEnd()V

    :cond_8
    move-object v3, v2

    throw v3
.end method

.method public registerDragGestureListener(Lcom/sun/javafx/tk/TKScene;Ljava/util/Set;Lcom/sun/javafx/tk/TKDragGestureListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/tk/TKScene;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;",
            "Lcom/sun/javafx/tk/TKDragGestureListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1255
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "s":Lcom/sun/javafx/tk/TKScene;
    move-object v2, p2

    .local v2, "tm":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    move-object v3, p3

    .local v3, "l":Lcom/sun/javafx/tk/TKDragGestureListener;
    sget-boolean v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move-object v5, v1

    instance-of v5, v5, Lcom/sun/javafx/tk/quantum/GlassScene;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1257
    :cond_0
    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/tk/quantum/GlassScene;

    move-object v4, v5

    .line 1258
    .local v4, "view":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/quantum/GlassScene;->setTKDragGestureListener(Lcom/sun/javafx/tk/TKDragGestureListener;)V

    .line 1259
    return-void
.end method

.method public renderToImage(Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;)Ljava/lang/Object;
    .locals 16

    .prologue
    .line 1364
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v1, p1

    .local v1, "p":Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->platformImage:Ljava/lang/Object;

    move-object v2, v8

    .line 1365
    .local v2, "saveImage":Ljava/lang/Object;
    move-object v8, v1

    move-object v3, v8

    .line 1366
    .local v3, "params":Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->platformPaint:Ljava/lang/Object;

    instance-of v8, v8, Lcom/sun/prism/paint/Paint;

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->platformPaint:Ljava/lang/Object;

    check-cast v8, Lcom/sun/prism/paint/Paint;

    :goto_0
    move-object v4, v8

    .line 1369
    .local v4, "currentPaint":Lcom/sun/prism/paint/Paint;
    new-instance v8, Lcom/sun/javafx/tk/RenderJob;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    new-instance v10, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v4

    move-object v14, v3

    invoke-direct {v11, v12, v13, v14}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$5;-><init>(Lcom/sun/javafx/tk/quantum/QuantumToolkit;Lcom/sun/prism/paint/Paint;Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;)V

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/RenderJob;-><init>(Ljava/lang/Runnable;)V

    move-object v5, v8

    .line 1476
    .local v5, "re":Lcom/sun/javafx/tk/RenderJob;
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v6, v8

    .line 1477
    .local v6, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object v8, v5

    move-object v9, v6

    invoke-static {v9}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$9;->lambdaFactory$(Ljava/util/concurrent/CountDownLatch;)Lcom/sun/javafx/tk/CompletionListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/tk/RenderJob;->setCompletionListener(Lcom/sun/javafx/tk/CompletionListener;)V

    .line 1478
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->addRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;

    move-result-object v8

    .line 1482
    :goto_1
    move-object v8, v6

    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    .line 1489
    move-object v8, v3

    iget-object v8, v8, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->platformImage:Ljava/lang/Object;

    move-object v7, v8

    .line 1490
    .local v7, "image":Ljava/lang/Object;
    move-object v8, v3

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->platformImage:Ljava/lang/Object;

    .line 1492
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0

    .line 1366
    .end local v4    # "currentPaint":Lcom/sun/prism/paint/Paint;
    .end local v5    # "re":Lcom/sun/javafx/tk/RenderJob;
    .end local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v7    # "image":Ljava/lang/Object;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 1484
    .restart local v4    # "currentPaint":Lcom/sun/prism/paint/Paint;
    .restart local v5    # "re":Lcom/sun/javafx/tk/RenderJob;
    .restart local v6    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 1485
    .local v7, "ex":Ljava/lang/InterruptedException;
    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1487
    goto :goto_1
.end method

.method public requestNextPulse()V
    .locals 3

    .prologue
    .line 836
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->nextPulseRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 837
    return-void
.end method

.method public resumeRenderer()V
    .locals 2

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/glass/ui/Application;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method runToolkit()V
    .locals 11

    .prologue
    .line 305
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v2, v5

    .line 307
    .local v2, "user":Ljava/lang/Thread;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->toolkitRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 308
    move-object v5, v2

    const-string v6, "JavaFX Application Thread"

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 310
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->ccl:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 311
    move-object v5, v2

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->setFxUserThread(Ljava/lang/Thread;)V

    .line 314
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->assignScreensAdapters()V

    .line 319
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->renderer:Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->createResourceFactory()V

    .line 321
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)Ljava/lang/Runnable;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseRunnable:Ljava/lang/Runnable;

    .line 322
    move-object v5, v1

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)Ljava/lang/Runnable;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->timerRunnable:Ljava/lang/Runnable;

    .line 329
    move-object v5, v1

    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/Application;->createTimer(Ljava/lang/Runnable;)Lcom/sun/glass/ui/Timer;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseTimer:Lcom/sun/glass/ui/Timer;

    .line 331
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v5

    new-instance v6, Lcom/sun/javafx/tk/quantum/QuantumToolkit$2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$2;-><init>(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)V

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/Application;->setEventHandler(Lcom/sun/glass/ui/Application$EventHandler;)V

    .line 342
    :cond_0
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->initSceneGraph()V

    .line 343
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->launchLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 345
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->userRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lcom/sun/glass/ui/Application;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 347
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/scenario/animation/AbstractMasterTimer;->isFullspeed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 353
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseTimer:Lcom/sun/glass/ui/Timer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/Timer;->start(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :goto_0
    sget-boolean v5, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v5, :cond_1

    .line 370
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " vsync: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sun/prism/impl/PrismSettings;->isVsyncEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vpipe: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pipeline:Lcom/sun/prism/GraphicsPipeline;

    .line 371
    invoke-virtual {v7}, Lcom/sun/prism/GraphicsPipeline;->isVsyncSupported()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_1
    const-string v5, "Toolkit.startup - finished"

    invoke-static {v5}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 374
    .line 375
    :goto_1
    return-void

    .line 355
    :cond_2
    move-object v5, v1

    :try_start_1
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getVideoRefreshPeriod()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->nativeSystemVsync:Z

    .line 356
    move-object v5, v1

    iget-boolean v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->nativeSystemVsync:Z

    if-eqz v5, :cond_4

    .line 358
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseTimer:Lcom/sun/glass/ui/Timer;

    invoke-virtual {v5}, Lcom/sun/glass/ui/Timer;->start()V

    goto :goto_0

    .line 355
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 363
    :cond_4
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pulseTimer:Lcom/sun/glass/ui/Timer;

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->PULSE_INTERVAL:I

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/Timer;->start(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 367
    .local v3, "th":Ljava/lang/Throwable;
    move-object v5, v3

    :try_start_2
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    sget-boolean v5, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v5, :cond_5

    .line 370
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " vsync: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sun/prism/impl/PrismSettings;->isVsyncEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vpipe: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pipeline:Lcom/sun/prism/GraphicsPipeline;

    .line 371
    invoke-virtual {v7}, Lcom/sun/prism/GraphicsPipeline;->isVsyncSupported()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_5
    const-string v5, "Toolkit.startup - finished"

    invoke-static {v5}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 374
    goto :goto_1

    .line 369
    .end local v3    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    move-object v4, v5

    sget-boolean v5, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v5, :cond_6

    .line 370
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " vsync: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sun/prism/impl/PrismSettings;->isVsyncEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vpipe: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->pipeline:Lcom/sun/prism/GraphicsPipeline;

    .line 371
    invoke-virtual {v7}, Lcom/sun/prism/GraphicsPipeline;->isVsyncSupported()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_6
    const-string v5, "Toolkit.startup - finished"

    invoke-static {v5}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    move-object v5, v4

    throw v5
.end method

.method public setAnimationRunnable(Lcom/sun/scenario/DelayedRunnable;)V
    .locals 4

    .prologue
    .line 829
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "animationRunnable":Lcom/sun/scenario/DelayedRunnable;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 830
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->animationRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 832
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->animationRunnable:Lcom/sun/scenario/DelayedRunnable;

    .line 833
    return-void
.end method

.method public setScreenConfigurationListener(Lcom/sun/javafx/tk/TKScreenConfigurationListener;)Lcom/sun/javafx/tk/ScreenConfigurationAccessor;
    .locals 7

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKScreenConfigurationListener;
    new-instance v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$4;-><init>(Lcom/sun/javafx/tk/quantum/QuantumToolkit;Lcom/sun/javafx/tk/TKScreenConfigurationListener;)V

    invoke-static {v2}, Lcom/sun/glass/ui/Screen;->setEventHandler(Lcom/sun/glass/ui/Screen$EventHandler;)V

    .line 687
    sget-object v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->screenAccessor:Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method shouldWaitForRenderingToComplete()Z
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    sget-boolean v1, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->multithreaded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showDirectoryChooser(Lcom/sun/javafx/tk/TKStage;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 10

    .prologue
    .line 1535
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "ownerWindow":Lcom/sun/javafx/tk/TKStage;
    move-object v2, p2

    .local v2, "title":Ljava/lang/String;
    move-object v3, p3

    .local v3, "initialDirectory":Ljava/io/File;
    const/4 v7, 0x0

    move-object v4, v7

    .line 1540
    .local v4, "blockedStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v7, v0

    move-object v8, v1

    :try_start_0
    invoke-direct {v7, v8}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->blockOwnerStage(Lcom/sun/javafx/tk/TKStage;)Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v7

    move-object v4, v7

    .line 1542
    move-object v7, v1

    instance-of v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v7, :cond_1

    move-object v7, v1

    check-cast v7, Lcom/sun/javafx/tk/quantum/WindowStage;

    .line 1544
    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->getPlatformWindow()Lcom/sun/glass/ui/Window;

    move-result-object v7

    :goto_0
    move-object v8, v3

    move-object v9, v2

    .line 1542
    invoke-static {v7, v8, v9}, Lcom/sun/glass/ui/CommonDialogs;->showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v5, v7

    .line 1548
    move-object v7, v4

    if-eqz v7, :cond_0

    .line 1549
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/WindowStage;->setEnabled(Z)V

    :cond_0
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0

    .line 1544
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1548
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    if-eqz v7, :cond_2

    .line 1549
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/WindowStage;->setEnabled(Z)V

    :cond_2
    move-object v7, v6

    throw v7
.end method

.method public showFileChooser(Lcom/sun/javafx/tk/TKStage;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/sun/javafx/tk/FileChooserType;Ljava/util/List;Ljavafx/stage/FileChooser$ExtensionFilter;)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/tk/TKStage;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/tk/FileChooserType;",
            "Ljava/util/List",
            "<",
            "Ljavafx/stage/FileChooser$ExtensionFilter;",
            ">;",
            "Ljavafx/stage/FileChooser$ExtensionFilter;",
            ")",
            "Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;"
        }
    .end annotation

    .prologue
    .line 1504
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v3, p1

    .local v3, "ownerWindow":Lcom/sun/javafx/tk/TKStage;
    move-object/from16 v4, p2

    .local v4, "title":Ljava/lang/String;
    move-object/from16 v5, p3

    .local v5, "initialDirectory":Ljava/io/File;
    move-object/from16 v6, p4

    .local v6, "initialFileName":Ljava/lang/String;
    move-object/from16 v7, p5

    .local v7, "fileChooserType":Lcom/sun/javafx/tk/FileChooserType;
    move-object/from16 v8, p6

    .local v8, "extensionFilters":Ljava/util/List;, "Ljava/util/List<Ljavafx/stage/FileChooser$ExtensionFilter;>;"
    move-object/from16 v9, p7

    .local v9, "selectedFilter":Ljavafx/stage/FileChooser$ExtensionFilter;
    const/4 v13, 0x0

    move-object v10, v13

    .line 1509
    .local v10, "blockedStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v13, v2

    move-object v14, v3

    :try_start_0
    invoke-direct {v13, v14}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->blockOwnerStage(Lcom/sun/javafx/tk/TKStage;)Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v13

    move-object v10, v13

    .line 1511
    move-object v13, v3

    instance-of v13, v13, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v13, :cond_1

    move-object v13, v3

    check-cast v13, Lcom/sun/javafx/tk/quantum/WindowStage;

    .line 1513
    invoke-virtual {v13}, Lcom/sun/javafx/tk/quantum/WindowStage;->getPlatformWindow()Lcom/sun/glass/ui/Window;

    move-result-object v13

    :goto_0
    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    sget-object v18, Lcom/sun/javafx/tk/FileChooserType;->SAVE:Lcom/sun/javafx/tk/FileChooserType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v18, v7

    sget-object v19, Lcom/sun/javafx/tk/FileChooserType;->OPEN_MULTIPLE:Lcom/sun/javafx/tk/FileChooserType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v19, v8

    .line 1522
    invoke-static/range {v19 .. v19}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->convertExtensionFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 1523
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 1511
    invoke-static/range {v13 .. v20}, Lcom/sun/glass/ui/CommonDialogs;->showFileChooser(Lcom/sun/glass/ui/Window;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    move-object v11, v13

    .line 1525
    move-object v13, v10

    if-eqz v13, :cond_0

    .line 1526
    move-object v13, v10

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sun/javafx/tk/quantum/WindowStage;->setEnabled(Z)V

    :cond_0
    move-object v13, v11

    move-object v2, v13

    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v2

    .line 1513
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    .line 1525
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v10

    if-eqz v13, :cond_4

    .line 1526
    move-object v13, v10

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sun/javafx/tk/quantum/WindowStage;->setEnabled(Z)V

    :cond_4
    move-object v13, v12

    throw v13
.end method

.method public startDrag(Lcom/sun/javafx/tk/TKScene;Ljava/util/Set;Lcom/sun/javafx/tk/TKDragSourceListener;Ljavafx/scene/input/Dragboard;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/tk/TKScene;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;",
            "Lcom/sun/javafx/tk/TKDragSourceListener;",
            "Ljavafx/scene/input/Dragboard;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1230
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/TKScene;
    move-object v2, p2

    .local v2, "tm":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    move-object v3, p3

    .local v3, "l":Lcom/sun/javafx/tk/TKDragSourceListener;
    move-object v4, p4

    .local v4, "dragboard":Ljavafx/scene/input/Dragboard;
    move-object v7, v4

    if-nez v7, :cond_0

    .line 1231
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "dragboard should not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1234
    :cond_0
    move-object v7, v1

    check-cast v7, Lcom/sun/javafx/tk/quantum/GlassScene;

    move-object v5, v7

    .line 1235
    .local v5, "view":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v7, v5

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/GlassScene;->setTKDragSourceListener(Lcom/sun/javafx/tk/TKDragSourceListener;)V

    .line 1237
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/input/Dragboard;->impl_getPeer()Lcom/sun/javafx/tk/TKClipboard;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/tk/quantum/QuantumClipboard;

    move-object v6, v7

    .line 1238
    .local v6, "gc":Lcom/sun/javafx/tk/quantum/QuantumClipboard;
    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->setSupportedTransferMode(Ljava/util/Set;)V

    .line 1239
    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->flush()V

    .line 1242
    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/QuantumClipboard;->close()V

    .line 1243
    return-void
.end method

.method public startup(Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "userStartupRunnable":Ljava/lang/Runnable;
    move-object v3, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->ccl:Ljava/lang/ClassLoader;

    .line 256
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->userRunnable:Ljava/lang/Runnable;

    .line 259
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/tk/quantum/QuantumToolkit$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/QuantumToolkit;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/glass/ui/Application;->run(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    .line 273
    move-object v3, v0

    :try_start_1
    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->launchLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 276
    .line 277
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 261
    .local v2, "ex":Ljava/lang/RuntimeException;
    sget-boolean v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v3, :cond_0

    .line 262
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 264
    :cond_0
    move-object v3, v2

    throw v3

    .line 265
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 266
    .local v2, "t":Ljava/lang/Throwable;
    sget-boolean v3, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v3, :cond_1

    .line 267
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 274
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 275
    .local v2, "ie":Ljava/lang/InterruptedException;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public strokeContains(Lcom/sun/javafx/geom/Shape;DDLjavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F)Z
    .locals 22

    .prologue
    .line 984
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object/from16 v1, p1

    .local v1, "shape":Lcom/sun/javafx/geom/Shape;
    move-wide/from16 v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-object/from16 v6, p6

    .local v6, "pgtype":Ljavafx/scene/shape/StrokeType;
    move-wide/from16 v7, p7

    .local v7, "strokewidth":D
    move-object/from16 v9, p9

    .local v9, "pgcap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v10, p10

    .local v10, "pgjoin":Ljavafx/scene/shape/StrokeLineJoin;
    move/from16 v11, p11

    .local v11, "miterLimit":F
    move-object v12, v0

    move-object v13, v6

    move-wide v14, v7

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v18, v11

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v12 .. v20}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->initStroke(Ljavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F[FF)V

    .line 986
    sget-object v12, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->tmpStroke:Lcom/sun/prism/BasicStroke;

    move-object v13, v1

    invoke-virtual {v12, v13}, Lcom/sun/prism/BasicStroke;->createStrokedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v12

    move-wide v13, v2

    double-to-float v13, v13

    move-wide v14, v4

    double-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v12

    move v0, v12

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return v0
.end method

.method public toFilterable(Ljavafx/scene/image/Image;)Lcom/sun/scenario/effect/Filterable;
    .locals 3

    .prologue
    .line 1074
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "img":Ljavafx/scene/image/Image;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/prism/Image;

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/prism/PrImage;->create(Lcom/sun/prism/Image;)Lcom/sun/scenario/effect/impl/prism/PrImage;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    return-object v0
.end method

.method vsyncHint()V
    .locals 7

    .prologue
    .line 537
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->isVsyncEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    sget-boolean v2, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->debug:Z

    if-eqz v2, :cond_0

    .line 539
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QT.vsyncHint: postPulse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 541
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->postPulse()V

    .line 543
    :cond_1
    return-void
.end method

.method public waitFor(Lcom/sun/javafx/tk/Toolkit$Task;)V
    .locals 3

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/QuantumToolkit;
    move-object v1, p1

    .local v1, "t":Lcom/sun/javafx/tk/Toolkit$Task;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/javafx/tk/Toolkit$Task;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 841
    .line 843
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method
