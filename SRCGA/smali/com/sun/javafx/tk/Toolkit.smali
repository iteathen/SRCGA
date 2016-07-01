.class public abstract Lcom/sun/javafx/tk/Toolkit;
.super Ljava/lang/Object;
.source "Toolkit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/tk/Toolkit$ImageAccessor;,
        Lcom/sun/javafx/tk/Toolkit$PaintAccessor;,
        Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;,
        Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;,
        Lcom/sun/javafx/tk/Toolkit$Task;
    }
.end annotation


# static fields
.field private static final DEFAULT_TOOLKIT:Ljava/lang/String; = "com.sun.javafx.tk.quantum.QuantumToolkit"

.field private static final QUANTUM_TOOLKIT:Ljava/lang/String; = "com.sun.javafx.tk.quantum.QuantumToolkit"

.field private static TOOLKIT:Lcom/sun/javafx/tk/Toolkit;

.field private static fxUserThread:Ljava/lang/Thread;

.field private static final gradientMap:Ljava/util/Map;

.field private static imageAccessor:Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

.field private static paintAccessor:Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

.field private static tk:Ljava/lang/String;

.field private static writableImageAccessor:Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;


# instance fields
.field private highlightRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/javafx/jmx/HighlightRegion;",
            ">;"
        }
    .end annotation
.end field

.field private lastTkPulseAcc:Ljava/security/AccessControlContext;

.field private lastTkPulseListener:Lcom/sun/javafx/tk/TKPulseListener;

.field private pauseScenesLatch:Ljava/util/concurrent/CountDownLatch;

.field private final postScenePulseListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/tk/TKPulseListener;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field

.field private final scenePulseListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/tk/TKPulseListener;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field

.field private final shutdownHooks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final stagePulseListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/tk/TKPulseListener;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field

.field private final toolkitListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/tk/TKListener;",
            "Ljava/security/AccessControlContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/tk/Toolkit;->fxUserThread:Ljava/lang/Thread;

    .line 107
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/Toolkit;->gradientMap:Ljava/util/Map;

    .line 936
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/tk/Toolkit;->writableImageAccessor:Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;

    .line 953
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/tk/Toolkit;->paintAccessor:Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    .line 970
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/tk/Toolkit;->imageAccessor:Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 328
    move-object v1, v0

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/tk/Toolkit;->stagePulseListeners:Ljava/util/Map;

    .line 330
    move-object v1, v0

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/tk/Toolkit;->scenePulseListeners:Ljava/util/Map;

    .line 332
    move-object v1, v0

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/tk/Toolkit;->postScenePulseListeners:Ljava/util/Map;

    .line 334
    move-object v1, v0

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/tk/Toolkit;->toolkitListeners:Ljava/util/Map;

    .line 338
    move-object v1, v0

    new-instance v2, Ljava/util/HashSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/tk/Toolkit;->shutdownHooks:Ljava/util/Set;

    .line 439
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/Toolkit;->lastTkPulseListener:Lcom/sun/javafx/tk/TKPulseListener;

    .line 440
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/Toolkit;->lastTkPulseAcc:Ljava/security/AccessControlContext;

    .line 843
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/Toolkit;->pauseScenesLatch:Ljava/util/concurrent/CountDownLatch;

    .line 239
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->lambda$getToolkit$27()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Z)Ljava/lang/Void;
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/Toolkit;->lambda$getToolkit$28(Z)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->lambda$getToolkit$29()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/TKPulseListener;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/Toolkit;->lambda$runPulse$30(Lcom/sun/javafx/tk/TKPulseListener;)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/TKListener;Ljava/util/List;)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->lambda$notifyWindowListeners$31(Lcom/sun/javafx/tk/TKListener;Ljava/util/List;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private checkSingleColor(Ljava/util/List;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "stops":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 559
    move-object v3, v1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/paint/Stop;

    invoke-virtual {v3}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v3

    move-object v2, v3

    .line 560
    .local v2, "c":Ljavafx/scene/paint/Color;
    move-object v3, v2

    move-object v4, v1

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/paint/Stop;

    invoke-virtual {v4}, Ljavafx/scene/paint/Stop;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/paint/Color;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 564
    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    .end local v2    # "c":Ljavafx/scene/paint/Color;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method protected static final clampStopOffset(D)D
    .locals 6

    .prologue
    .line 614
    move-wide v0, p0

    .local v0, "offset":D
    move-wide v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v0, v2

    .end local v0    # "offset":D
    return-wide v0

    .restart local v0    # "offset":D
    :cond_0
    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method private static getDefaultToolkit()Ljava/lang/String;
    .locals 5

    .prologue
    .line 119
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "com.sun.javafx.tk.quantum.QuantumToolkit"

    .line 128
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "com.sun.javafx.tk.quantum.QuantumToolkit"

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isLinux()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const-string v0, "com.sun.javafx.tk.quantum.QuantumToolkit"

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    const-string v0, "com.sun.javafx.tk.quantum.QuantumToolkit"

    goto :goto_0

    .line 127
    :cond_3
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    const-string v0, "com.sun.javafx.tk.quantum.QuantumToolkit"

    goto :goto_0

    .line 131
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getFxUserThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/sun/javafx/tk/Toolkit;->fxUserThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    .locals 1

    .prologue
    .line 977
    sget-object v0, Lcom/sun/javafx/tk/Toolkit;->imageAccessor:Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    return-object v0
.end method

.method private getPaint(Ljavafx/scene/paint/LinearGradient;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/LinearGradient;
    sget-object v3, Lcom/sun/javafx/tk/Toolkit;->gradientMap:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 569
    .local v2, "p":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 570
    move-object v3, v2

    move-object v0, v3

    .line 577
    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :goto_0
    return-object v0

    .line 572
    .restart local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/LinearGradient;->getStops()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->checkSingleColor(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 573
    move-object v3, v2

    if-nez v3, :cond_1

    .line 574
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->createLinearGradientPaint(Ljavafx/scene/paint/LinearGradient;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 576
    :cond_1
    sget-object v3, Lcom/sun/javafx/tk/Toolkit;->gradientMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 577
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method private getPaint(Ljavafx/scene/paint/RadialGradient;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/RadialGradient;
    sget-object v3, Lcom/sun/javafx/tk/Toolkit;->gradientMap:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 582
    .local v2, "p":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 583
    move-object v3, v2

    move-object v0, v3

    .line 590
    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :goto_0
    return-object v0

    .line 585
    .restart local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/RadialGradient;->getStops()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->checkSingleColor(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 586
    move-object v3, v2

    if-nez v3, :cond_1

    .line 587
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->createRadialGradientPaint(Ljavafx/scene/paint/RadialGradient;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 589
    :cond_1
    sget-object v3, Lcom/sun/javafx/tk/Toolkit;->gradientMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 590
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public static getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;
    .locals 1

    .prologue
    .line 960
    sget-object v0, Lcom/sun/javafx/tk/Toolkit;->paintAccessor:Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    return-object v0
.end method

.method public static declared-synchronized getToolkit()Lcom/sun/javafx/tk/Toolkit;
    .locals 10

    .prologue
    .line 135
    const-class v8, Lcom/sun/javafx/tk/Toolkit;

    monitor-enter v8

    :try_start_0
    sget-object v5, Lcom/sun/javafx/tk/Toolkit;->TOOLKIT:Lcom/sun/javafx/tk/Toolkit;

    if-eqz v5, :cond_0

    .line 136
    sget-object v5, Lcom/sun/javafx/tk/Toolkit;->TOOLKIT:Lcom/sun/javafx/tk/Toolkit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 202
    .local v1, "userSpecifiedToolkit":Z
    .local v2, "forcedToolkit":Ljava/lang/String;
    .local v3, "printToolkit":Z
    :goto_0
    monitor-exit v8

    return-object v0

    .line 139
    .end local v1    # "userSpecifiedToolkit":Z
    .end local v2    # "forcedToolkit":Ljava/lang/String;
    .end local v3    # "printToolkit":Z
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v5

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v0, v5

    .line 144
    .local v0, "verbose":Z
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    move v5, v0

    invoke-static {v5}, Lcom/sun/javafx/tk/Toolkit$$Lambda$2;->lambdaFactory$(Z)Ljava/security/PrivilegedAction;

    move-result-object v5

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    .line 164
    :cond_1
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit$$Lambda$3;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v5

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 171
    const/4 v5, 0x1

    move v1, v5

    .line 175
    .restart local v1    # "userSpecifiedToolkit":Z
    const/4 v5, 0x0

    move-object v2, v5

    .line 177
    .restart local v2    # "forcedToolkit":Ljava/lang/String;
    :try_start_2
    const-string v5, "javafx.toolkit"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    move-object v2, v5

    .line 178
    .line 180
    :goto_1
    move-object v5, v2

    if-nez v5, :cond_2

    .line 181
    :try_start_3
    sget-object v5, Lcom/sun/javafx/tk/Toolkit;->tk:Ljava/lang/String;

    move-object v2, v5

    .line 183
    :cond_2
    move-object v5, v2

    if-nez v5, :cond_3

    .line 184
    const/4 v5, 0x0

    move v1, v5

    .line 185
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getDefaultToolkit()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 188
    :cond_3
    move-object v5, v2

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 190
    move-object v5, v2

    invoke-static {v5}, Lcom/sun/javafx/tk/Toolkit;->lookupToolkitClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 193
    :cond_4
    move v5, v0

    if-nez v5, :cond_5

    move v5, v1

    if-eqz v5, :cond_7

    move-object v5, v2

    const-string v6, "StubToolkit"

    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-nez v5, :cond_7

    :cond_5
    const/4 v5, 0x1

    :goto_2
    move v3, v5

    .line 197
    .restart local v3    # "printToolkit":Z
    move-object v5, v2

    :try_start_4
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/tk/Toolkit;

    sput-object v5, Lcom/sun/javafx/tk/Toolkit;->TOOLKIT:Lcom/sun/javafx/tk/Toolkit;

    .line 198
    sget-object v5, Lcom/sun/javafx/tk/Toolkit;->TOOLKIT:Lcom/sun/javafx/tk/Toolkit;

    invoke-virtual {v5}, Lcom/sun/javafx/tk/Toolkit;->init()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 199
    move v5, v3

    if-eqz v5, :cond_6

    .line 200
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JavaFX: using "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    :cond_6
    sget-object v5, Lcom/sun/javafx/tk/Toolkit;->TOOLKIT:Lcom/sun/javafx/tk/Toolkit;

    move-object v0, v5

    goto/16 :goto_0

    .line 178
    .end local v3    # "printToolkit":Z
    :catch_0
    move-exception v5

    move-object v3, v5

    goto :goto_1

    .line 194
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 204
    .restart local v3    # "printToolkit":Z
    :cond_8
    const/4 v5, 0x0

    sput-object v5, Lcom/sun/javafx/tk/Toolkit;->TOOLKIT:Lcom/sun/javafx/tk/Toolkit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    .line 210
    :goto_3
    :try_start_5
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "No toolkit found"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    .end local v1    # "userSpecifiedToolkit":Z
    .end local v2    # "forcedToolkit":Ljava/lang/String;
    .end local v3    # "printToolkit":Z
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "verbose":Z
    throw v0

    .line 205
    .restart local v0    # "verbose":Z
    .restart local v1    # "userSpecifiedToolkit":Z
    .restart local v2    # "forcedToolkit":Ljava/lang/String;
    .restart local v3    # "printToolkit":Z
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 206
    .local v4, "any":Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_6
    sput-object v5, Lcom/sun/javafx/tk/Toolkit;->TOOLKIT:Lcom/sun/javafx/tk/Toolkit;

    .line 207
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public static getWritableImageAccessor()Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;
    .locals 1

    .prologue
    .line 943
    sget-object v0, Lcom/sun/javafx/tk/Toolkit;->writableImageAccessor:Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;

    return-object v0
.end method

.method private static synthetic lambda$getToolkit$27()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 139
    const-string v0, "javafx.verbose"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getToolkit$28(Z)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 147
    move v0, p0

    .local v0, "verbose":Z
    :try_start_0
    const-string v2, "msvcr120"

    invoke-static {v2}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 154
    :cond_0
    :goto_0
    :try_start_1
    const-string v2, "msvcp120"

    invoke-static {v2}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .line 160
    :cond_1
    :goto_1
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "verbose":Z
    return-object v0

    .line 148
    .restart local v0    # "verbose":Z
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 149
    .local v1, "t":Ljava/lang/Throwable;
    move v2, v0

    if-eqz v2, :cond_0

    .line 150
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: failed to load msvcr120.dll : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 156
    .restart local v1    # "t":Ljava/lang/Throwable;
    move v2, v0

    if-eqz v2, :cond_1

    .line 157
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: failed to load msvcp120.dll : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static synthetic lambda$getToolkit$29()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/sun/javafx/runtime/VersionInfo;->setupSystemProperties()V

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$notifyWindowListeners$31(Lcom/sun/javafx/tk/TKListener;Ljava/util/List;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "listener":Lcom/sun/javafx/tk/TKListener;
    move-object v1, p1

    .local v1, "windows":Ljava/util/List;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKListener;->changedTopLevelWindows(Ljava/util/List;)V

    .line 483
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "listener":Lcom/sun/javafx/tk/TKListener;
    return-object v0
.end method

.method private static synthetic lambda$runPulse$30(Lcom/sun/javafx/tk/TKPulseListener;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "listener":Lcom/sun/javafx/tk/TKPulseListener;
    move-object v1, v0

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKPulseListener;->pulse()V

    .line 349
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "listener":Lcom/sun/javafx/tk/TKPulseListener;
    return-object v0
.end method

.method private static lookupToolkitClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-string v1, "prism"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "com.sun.javafx.tk.quantum.QuantumToolkit"

    move-object v0, v1

    .line 115
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 112
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    const-string v1, "quantum"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const-string v1, "com.sun.javafx.tk.quantum.QuantumToolkit"

    move-object v0, v1

    goto :goto_0

    .line 115
    :cond_1
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method

.method private runPulse(Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;)V
    .locals 7

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKPulseListener;
    move-object v2, p2

    .local v2, "acc":Ljava/security/AccessControlContext;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 344
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Invalid AccessControlContext"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 347
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/tk/Toolkit$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/TKPulseListener;)Ljava/security/PrivilegedAction;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    .line 351
    return-void
.end method

.method protected static setFxUserThread(Ljava/lang/Thread;)V
    .locals 5

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "t":Ljava/lang/Thread;
    sget-object v1, Lcom/sun/javafx/tk/Toolkit;->fxUserThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Error: FX User Thread already initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/tk/Toolkit;->fxUserThread:Ljava/lang/Thread;

    .line 223
    return-void
.end method

.method public static setImageAccessor(Lcom/sun/javafx/tk/Toolkit$ImageAccessor;)V
    .locals 2

    .prologue
    .line 973
    move-object v0, p0

    .local v0, "accessor":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/tk/Toolkit;->imageAccessor:Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    .line 974
    return-void
.end method

.method public static setPaintAccessor(Lcom/sun/javafx/tk/Toolkit$PaintAccessor;)V
    .locals 2

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "accessor":Lcom/sun/javafx/tk/Toolkit$PaintAccessor;
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/tk/Toolkit;->paintAccessor:Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    .line 957
    return-void
.end method

.method public static setWritableImageAccessor(Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;)V
    .locals 2

    .prologue
    .line 939
    move-object v0, p0

    .local v0, "accessor":Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/tk/Toolkit;->writableImageAccessor:Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;

    .line 940
    return-void
.end method


# virtual methods
.method public abstract accumulateStrokeBounds(Lcom/sun/javafx/geom/Shape;[FLjavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;FLcom/sun/javafx/geom/transform/BaseTransform;)V
.end method

.method public addPostSceneTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V
    .locals 9

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKPulseListener;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 414
    .line 420
    :goto_0
    return-void

    .line 416
    :cond_0
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 417
    :try_start_0
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v5

    move-object v3, v5

    .line 418
    .local v3, "acc":Ljava/security/AccessControlContext;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/Toolkit;->postScenePulseListeners:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 419
    move-object v5, v2

    monitor-exit v5

    .line 420
    goto :goto_0

    .line 419
    .end local v3    # "acc":Ljava/security/AccessControlContext;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public abstract addRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;
.end method

.method public addSceneTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V
    .locals 9

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKPulseListener;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 400
    .line 406
    :goto_0
    return-void

    .line 402
    :cond_0
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 403
    :try_start_0
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v5

    move-object v3, v5

    .line 404
    .local v3, "acc":Ljava/security/AccessControlContext;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/Toolkit;->scenePulseListeners:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 405
    move-object v5, v2

    monitor-exit v5

    .line 406
    goto :goto_0

    .line 405
    .end local v3    # "acc":Ljava/security/AccessControlContext;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public addShutdownHook(Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "hook":Ljava/lang/Runnable;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 448
    .line 453
    :goto_0
    return-void

    .line 450
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/Toolkit;->shutdownHooks:Ljava/util/Set;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 451
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/javafx/tk/Toolkit;->shutdownHooks:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 452
    move-object v4, v2

    monitor-exit v4

    .line 453
    goto :goto_0

    .line 452
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

.method public addStageTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V
    .locals 9

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKPulseListener;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 386
    .line 392
    :goto_0
    return-void

    .line 388
    :cond_0
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 389
    :try_start_0
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v5

    move-object v3, v5

    .line 390
    .local v3, "acc":Ljava/security/AccessControlContext;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/Toolkit;->stagePulseListeners:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 391
    move-object v5, v2

    monitor-exit v5

    .line 392
    goto :goto_0

    .line 391
    .end local v3    # "acc":Ljava/security/AccessControlContext;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public addTkListener(Lcom/sun/javafx/tk/TKListener;)V
    .locals 6

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKListener;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 429
    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v3

    move-object v2, v3

    .line 432
    .local v2, "acc":Ljava/security/AccessControlContext;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/Toolkit;->toolkitListeners:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 433
    goto :goto_0
.end method

.method public abstract canStartNestedEventLoop()Z
.end method

.method public checkFxUserThread()V
    .locals 6

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->isFxUserThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not on FX application thread; currentThread = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 229
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    return-void
.end method

.method public abstract closeAppletWindow()V
.end method

.method public abstract convertHitInfoToFX(Ljava/lang/Object;)Lcom/sun/javafx/scene/text/HitInfo;
.end method

.method public abstract convertShapeToFXPath(Ljava/lang/Object;)[Ljavafx/scene/shape/PathElement;
.end method

.method public abstract createAppletWindow(JLjava/lang/String;)Lcom/sun/javafx/tk/AppletWindow;
.end method

.method protected abstract createColorPaint(Ljavafx/scene/paint/Color;)Ljava/lang/Object;
.end method

.method protected abstract createImagePatternPaint(Ljavafx/scene/paint/ImagePattern;)Ljava/lang/Object;
.end method

.method protected abstract createLinearGradientPaint(Ljavafx/scene/paint/LinearGradient;)Ljava/lang/Object;
.end method

.method public createLocalClipboard()Lcom/sun/javafx/tk/TKClipboard;
    .locals 4

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    new-instance v1, Lcom/sun/javafx/tk/LocalClipboard;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/tk/LocalClipboard;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    return-object v0
.end method

.method public abstract createPerformanceTracker()Lcom/sun/javafx/perf/PerformanceTracker;
.end method

.method public abstract createPlatformImage(II)Lcom/sun/javafx/tk/PlatformImage;
.end method

.method protected abstract createRadialGradientPaint(Ljavafx/scene/paint/RadialGradient;)Ljava/lang/Object;
.end method

.method public abstract createSVGPath2D(Ljavafx/scene/shape/SVGPath;)Lcom/sun/javafx/geom/Path2D;
.end method

.method public abstract createSVGPathObject(Ljavafx/scene/shape/SVGPath;)Ljava/lang/Object;
.end method

.method public abstract createStrokedShape(Lcom/sun/javafx/geom/Shape;Ljavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F[FF)Lcom/sun/javafx/geom/Shape;
.end method

.method public abstract createTKEmbeddedStage(Lcom/sun/javafx/embed/HostInterface;Ljava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;
.end method

.method public abstract createTKPopupStage(Ljavafx/stage/Window;Ljavafx/stage/StageStyle;Lcom/sun/javafx/tk/TKStage;Ljava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;
.end method

.method public abstract createTKStage(Ljavafx/stage/Window;ZLjavafx/stage/StageStyle;ZLjavafx/stage/Modality;Lcom/sun/javafx/tk/TKStage;ZLjava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;
.end method

.method public abstract defer(Ljava/lang/Runnable;)V
.end method

.method public abstract enableDrop(Lcom/sun/javafx/tk/TKScene;Lcom/sun/javafx/tk/TKDropTargetListener;)V
.end method

.method public abstract enterNestedEventLoop(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/javafx/tk/Toolkit;->fxUserThread:Ljava/lang/Thread;

    .line 546
    return-void
.end method

.method public abstract exitNestedEventLoop(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public firePulse()V
    .locals 10

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    new-instance v6, Ljava/util/WeakHashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    move-object v1, v6

    .line 360
    .local v1, "stagePulseList":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;>;"
    new-instance v6, Ljava/util/WeakHashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    move-object v2, v6

    .line 362
    .local v2, "scenePulseList":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;>;"
    new-instance v6, Ljava/util/WeakHashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    move-object v3, v6

    .line 365
    .local v3, "postScenePulseList":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;>;"
    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v4, v7

    monitor-enter v6

    .line 366
    move-object v6, v1

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/javafx/tk/Toolkit;->stagePulseListeners:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 367
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/Toolkit;->scenePulseListeners:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 368
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/Toolkit;->postScenePulseListeners:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 369
    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    check-cast v6, Ljava/util/Map$Entry;

    move-object v5, v6

    .line 371
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;>;"
    move-object v6, v0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/tk/TKPulseListener;

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/AccessControlContext;

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/tk/Toolkit;->runPulse(Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;)V

    .line 372
    goto :goto_0

    .line 369
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;>;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6

    .line 373
    :cond_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v5, v6

    .line 374
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;>;"
    move-object v6, v0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/tk/TKPulseListener;

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/AccessControlContext;

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/tk/Toolkit;->runPulse(Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;)V

    .line 375
    goto :goto_1

    .line 376
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;>;"
    :cond_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_2
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v5, v6

    .line 377
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;>;"
    move-object v6, v0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/tk/TKPulseListener;

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/AccessControlContext;

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/tk/Toolkit;->runPulse(Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;)V

    .line 378
    goto :goto_2

    .line 380
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;>;"
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/Toolkit;->lastTkPulseListener:Lcom/sun/javafx/tk/TKPulseListener;

    if-eqz v6, :cond_3

    .line 381
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/Toolkit;->lastTkPulseListener:Lcom/sun/javafx/tk/TKPulseListener;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/tk/Toolkit;->lastTkPulseAcc:Ljava/security/AccessControlContext;

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/tk/Toolkit;->runPulse(Lcom/sun/javafx/tk/TKPulseListener;Ljava/security/AccessControlContext;)V

    .line 383
    :cond_3
    return-void
.end method

.method public abstract getBestCursorSize(II)Ljavafx/geometry/Dimension2D;
.end method

.method public abstract getContextMap()Ljava/util/Map;
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
.end method

.method public getDefaultImageSmooth()Z
    .locals 2

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    return v0
.end method

.method public abstract getFilterContext(Ljava/lang/Object;)Lcom/sun/scenario/effect/FilterContext;
.end method

.method public abstract getFontLoader()Lcom/sun/javafx/tk/FontLoader;
.end method

.method public getHighlightedRegions()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/javafx/jmx/HighlightRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 925
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/Toolkit;->highlightRegions:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 926
    move-object v1, v0

    new-instance v2, Ljava/util/HashSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/tk/Toolkit;->highlightRegions:Ljava/util/Set;

    .line 928
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/Toolkit;->highlightRegions:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, p2

    .local v2, "base":Ljava/lang/Class;
    move-object v3, v1

    const-string v4, "http:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    const-string v4, "https:"

    .line 503
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    const-string v4, "file:"

    .line 504
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    const-string v4, "jar:"

    .line 505
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/net/URL;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 507
    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    return-object v0

    .line 506
    .restart local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :cond_1
    move-object v3, v2

    move-object v4, v1

    .line 507
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0
.end method

.method public abstract getKeyCodeForChar(Ljava/lang/String;)I
.end method

.method public abstract getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;
.end method

.method public abstract getMaximumCursorColors()I
.end method

.method public abstract getMultiClickMaxX()I
.end method

.method public abstract getMultiClickMaxY()I
.end method

.method public abstract getMultiClickTime()J
.end method

.method public abstract getNamedClipboard(Ljava/lang/String;)Lcom/sun/javafx/tk/TKClipboard;
.end method

.method public getPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "paint":Ljavafx/scene/paint/Paint;
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/paint/Color;

    if-eqz v2, :cond_0

    .line 595
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/paint/Color;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->createColorPaint(Ljavafx/scene/paint/Color;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 610
    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :goto_0
    return-object v0

    .line 598
    .restart local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/paint/LinearGradient;

    if-eqz v2, :cond_1

    .line 599
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/paint/LinearGradient;

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->getPaint(Ljavafx/scene/paint/LinearGradient;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 602
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/paint/RadialGradient;

    if-eqz v2, :cond_2

    .line 603
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/paint/RadialGradient;

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->getPaint(Ljavafx/scene/paint/RadialGradient;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 606
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/paint/ImagePattern;

    if-eqz v2, :cond_3

    .line 607
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/paint/ImagePattern;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->createImagePatternPaint(Ljavafx/scene/paint/ImagePattern;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 610
    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public abstract getPerformanceTracker()Lcom/sun/javafx/perf/PerformanceTracker;
.end method

.method public getPlatformShortcutKey()Ljavafx/scene/input/KeyCode;
    .locals 2

    .prologue
    .line 819
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljavafx/scene/input/KeyCode;->META:Ljavafx/scene/input/KeyCode;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :cond_0
    sget-object v1, Ljavafx/scene/input/KeyCode;->CONTROL:Ljavafx/scene/input/KeyCode;

    goto :goto_0
.end method

.method public abstract getPrimaryScreen()Ljava/lang/Object;
.end method

.method public abstract getRefreshRate()I
.end method

.method public abstract getScreenConfigurationAccessor()Lcom/sun/javafx/tk/ScreenConfigurationAccessor;
.end method

.method public abstract getScreens()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getSystemClipboard()Lcom/sun/javafx/tk/TKClipboard;
.end method

.method public abstract getSystemMenu()Lcom/sun/javafx/tk/TKSystemMenu;
.end method

.method public abstract getTextLayoutFactory()Lcom/sun/javafx/scene/text/TextLayoutFactory;
.end method

.method public getThemeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 981
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    return-object v0
.end method

.method public abstract imageContains(Ljava/lang/Object;FF)Z
.end method

.method public abstract init()Z
.end method

.method public abstract installInputMethodRequests(Lcom/sun/javafx/tk/TKScene;Ljavafx/scene/input/InputMethodRequests;)V
.end method

.method public abstract isBackwardTraversalKey(Ljavafx/scene/input/KeyEvent;)Z
.end method

.method public abstract isForwardTraversalKey(Ljavafx/scene/input/KeyEvent;)Z
.end method

.method public isFxUserThread()Z
    .locals 3

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/tk/Toolkit;->fxUserThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMSAASupported()Z
    .locals 2

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    return v0
.end method

.method public abstract isNestedLoopRunning()Z
.end method

.method public isSupported(Ljavafx/application/ConditionalFeature;)Z
    .locals 3

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "feature":Ljavafx/application/ConditionalFeature;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    return v0
.end method

.method public abstract loadImage(Ljava/io/InputStream;IIZZ)Lcom/sun/javafx/tk/ImageLoader;
.end method

.method public abstract loadImage(Ljava/lang/String;IIZZ)Lcom/sun/javafx/tk/ImageLoader;
.end method

.method public abstract loadImageAsync(Lcom/sun/javafx/runtime/async/AsyncOperationListener;Ljava/lang/String;IIZZ)Lcom/sun/javafx/runtime/async/AsyncOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/runtime/async/AsyncOperationListener",
            "<+",
            "Lcom/sun/javafx/tk/ImageLoader;",
            ">;",
            "Ljava/lang/String;",
            "IIZZ)",
            "Lcom/sun/javafx/runtime/async/AsyncOperation;"
        }
    .end annotation
.end method

.method public abstract loadPlatformImage(Ljava/lang/Object;)Lcom/sun/javafx/tk/ImageLoader;
.end method

.method public notifyLastNestedLoopExited()V
    .locals 4

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/Toolkit;->toolkitListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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

    check-cast v3, Lcom/sun/javafx/tk/TKListener;

    move-object v2, v3

    .line 490
    .local v2, "listener":Lcom/sun/javafx/tk/TKListener;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKListener;->exitedLastNestedLoop()V

    .line 491
    goto :goto_0

    .line 492
    .end local v2    # "listener":Lcom/sun/javafx/tk/TKListener;
    :cond_0
    return-void
.end method

.method protected notifyShutdownHooks()V
    .locals 8

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/Toolkit;->shutdownHooks:Ljava/util/Set;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 464
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/Toolkit;->shutdownHooks:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v4

    .line 465
    .local v1, "hooks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/Toolkit;->shutdownHooks:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 466
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    move-object v3, v4

    .line 469
    .local v3, "hook":Ljava/lang/Runnable;
    move-object v4, v3

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 470
    goto :goto_0

    .line 466
    .end local v1    # "hooks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v3    # "hook":Ljava/lang/Runnable;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4

    .line 471
    .restart local v1    # "hooks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method public notifyWindowListeners(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/tk/TKStage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "windows":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/tk/TKStage;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/Toolkit;->toolkitListeners:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v3, v6

    .line 475
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/tk/TKListener;Ljava/security/AccessControlContext;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/tk/TKListener;

    move-object v4, v6

    .line 476
    .local v4, "listener":Lcom/sun/javafx/tk/TKListener;
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/AccessControlContext;

    move-object v5, v6

    .line 477
    .local v5, "acc":Ljava/security/AccessControlContext;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 478
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Invalid AccessControlContext"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 481
    :cond_0
    move-object v6, v4

    move-object v7, v1

    invoke-static {v6, v7}, Lcom/sun/javafx/tk/Toolkit$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/TKListener;Ljava/util/List;)Ljava/security/PrivilegedAction;

    move-result-object v6

    move-object v7, v5

    invoke-static {v6, v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v6

    .line 485
    goto :goto_0

    .line 486
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/javafx/tk/TKListener;Ljava/security/AccessControlContext;>;"
    .end local v4    # "listener":Lcom/sun/javafx/tk/TKListener;
    .end local v5    # "acc":Ljava/security/AccessControlContext;
    :cond_1
    return-void
.end method

.method public pauseCurrentThread()V
    .locals 4

    .prologue
    .line 888
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/Toolkit;->pauseScenesLatch:Ljava/util/concurrent/CountDownLatch;

    move-object v1, v3

    .line 889
    .local v1, "cdl":Ljava/util/concurrent/CountDownLatch;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 890
    .line 895
    :goto_0
    return-void

    .line 893
    :cond_0
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .line 895
    :goto_1
    goto :goto_0

    .line 894
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_1
.end method

.method public abstract pauseRenderer()V
.end method

.method public pauseScenes()V
    .locals 9

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v4, v0

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, v4, Lcom/sun/javafx/tk/Toolkit;->pauseScenesLatch:Ljava/util/concurrent/CountDownLatch;

    .line 851
    invoke-static {}, Ljavafx/stage/Window;->impl_getWindows()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    .line 852
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/stage/Window;>;"
    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 853
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/stage/Window;

    move-object v2, v4

    .line 854
    .local v2, "w":Ljavafx/stage/Window;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v3, v4

    .line 855
    .local v3, "scene":Ljavafx/scene/Scene;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 856
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Scene;->impl_getScenePulseListener()Lcom/sun/javafx/tk/TKPulseListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/Toolkit;->removeSceneTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 858
    :cond_0
    goto :goto_0

    .line 859
    .end local v2    # "w":Ljavafx/stage/Window;
    .end local v3    # "scene":Ljavafx/scene/Scene;
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/animation/AbstractMasterTimer;->pause()V

    .line 860
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/sun/javafx/scene/SceneHelper;->setPaused(Z)V

    .line 861
    return-void
.end method

.method public abstract registerDragGestureListener(Lcom/sun/javafx/tk/TKScene;Ljava/util/Set;Lcom/sun/javafx/tk/TKDragGestureListener;)V
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
.end method

.method public removePostSceneTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V
    .locals 7

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKPulseListener;
    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 423
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/javafx/tk/Toolkit;->postScenePulseListeners:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 424
    move-object v4, v2

    monitor-exit v4

    .line 425
    return-void

    .line 424
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

.method public removeSceneTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V
    .locals 7

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKPulseListener;
    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 409
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/javafx/tk/Toolkit;->scenePulseListeners:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 410
    move-object v4, v2

    monitor-exit v4

    .line 411
    return-void

    .line 410
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

.method public removeShutdownHook(Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "hook":Ljava/lang/Runnable;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/Toolkit;->shutdownHooks:Ljava/util/Set;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 457
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/javafx/tk/Toolkit;->shutdownHooks:Ljava/util/Set;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 458
    move-object v4, v2

    monitor-exit v4

    .line 459
    return-void

    .line 458
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

.method public removeStageTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V
    .locals 7

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKPulseListener;
    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 395
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/javafx/tk/Toolkit;->stagePulseListeners:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 396
    move-object v4, v2

    monitor-exit v4

    .line 397
    return-void

    .line 396
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

.method public removeTkListener(Lcom/sun/javafx/tk/TKListener;)V
    .locals 4

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/Toolkit;->toolkitListeners:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 437
    return-void
.end method

.method public abstract renderToImage(Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;)Ljava/lang/Object;
.end method

.method public abstract requestNextPulse()V
.end method

.method public abstract resumeRenderer()V
.end method

.method public resumeScenes()V
    .locals 6

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sun/javafx/scene/SceneHelper;->setPaused(Z)V

    .line 869
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getMasterTimer()Lcom/sun/scenario/animation/AbstractMasterTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/scenario/animation/AbstractMasterTimer;->resume()V

    .line 870
    invoke-static {}, Ljavafx/stage/Window;->impl_getWindows()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    .line 871
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/stage/Window;>;"
    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 872
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/stage/Window;

    move-object v2, v4

    .line 873
    .local v2, "w":Ljavafx/stage/Window;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v3, v4

    .line 874
    .local v3, "scene":Ljavafx/scene/Scene;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 875
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Scene;->impl_getScenePulseListener()Lcom/sun/javafx/tk/TKPulseListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/tk/Toolkit;->addSceneTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 877
    :cond_0
    goto :goto_0

    .line 878
    .end local v2    # "w":Ljavafx/stage/Window;
    .end local v3    # "scene":Ljavafx/scene/Scene;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/Toolkit;->pauseScenesLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 879
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/tk/Toolkit;->pauseScenesLatch:Ljava/util/concurrent/CountDownLatch;

    .line 880
    return-void
.end method

.method public abstract setAnimationRunnable(Lcom/sun/scenario/DelayedRunnable;)V
.end method

.method public setLastTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V
    .locals 4

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/tk/TKPulseListener;
    move-object v2, v0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/tk/Toolkit;->lastTkPulseAcc:Ljava/security/AccessControlContext;

    .line 443
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/Toolkit;->lastTkPulseListener:Lcom/sun/javafx/tk/TKPulseListener;

    .line 444
    return-void
.end method

.method public abstract setScreenConfigurationListener(Lcom/sun/javafx/tk/TKScreenConfigurationListener;)Lcom/sun/javafx/tk/ScreenConfigurationAccessor;
.end method

.method public abstract showDirectoryChooser(Lcom/sun/javafx/tk/TKStage;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
.end method

.method public abstract showFileChooser(Lcom/sun/javafx/tk/TKStage;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/sun/javafx/tk/FileChooserType;Ljava/util/List;Ljavafx/stage/FileChooser$ExtensionFilter;)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
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
.end method

.method public abstract startDrag(Lcom/sun/javafx/tk/TKScene;Ljava/util/Set;Lcom/sun/javafx/tk/TKDragSourceListener;Ljavafx/scene/input/Dragboard;)V
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
.end method

.method public abstract startup(Ljava/lang/Runnable;)V
.end method

.method public stopDrag(Ljavafx/scene/input/Dragboard;)V
    .locals 0
    .param p1, "dragboard"    # Ljavafx/scene/input/Dragboard;

    .prologue
    .line 717
    return-void
.end method

.method public abstract strokeContains(Lcom/sun/javafx/geom/Shape;DDLjavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F)Z
.end method

.method public toColor4f(Ljavafx/scene/paint/Color;)Lcom/sun/scenario/effect/Color4f;
    .locals 10

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "color":Ljavafx/scene/paint/Color;
    new-instance v2, Lcom/sun/scenario/effect/Color4f;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/scenario/effect/Color4f;-><init>(FFFF)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    return-object v0
.end method

.method public abstract toFilterable(Ljavafx/scene/image/Image;)Lcom/sun/scenario/effect/Filterable;
.end method

.method public toShadowMode(Ljavafx/scene/effect/BlurType;)Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;
    .locals 4

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/Toolkit;
    move-object v1, p1

    .local v1, "blurType":Ljavafx/scene/effect/BlurType;
    sget-object v2, Lcom/sun/javafx/tk/Toolkit$1;->$SwitchMap$javafx$scene$effect$BlurType:[I

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/effect/BlurType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 739
    sget-object v2, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->GAUSSIAN:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :goto_0
    return-object v0

    .line 733
    .restart local v0    # "this":Lcom/sun/javafx/tk/Toolkit;
    :pswitch_0
    sget-object v2, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->ONE_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v0, v2

    goto :goto_0

    .line 735
    :pswitch_1
    sget-object v2, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->TWO_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v0, v2

    goto :goto_0

    .line 737
    :pswitch_2
    sget-object v2, Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;->THREE_PASS_BOX:Lcom/sun/scenario/effect/AbstractShadow$ShadowMode;

    move-object v0, v2

    goto :goto_0

    .line 731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract waitFor(Lcom/sun/javafx/tk/Toolkit$Task;)V
.end method
