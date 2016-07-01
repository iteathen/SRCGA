.class public Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;
.super Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
.source "AndroidInputDeviceRegistry.java"


# static fields
.field private static instance:Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;


# instance fields
.field private androidDevice:Lcom/sun/glass/ui/monocle/AndroidInputDevice;

.field private processor:Lcom/sun/glass/ui/monocle/AndroidInputProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->instance:Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/InputDeviceRegistry;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$lambda$0()V
    .locals 0

    invoke-static {}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->lambda$registerDevice$84()V

    return-void
.end method

.method private addDeviceInternal(Lcom/sun/glass/ui/monocle/AndroidInputDevice;Ljava/lang/String;)Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->createInputProcessor(Lcom/sun/glass/ui/monocle/AndroidInputDevice;)Lcom/sun/glass/ui/monocle/AndroidInputProcessor;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->processor:Lcom/sun/glass/ui/monocle/AndroidInputProcessor;

    .line 95
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->processor:Lcom/sun/glass/ui/monocle/AndroidInputProcessor;

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/AndroidInputDevice;->setInputProcessor(Lcom/sun/glass/ui/monocle/AndroidInputProcessor;)V

    .line 96
    new-instance v4, Ljava/lang/Thread;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v3, v4

    .line 97
    .local v3, "thread":Ljava/lang/Thread;
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 98
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 99
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 100
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->devices:Ljavafx/collections/ObservableSet;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableSet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 102
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;
    return-object v0
.end method

.method private createDevice()V
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "[MON] Create device"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    new-instance v2, Lcom/sun/glass/ui/monocle/AndroidInputDevice;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/AndroidInputDevice;-><init>()V

    move-object v1, v2

    .line 88
    .local v1, "device":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    const-string v5, "Android Touch Input"

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->addDeviceInternal(Lcom/sun/glass/ui/monocle/AndroidInputDevice;Ljava/lang/String;)Lcom/sun/glass/ui/monocle/AndroidInputDevice;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->androidDevice:Lcom/sun/glass/ui/monocle/AndroidInputDevice;

    .line 89
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "[MON] Create device done, add done"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private createInputProcessor(Lcom/sun/glass/ui/monocle/AndroidInputDevice;)Lcom/sun/glass/ui/monocle/AndroidInputProcessor;
    .locals 6

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    new-instance v2, Lcom/sun/glass/ui/monocle/AndroidInputProcessor;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/AndroidInputProcessor;-><init>(Lcom/sun/glass/ui/monocle/AndroidInputDevice;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;
    return-object v0
.end method

.method public static dispatchKeyEvent(II[CI)V
    .locals 9

    .prologue
    .line 79
    move v0, p0

    .local v0, "type":I
    move v1, p1

    .local v1, "key":I
    move-object v2, p2

    .local v2, "chars":[C
    move v3, p3

    .local v3, "modifiers":I
    sget-object v4, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->instance:Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->processor:Lcom/sun/glass/ui/monocle/AndroidInputProcessor;

    move v5, v0

    move v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/AndroidInputProcessor;->dispatchKeyEvent(II[CI)V

    .line 80
    return-void
.end method

.method static getInstance()Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->instance:Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;

    return-object v0
.end method

.method private gotTouchEvent(Lcom/sun/glass/ui/monocle/TouchState;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;
    move-object v1, p1

    .local v1, "touchState":Lcom/sun/glass/ui/monocle/TouchState;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->androidDevice:Lcom/sun/glass/ui/monocle/AndroidInputDevice;

    if-nez v2, :cond_0

    .line 66
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "[MON] got touch event, but no registered device yet"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 68
    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->processor:Lcom/sun/glass/ui/monocle/AndroidInputProcessor;

    if-nez v2, :cond_1

    .line 71
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "[MON] got touch event, but processor not yet initialized"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->processor:Lcom/sun/glass/ui/monocle/AndroidInputProcessor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/AndroidInputProcessor;->pushEvent(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 76
    goto :goto_0
.end method

.method public static gotTouchEventFromNative(I[I[I[I[II)V
    .locals 13

    .prologue
    .line 47
    move v0, p0

    .local v0, "count":I
    move-object v1, p1

    .local v1, "actions":[I
    move-object v2, p2

    .local v2, "ids":[I
    move-object/from16 v3, p3

    .local v3, "x":[I
    move-object/from16 v4, p4

    .local v4, "y":[I
    move/from16 v5, p5

    .local v5, "primary":I
    new-instance v9, Lcom/sun/glass/ui/monocle/TouchState;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lcom/sun/glass/ui/monocle/TouchState;-><init>()V

    move-object v6, v9

    .line 49
    .local v6, "touchState":Lcom/sun/glass/ui/monocle/TouchState;
    move v9, v5

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 50
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "don\'t add points, primary = -1"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    :cond_0
    sget-object v9, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->instance:Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;

    move-object v10, v6

    invoke-direct {v9, v10}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->gotTouchEvent(Lcom/sun/glass/ui/monocle/TouchState;)V

    .line 62
    return-void

    .line 53
    :cond_1
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_0
    move v9, v7

    move v10, v0

    if-ge v9, v10, :cond_0

    .line 54
    new-instance v9, Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lcom/sun/glass/ui/monocle/TouchState$Point;-><init>()V

    move-object v8, v9

    .line 55
    .local v8, "p":Lcom/sun/glass/ui/monocle/TouchState$Point;
    move-object v9, v8

    move-object v10, v2

    move v11, v7

    aget v10, v10, v11

    iput v10, v9, Lcom/sun/glass/ui/monocle/TouchState$Point;->id:I

    .line 56
    move-object v9, v8

    move-object v10, v3

    move v11, v7

    aget v10, v10, v11

    iput v10, v9, Lcom/sun/glass/ui/monocle/TouchState$Point;->x:I

    .line 57
    move-object v9, v8

    move-object v10, v4

    move v11, v7

    aget v10, v10, v11

    iput v10, v9, Lcom/sun/glass/ui/monocle/TouchState$Point;->y:I

    .line 58
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Lcom/sun/glass/ui/monocle/TouchState;->addPoint(Lcom/sun/glass/ui/monocle/TouchState$Point;)Lcom/sun/glass/ui/monocle/TouchState$Point;

    move-result-object v9

    .line 53
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private static synthetic lambda$registerDevice$84()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->instance:Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;

    invoke-direct {v0}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->createDevice()V

    return-void
.end method

.method public static registerDevice()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry$$Lambda$1;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method


# virtual methods
.method removeDevice(Lcom/sun/glass/ui/monocle/AndroidInputDevice;)V
    .locals 7

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/AndroidInputDevice;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    move-object v2, v3

    .line 108
    .local v2, "security":Ljava/lang/SecurityManager;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 109
    move-object v3, v2

    new-instance v4, Ljava/security/AllPermission;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 111
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/AndroidInputDeviceRegistry;->devices:Ljavafx/collections/ObservableSet;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 112
    return-void
.end method
