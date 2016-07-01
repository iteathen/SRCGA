.class public abstract Lcom/sun/glass/ui/Application;
.super Ljava/lang/Object;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/Application$EventHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "java"

.field private static application:Lcom/sun/glass/ui/Application;

.field private static volatile deviceDetails:Ljava/util/Map;

.field private static final disableThreadChecks:Z

.field private static eventThread:Ljava/lang/Thread;

.field private static loaded:Z

.field private static nestedEventLoopCounter:I


# instance fields
.field private eventHandler:Lcom/sun/glass/ui/Application$EventHandler;

.field private initialActiveEventReceived:Z

.field private initialOpenedFiles:[Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field private terminateWhenLastWindowClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/glass/ui/Application;->loaded:Z

    .line 100
    invoke-static {}, Lcom/sun/glass/ui/Application$$Lambda$3;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 101
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/glass/ui/Application;->disableThreadChecks:Z

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/ui/Application;->deviceDetails:Ljava/util/Map;

    .line 487
    const/4 v0, 0x0

    sput v0, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v1, v0

    const-string v2, "java"

    iput-object v2, v1, Lcom/sun/glass/ui/Application;->name:Ljava/lang/String;

    .line 94
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/Application;->initialActiveEventReceived:Z

    .line 95
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/glass/ui/Application;->initialOpenedFiles:[Ljava/lang/String;

    .line 355
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/glass/ui/Application;->terminateWhenLastWindowClosed:Z

    .line 139
    return-void
.end method

.method public static GetApplication()Lcom/sun/glass/ui/Application;
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    return-object v0
.end method

.method static synthetic access$lambda$0(Ljava/lang/Runnable;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/Application;->lambda$run$38(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$lambda$1()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/Application;->lambda$getDataDirectory$39()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/Application;->lambda$static$37()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static checkEventThread()V
    .locals 5

    .prologue
    .line 438
    sget-boolean v0, Lcom/sun/glass/ui/Application;->disableThreadChecks:Z

    if-nez v0, :cond_0

    .line 439
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/sun/glass/ui/Application;->eventThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This operation is permitted on the event thread only; currentThread = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    return-void
.end method

.method static createPixels(II[IF)Lcom/sun/glass/ui/Pixels;
    .locals 9

    .prologue
    .line 629
    move v0, p0

    .local v0, "width":I
    move v1, p1

    .local v1, "height":I
    move-object v2, p2

    .local v2, "data":[I
    move v3, p3

    .local v3, "scale":F
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v4

    move v5, v0

    move v6, v1

    move-object v7, v2

    invoke-static {v7}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/IntBuffer;F)Lcom/sun/glass/ui/Pixels;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "width":I
    return-object v0
.end method

.method static enterNestedEventLoop()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 507
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 509
    sget v2, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    .line 511
    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->_enterNestedEventLoop()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v0, v2

    .line 513
    sget v2, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    move-object v2, v0

    move-object v0, v2

    return-object v0

    :catchall_0
    move-exception v2

    move-object v1, v2

    sget v2, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    move-object v2, v1

    throw v2
.end method

.method public static getDeviceDetails()Ljava/util/Map;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/sun/glass/ui/Application;->deviceDetails:Ljava/util/Map;

    return-object v0
.end method

.method protected static getEventThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lcom/sun/glass/ui/Application;->eventThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static getKeyCodeForChar(C)I
    .locals 3

    .prologue
    .line 741
    move v0, p0

    .local v0, "c":C
    sget-object v1, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    move v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Application;->_getKeyCodeForChar(C)I

    move-result v1

    move v0, v1

    .end local v0    # "c":C
    return v0
.end method

.method static getScaleFactor(IIII)F
    .locals 14

    .prologue
    .line 634
    move v0, p0

    .local v0, "x":I
    move v1, p1

    .local v1, "y":I
    move/from16 v2, p2

    .local v2, "w":I
    move/from16 v3, p3

    .local v3, "h":I
    const/4 v11, 0x0

    move v4, v11

    .line 636
    .local v4, "scale":F
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getScreens()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v5, v11

    :goto_0
    move-object v11, v5

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/glass/ui/Screen;

    move-object v6, v11

    .line 637
    .local v6, "s":Lcom/sun/glass/ui/Screen;
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/glass/ui/Screen;->getX()I

    move-result v11

    move v7, v11

    .local v7, "sx":I
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/glass/ui/Screen;->getY()I

    move-result v11

    move v8, v11

    .local v8, "sy":I
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/glass/ui/Screen;->getWidth()I

    move-result v11

    move v9, v11

    .local v9, "sw":I
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/glass/ui/Screen;->getHeight()I

    move-result v11

    move v10, v11

    .line 638
    .local v10, "sh":I
    move v11, v0

    move v12, v7

    move v13, v9

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_0

    move v11, v0

    move v12, v2

    add-int/2addr v11, v12

    move v12, v7

    if-le v11, v12, :cond_0

    move v11, v1

    move v12, v8

    move v13, v10

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_0

    move v11, v1

    move v12, v3

    add-int/2addr v11, v12

    move v12, v8

    if-le v11, v12, :cond_0

    .line 639
    move v11, v4

    move-object v12, v6

    invoke-virtual {v12}, Lcom/sun/glass/ui/Screen;->getRenderScale()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_0

    .line 640
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/glass/ui/Screen;->getRenderScale()F

    move-result v11

    move v4, v11

    .line 643
    :cond_0
    goto :goto_0

    .line 644
    .end local v6    # "s":Lcom/sun/glass/ui/Screen;
    .end local v7    # "sx":I
    .end local v8    # "sy":I
    .end local v9    # "sw":I
    .end local v10    # "sh":I
    :cond_1
    move v11, v4

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2

    const/high16 v11, 0x3f800000    # 1.0f

    :goto_1
    move v0, v11

    .end local v0    # "x":I
    return v0

    .restart local v0    # "x":I
    :cond_2
    move v11, v4

    goto :goto_1
.end method

.method public static invokeAndWait(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "runnable":Ljava/lang/Runnable;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 463
    .line 470
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/Application;->isEventThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 470
    :goto_1
    goto :goto_0

    .line 468
    :cond_1
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Application;->_invokeAndWait(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static invokeLater(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "runnable":Ljava/lang/Runnable;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 479
    .line 482
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Application;->_invokeLater(Ljava/lang/Runnable;)V

    .line 482
    goto :goto_0
.end method

.method public static isEventThread()Z
    .locals 2

    .prologue
    .line 421
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/sun/glass/ui/Application;->eventThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNestedLoopRunning()Z
    .locals 1

    .prologue
    .line 544
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 545
    sget v0, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$getDataDirectory$39()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$run$38(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "launchable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/sun/glass/ui/Screen;->initScreens()V

    .line 155
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 156
    return-void
.end method

.method private static synthetic lambda$static$37()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 102
    const-string v1, "glass.disableThreadChecks"

    const-string v2, "false"

    .line 103
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 104
    .local v0, "str":Ljava/lang/String;
    const-string v1, "true"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "str":Ljava/lang/String;
    return-object v0
.end method

.method static leaveNestedEventLoop(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "retValue":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 536
    sget v1, Lcom/sun/glass/ui/Application;->nestedEventLoopCounter:I

    if-nez v1, :cond_0

    .line 537
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not in a nested event loop"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Application;->_leaveNestedEventLoop(Ljava/lang/Object;)V

    .line 541
    return-void
.end method

.method protected static declared-synchronized loadNativeLibrary()V
    .locals 2

    .prologue
    .line 120
    const-class v1, Lcom/sun/glass/ui/Application;

    monitor-enter v1

    :try_start_0
    const-string v0, "glass"

    invoke-static {v0}, Lcom/sun/glass/ui/Application;->loadNativeLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit v1

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static declared-synchronized loadNativeLibrary(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "libname":Ljava/lang/String;
    const-class v2, Lcom/sun/glass/ui/Application;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/sun/glass/ui/Application;->loaded:Z

    if-nez v1, :cond_0

    .line 112
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sun/glass/ui/Application;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit v2

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "libname":Ljava/lang/String;
    throw v0
.end method

.method private notifyDidBecomeActive()V
    .locals 6

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/glass/ui/Application;->initialActiveEventReceived:Z

    .line 245
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 246
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 247
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidBecomeActiveAction(Lcom/sun/glass/ui/Application;J)V

    .line 249
    :cond_0
    return-void
.end method

.method private notifyDidFinishLaunching()V
    .locals 6

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 231
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 232
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidFinishLaunchingAction(Lcom/sun/glass/ui/Application;J)V

    .line 234
    :cond_0
    return-void
.end method

.method private notifyDidHide()V
    .locals 6

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 289
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 290
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidHideAction(Lcom/sun/glass/ui/Application;J)V

    .line 292
    :cond_0
    return-void
.end method

.method private notifyDidReceiveMemoryWarning()V
    .locals 6

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 275
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 276
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidReceiveMemoryWarning(Lcom/sun/glass/ui/Application;J)V

    .line 278
    :cond_0
    return-void
.end method

.method private notifyDidResignActive()V
    .locals 6

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 268
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 269
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidResignActiveAction(Lcom/sun/glass/ui/Application;J)V

    .line 271
    :cond_0
    return-void
.end method

.method private notifyDidUnhide()V
    .locals 6

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 303
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 304
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleDidUnhideAction(Lcom/sun/glass/ui/Application;J)V

    .line 306
    :cond_0
    return-void
.end method

.method private notifyOpenFiles([Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 310
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/Application;
    move-object v2, p1

    .local v2, "files":[Ljava/lang/String;
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/glass/ui/Application;->initialActiveEventReceived:Z

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/Application;->initialOpenedFiles:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 312
    move-object v4, v1

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/glass/ui/Application;->initialOpenedFiles:[Ljava/lang/String;

    .line 314
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v4

    move-object v3, v4

    .line 315
    .local v3, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v2

    if-eqz v4, :cond_1

    .line 316
    move-object v4, v3

    move-object v5, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/glass/ui/Application$EventHandler;->handleOpenFilesAction(Lcom/sun/glass/ui/Application;J[Ljava/lang/String;)V

    .line 318
    :cond_1
    return-void
.end method

.method private notifyThemeChanged(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, p1

    .local v1, "themeName":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v3

    move-object v2, v3

    .line 260
    .local v2, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 261
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/Application$EventHandler;->handleThemeChanged(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 263
    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Application;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private notifyWillBecomeActive()V
    .locals 6

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 238
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 239
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleWillBecomeActiveAction(Lcom/sun/glass/ui/Application;J)V

    .line 241
    :cond_0
    return-void
.end method

.method private notifyWillFinishLaunching()V
    .locals 6

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 224
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 225
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleWillFinishLaunchingAction(Lcom/sun/glass/ui/Application;J)V

    .line 227
    :cond_0
    return-void
.end method

.method private notifyWillHide()V
    .locals 6

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 282
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 283
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleWillHideAction(Lcom/sun/glass/ui/Application;J)V

    .line 285
    :cond_0
    return-void
.end method

.method private notifyWillQuit()V
    .locals 6

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 322
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 323
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleQuitAction(Lcom/sun/glass/ui/Application;J)V

    .line 325
    :cond_0
    return-void
.end method

.method private notifyWillResignActive()V
    .locals 6

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 253
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 254
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleWillResignActiveAction(Lcom/sun/glass/ui/Application;J)V

    .line 256
    :cond_0
    return-void
.end method

.method private notifyWillUnhide()V
    .locals 6

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;

    move-result-object v2

    move-object v1, v2

    .line 296
    .local v1, "handler":Lcom/sun/glass/ui/Application$EventHandler;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 297
    move-object v2, v1

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/glass/ui/Application$EventHandler;->handleWillUnhideAction(Lcom/sun/glass/ui/Application;J)V

    .line 299
    :cond_0
    return-void
.end method

.method public static reportException(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object v1, v3

    .line 451
    .local v1, "currentThread":Ljava/lang/Thread;
    move-object v3, v1

    .line 452
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    move-object v2, v3

    .line 453
    .local v2, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    move-object v3, v2

    move-object v4, v1

    move-object v5, v0

    invoke-interface {v3, v4, v5}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 454
    return-void
.end method

.method public static run(Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "launchable":Ljava/lang/Runnable;
    sget-object v2, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    if-eqz v2, :cond_0

    .line 144
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Application is already running"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/PlatformFactory;->getPlatformFactory()Lcom/sun/glass/ui/PlatformFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/PlatformFactory;->createApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    sput-object v2, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    .line 153
    :try_start_0
    sget-object v2, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/glass/ui/Application$$Lambda$1;->lambdaFactory$(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->runLoop(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 158
    .local v1, "t":Ljava/lang/Throwable;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setDeviceDetails(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "details":Ljava/util/Map;
    move-object v1, v0

    sput-object v1, Lcom/sun/glass/ui/Application;->deviceDetails:Ljava/util/Map;

    .line 131
    return-void
.end method

.method protected static setEventThread(Ljava/lang/Thread;)V
    .locals 2

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "thread":Ljava/lang/Thread;
    move-object v1, v0

    sput-object v1, Lcom/sun/glass/ui/Application;->eventThread:Ljava/lang/Thread;

    .line 410
    return-void
.end method


# virtual methods
.method protected abstract _enterNestedEventLoop()Ljava/lang/Object;
.end method

.method protected abstract _getKeyCodeForChar(C)I
.end method

.method protected abstract _invokeAndWait(Ljava/lang/Runnable;)V
.end method

.method protected abstract _invokeLater(Ljava/lang/Runnable;)V
.end method

.method protected abstract _leaveNestedEventLoop(Ljava/lang/Object;)V
.end method

.method protected _supportsInputMethods()Z
    .locals 2

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method protected _supportsSystemMenu()Z
    .locals 2

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method protected abstract _supportsTransparentWindows()Z
.end method

.method protected abstract _supportsUnifiedWindows()Z
.end method

.method public createAccessible()Lcom/sun/glass/ui/Accessible;
    .locals 2

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public abstract createCursor(I)Lcom/sun/glass/ui/Cursor;
.end method

.method public abstract createCursor(IILcom/sun/glass/ui/Pixels;)Lcom/sun/glass/ui/Cursor;
.end method

.method public final createEventLoop()Lcom/sun/glass/ui/EventLoop;
    .locals 4

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    new-instance v1, Lcom/sun/glass/ui/EventLoop;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/EventLoop;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public final createMenu(Ljava/lang/String;)Lcom/sun/glass/ui/Menu;
    .locals 6

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    new-instance v2, Lcom/sun/glass/ui/Menu;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/Menu;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public final createMenu(Ljava/lang/String;Z)Lcom/sun/glass/ui/Menu;
    .locals 8

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move v2, p2

    .local v2, "enabled":Z
    new-instance v3, Lcom/sun/glass/ui/Menu;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/glass/ui/Menu;-><init>(Ljava/lang/String;Z)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public final createMenuBar()Lcom/sun/glass/ui/MenuBar;
    .locals 4

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    new-instance v1, Lcom/sun/glass/ui/MenuBar;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/MenuBar;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public final createMenuItem(Ljava/lang/String;)Lcom/sun/glass/ui/MenuItem;
    .locals 5

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/Application;->createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;)Lcom/sun/glass/ui/MenuItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public final createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;)Lcom/sun/glass/ui/MenuItem;
    .locals 8

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, p2

    .local v2, "callback":Lcom/sun/glass/ui/MenuItem$Callback;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/glass/ui/Application;->createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;II)Lcom/sun/glass/ui/MenuItem;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public final createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;II)Lcom/sun/glass/ui/MenuItem;
    .locals 11

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, p2

    .local v2, "callback":Lcom/sun/glass/ui/MenuItem$Callback;
    move v3, p3

    .local v3, "shortcutKey":I
    move v4, p4

    .local v4, "shortcutModifiers":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/sun/glass/ui/Application;->createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;)Lcom/sun/glass/ui/MenuItem;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public final createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;)Lcom/sun/glass/ui/MenuItem;
    .locals 14

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "callback":Lcom/sun/glass/ui/MenuItem$Callback;
    move/from16 v3, p3

    .local v3, "shortcutKey":I
    move/from16 v4, p4

    .local v4, "shortcutModifiers":I
    move-object/from16 v5, p5

    .local v5, "pixels":Lcom/sun/glass/ui/Pixels;
    new-instance v6, Lcom/sun/glass/ui/MenuItem;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/sun/glass/ui/MenuItem;-><init>(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;IILcom/sun/glass/ui/Pixels;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public abstract createPixels(IILjava/nio/ByteBuffer;)Lcom/sun/glass/ui/Pixels;
.end method

.method public abstract createPixels(IILjava/nio/IntBuffer;)Lcom/sun/glass/ui/Pixels;
.end method

.method public abstract createPixels(IILjava/nio/IntBuffer;F)Lcom/sun/glass/ui/Pixels;
.end method

.method public abstract createRobot()Lcom/sun/glass/ui/Robot;
.end method

.method public abstract createTimer(Ljava/lang/Runnable;)Lcom/sun/glass/ui/Timer;
.end method

.method public abstract createView()Lcom/sun/glass/ui/View;
.end method

.method public abstract createWindow(J)Lcom/sun/glass/ui/Window;
.end method

.method public final createWindow(Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;
    .locals 7

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    move v2, p2

    .local v2, "styleMask":I
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/glass/ui/Application;->createWindow(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public abstract createWindow(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;
.end method

.method protected finishTerminating()V
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/glass/ui/Application;->application:Lcom/sun/glass/ui/Application;

    .line 170
    return-void
.end method

.method public getDataDirectory()Ljava/lang/String;
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 218
    invoke-static {}, Lcom/sun/glass/ui/Application$$Lambda$2;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 219
    .local v1, "userHome":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Application;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public getEventHandler()Lcom/sun/glass/ui/Application$EventHandler;
    .locals 2

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Application;->eventHandler:Lcom/sun/glass/ui/Application$EventHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public getHighContrastTheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 678
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 184
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/Application;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return-object v0
.end method

.method public hasMultiTouch()Z
    .locals 2

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method public hasPointer()Z
    .locals 2

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method public hasTouch()Z
    .locals 2

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method public hasTwoLevelFocus()Z
    .locals 2

    .prologue
    .line 697
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method public hasVirtualKeyboard()Z
    .locals 2

    .prologue
    .line 701
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method public hasWindowManager()Z
    .locals 2

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method public installDefaultMenus(Lcom/sun/glass/ui/MenuBar;)V
    .locals 0
    .param p1, "menubar"    # Lcom/sun/glass/ui/MenuBar;

    .prologue
    .line 334
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 336
    return-void
.end method

.method public menuAboutAction()V
    .locals 3

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "about"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public notifyRenderingFinished()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method protected abstract runLoop(Ljava/lang/Runnable;)V
.end method

.method public setEventHandler(Lcom/sun/glass/ui/Application$EventHandler;)V
    .locals 5

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, p1

    .local v1, "eventHandler":Lcom/sun/glass/ui/Application$EventHandler;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 347
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Application;->eventHandler:Lcom/sun/glass/ui/Application$EventHandler;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Application;->initialOpenedFiles:[Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 348
    .local v2, "resendOpenFiles":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/glass/ui/Application;->eventHandler:Lcom/sun/glass/ui/Application$EventHandler;

    .line 349
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 351
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/Application;->initialOpenedFiles:[Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/Application;->notifyOpenFiles([Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void

    .line 347
    .end local v2    # "resendOpenFiles":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 201
    move-object v2, v1

    if-eqz v2, :cond_0

    const-string v2, "java"

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/Application;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/Application;->name:Ljava/lang/String;

    .line 204
    :cond_0
    return-void
.end method

.method public final setTerminateWhenLastWindowClosed(Z)V
    .locals 4

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    move v1, p1

    .local v1, "b":Z
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 362
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/glass/ui/Application;->terminateWhenLastWindowClosed:Z

    .line 363
    return-void
.end method

.method public final shouldTerminateWhenLastWindowClosed()Z
    .locals 2

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 358
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/Application;->terminateWhenLastWindowClosed:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method public shouldUpdateWindow()Z
    .locals 2

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 367
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method protected abstract staticCommonDialogs_showFileChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
.end method

.method protected abstract staticCommonDialogs_showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method protected abstract staticCursor_getBestSize(II)Lcom/sun/glass/ui/Size;
.end method

.method protected abstract staticCursor_setVisible(Z)V
.end method

.method protected abstract staticPixels_getNativeFormat()I
.end method

.method protected abstract staticScreen_getScreens()[Lcom/sun/glass/ui/Screen;
.end method

.method protected abstract staticScreen_getVideoRefreshPeriod()D
.end method

.method protected abstract staticTimer_getMaxPeriod()I
.end method

.method protected abstract staticTimer_getMinPeriod()I
.end method

.method protected abstract staticView_getMultiClickMaxX()I
.end method

.method protected abstract staticView_getMultiClickMaxY()I
.end method

.method protected abstract staticView_getMultiClickTime()J
.end method

.method public final supportsInputMethods()Z
    .locals 2

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 687
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/Application;->_supportsInputMethods()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method public final supportsSystemMenu()Z
    .locals 2

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 728
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/Application;->_supportsSystemMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method public final supportsTransparentWindows()Z
    .locals 2

    .prologue
    .line 692
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 693
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/Application;->_supportsTransparentWindows()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method public final supportsUnifiedWindows()Z
    .locals 2

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 719
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/Application;->_supportsUnifiedWindows()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/Application;
    return v0
.end method

.method public terminate()V
    .locals 9

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Application;
    invoke-static {}, Lcom/sun/glass/ui/Application;->checkEventThread()V

    .line 386
    :try_start_0
    new-instance v5, Ljava/util/LinkedList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-static {}, Lcom/sun/glass/ui/Window;->getWindows()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v1, v5

    .line 387
    .local v1, "windows":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Window;>;"
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/glass/ui/Window;

    move-object v3, v5

    .line 389
    .local v3, "window":Lcom/sun/glass/ui/Window;
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/Window;->setVisible(Z)V

    .line 390
    goto :goto_0

    .line 391
    .end local v3    # "window":Lcom/sun/glass/ui/Window;
    :cond_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/glass/ui/Window;

    move-object v3, v5

    .line 393
    .restart local v3    # "window":Lcom/sun/glass/ui/Window;
    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/glass/ui/Window;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    goto :goto_1

    .line 398
    .end local v3    # "window":Lcom/sun/glass/ui/Window;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/glass/ui/Application;->finishTerminating()V

    .line 399
    .line 400
    .end local v1    # "windows":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Window;>;"
    :goto_2
    return-void

    .line 395
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 396
    .local v1, "t":Ljava/lang/Throwable;
    move-object v5, v1

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/glass/ui/Application;->finishTerminating()V

    .line 399
    goto :goto_2

    .line 398
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/glass/ui/Application;->finishTerminating()V

    move-object v5, v4

    throw v5
.end method
