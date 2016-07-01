.class public final Lcom/sun/glass/ui/monocle/MonocleApplication;
.super Lcom/sun/glass/ui/Application;
.source "MonocleApplication.java"


# static fields
.field private static final DEVICE_5WAY:I = 0x3

.field private static final DEVICE_MAX:I = 0x4

.field private static final DEVICE_MULTITOUCH:I = 0x1

.field private static final DEVICE_PC_KEYBOARD:I = 0x4

.field private static final DEVICE_POINTER:I = 0x2

.field private static final DEVICE_TOUCH:I


# instance fields
.field private deviceFlags:[I

.field private final platform:Lcom/sun/glass/ui/monocle/NativePlatform;

.field private renderEndNotifier:Ljava/lang/Runnable;

.field private final runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

.field private shutdownHookThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/glass/ui/Application;-><init>()V

    .line 49
    move-object v3, v0

    .line 50
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/MonocleApplication;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    .line 51
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleApplication;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/NativePlatform;->getRunnableProcessor()Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/MonocleApplication;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    .line 66
    move-object v3, v0

    const/4 v4, 0x5

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    .line 68
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/glass/ui/monocle/MonocleApplication$$Lambda$1;->lambdaFactory$(Lcom/sun/glass/ui/monocle/MonocleApplication;)Ljava/lang/Runnable;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/glass/ui/monocle/MonocleApplication;->renderEndNotifier:Ljava/lang/Runnable;

    .line 71
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MonocleApplication;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/NativePlatform;->getInputDeviceRegistry()Lcom/sun/glass/ui/monocle/InputDeviceRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/InputDeviceRegistry;->getInputDevices()Ljavafx/collections/ObservableSet;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

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

    check-cast v3, Lcom/sun/glass/ui/monocle/InputDevice;

    move-object v2, v3

    .line 72
    .local v2, "device":Lcom/sun/glass/ui/monocle/InputDevice;
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/MonocleApplication;->updateDeviceFlags(Lcom/sun/glass/ui/monocle/InputDevice;Z)V

    .line 73
    goto :goto_0

    .line 74
    .end local v2    # "device":Lcom/sun/glass/ui/monocle/InputDevice;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/glass/ui/monocle/MonocleApplication;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/NativePlatform;->getInputDeviceRegistry()Lcom/sun/glass/ui/monocle/InputDeviceRegistry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/InputDeviceRegistry;->getInputDevices()Ljavafx/collections/ObservableSet;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/glass/ui/monocle/MonocleApplication$$Lambda$2;->lambdaFactory$(Lcom/sun/glass/ui/monocle/MonocleApplication;)Ljavafx/collections/SetChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/sun/glass/ui/monocle/MonocleApplication;)Lcom/sun/glass/ui/monocle/NativePlatform;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/glass/ui/monocle/MonocleApplication;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/MonocleApplication;->lambda$new$105()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/glass/ui/monocle/MonocleApplication;Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/MonocleApplication;->lambda$new$106(Ljavafx/collections/SetChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$2()Ljava/lang/Long;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleApplication;->lambda$runLoop$107()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$105()V
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/glass/ui/monocle/NativeScreen;->swapBuffers()V

    return-void
.end method

.method private synthetic lambda$new$106(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/SetChangeListener$Change;->wasAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/SetChangeListener$Change;->getElementAdded()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/glass/ui/monocle/InputDevice;

    move-object v2, v3

    .line 78
    .local v2, "device":Lcom/sun/glass/ui/monocle/InputDevice;
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/MonocleApplication;->updateDeviceFlags(Lcom/sun/glass/ui/monocle/InputDevice;Z)V

    .line 79
    .line 83
    .end local v2    # "device":Lcom/sun/glass/ui/monocle/InputDevice;
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/SetChangeListener$Change;->wasRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/SetChangeListener$Change;->getElementRemoved()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/glass/ui/monocle/InputDevice;

    move-object v2, v3

    .line 81
    .restart local v2    # "device":Lcom/sun/glass/ui/monocle/InputDevice;
    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/MonocleApplication;->updateDeviceFlags(Lcom/sun/glass/ui/monocle/InputDevice;Z)V

    goto :goto_0
.end method

.method private static synthetic lambda$runLoop$107()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 116
    const-string v1, "monocle.stackSize"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method private updateDeviceFlags(Lcom/sun/glass/ui/monocle/InputDevice;Z)V
    .locals 10

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/InputDevice;
    move v2, p2

    .local v2, "added":Z
    move v4, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 89
    .local v3, "modifier":I
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/glass/ui/monocle/InputDevice;->isTouch()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v5, 0x0

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    move v7, v3

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 92
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/glass/ui/monocle/InputDevice;->isMultiTouch()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v5, 0x1

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    move v7, v3

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 95
    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/glass/ui/monocle/InputDevice;->isRelative()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v5, 0x2

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    move v7, v3

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 97
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    const/4 v5, 0x1

    if-lt v4, v5, :cond_6

    move v4, v2

    if-eqz v4, :cond_6

    .line 98
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleApplication;->staticCursor_setVisible(Z)V

    .line 103
    :cond_2
    :goto_1
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/glass/ui/monocle/InputDevice;->isFullKeyboard()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v5, 0x4

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    move v7, v3

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 106
    :cond_3
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/glass/ui/monocle/InputDevice;->is5Way()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v5, 0x3

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    move v7, v3

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 109
    :cond_4
    return-void

    .line 88
    .end local v3    # "modifier":I
    :cond_5
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 99
    .restart local v3    # "modifier":I
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    move v4, v2

    if-nez v4, :cond_2

    .line 100
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleApplication;->staticCursor_setVisible(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected _enterNestedEventLoop()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->enterNestedEventLoop()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method protected _getKeyCodeForChar(C)I
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move v1, p1

    .local v1, "c":C
    invoke-static {}, Lcom/sun/glass/ui/monocle/KeyInput;->getInstance()Lcom/sun/glass/ui/monocle/KeyInput;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/KeyInput;->getKeyCodeForChar(C)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0
.end method

.method protected _invokeAndWait(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MonocleApplication;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method protected _invokeLater(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MonocleApplication;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->invokeLater(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method protected _leaveNestedEventLoop(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, p1

    .local v1, "retValue":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MonocleApplication;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->leaveNestedEventLoop(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method protected _supportsTransparentWindows()Z
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0
.end method

.method protected _supportsUnifiedWindows()Z
    .locals 2

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0
.end method

.method public createCursor(I)Lcom/sun/glass/ui/Cursor;
    .locals 6

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move v1, p1

    .local v1, "type":I
    new-instance v2, Lcom/sun/glass/ui/monocle/MonocleCursor;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/MonocleCursor;-><init>(I)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method public createCursor(IILcom/sun/glass/ui/Pixels;)Lcom/sun/glass/ui/Cursor;
    .locals 10

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, p3

    .local v3, "pixels":Lcom/sun/glass/ui/Pixels;
    new-instance v4, Lcom/sun/glass/ui/monocle/MonocleCursor;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/MonocleCursor;-><init>(IILcom/sun/glass/ui/Pixels;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method public createPixels(IILjava/nio/ByteBuffer;)Lcom/sun/glass/ui/Pixels;
    .locals 10

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/ByteBuffer;
    new-instance v4, Lcom/sun/glass/ui/monocle/MonoclePixels;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/MonoclePixels;-><init>(IILjava/nio/ByteBuffer;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method public createPixels(IILjava/nio/IntBuffer;)Lcom/sun/glass/ui/Pixels;
    .locals 10

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/IntBuffer;
    new-instance v4, Lcom/sun/glass/ui/monocle/MonoclePixels;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/MonoclePixels;-><init>(IILjava/nio/IntBuffer;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method public createPixels(IILjava/nio/IntBuffer;F)Lcom/sun/glass/ui/Pixels;
    .locals 12

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/IntBuffer;
    move/from16 v4, p4

    .local v4, "scale":F
    new-instance v5, Lcom/sun/glass/ui/monocle/MonoclePixels;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v1

    move v8, v2

    move-object v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/glass/ui/monocle/MonoclePixels;-><init>(IILjava/nio/IntBuffer;F)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method public createRobot()Lcom/sun/glass/ui/Robot;
    .locals 4

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    new-instance v1, Lcom/sun/glass/ui/monocle/MonocleRobot;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/MonocleRobot;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method public createTimer(Ljava/lang/Runnable;)Lcom/sun/glass/ui/Timer;
    .locals 6

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, p1

    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Lcom/sun/glass/ui/monocle/MonocleTimer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/monocle/MonocleTimer;-><init>(Ljava/lang/Runnable;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method public createView()Lcom/sun/glass/ui/View;
    .locals 7

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MonocleApplication;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v2

    move-object v1, v2

    .line 165
    .local v1, "ns":Lcom/sun/glass/ui/monocle/NativeScreen;
    new-instance v2, Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/glass/ui/monocle/NativeScreen;->getScale()F

    move-result v4

    float-to-double v4, v4

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/MonocleView;-><init>(D)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method public createWindow(J)Lcom/sun/glass/ui/Window;
    .locals 9

    .prologue
    .line 159
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-wide v2, p1

    .local v2, "parent":J
    new-instance v4, Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/glass/ui/monocle/MonocleWindow;-><init>(J)V

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v1
.end method

.method public createWindow(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;
    .locals 10

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object v2, p2

    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move v3, p3

    .local v3, "styleMask":I
    new-instance v4, Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;-><init>(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method enterDnDEventLoop()V
    .locals 2

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/MonocleApplication;->_enterNestedEventLoop()Ljava/lang/Object;

    move-result-object v1

    .line 372
    return-void
.end method

.method protected finishTerminating()V
    .locals 3

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/MonocleApplication;->shutdownHookThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    move-result v1

    .line 365
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/MonocleApplication;->setEventThread(Ljava/lang/Thread;)V

    .line 366
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/NativePlatform;->shutdown()V

    .line 367
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/glass/ui/Application;->finishTerminating()V

    .line 368
    return-void
.end method

.method public hasMultiTouch()Z
    .locals 3

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPointer()Z
    .locals 3

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasTouch()Z
    .locals 3

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasTwoLevelFocus()Z
    .locals 3

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasVirtualKeyboard()Z
    .locals 3

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasWindowManager()Z
    .locals 2

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0
.end method

.method leaveDndEventLoop()V
    .locals 3

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/monocle/MonocleApplication;->_leaveNestedEventLoop(Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method public notifyRenderingFinished()V
    .locals 2

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->renderEndNotifier:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/MonocleApplication;->invokeLater(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method protected runLoop(Ljava/lang/Runnable;)V
    .locals 13

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, p1

    .local v1, "launchable":Ljava/lang/Runnable;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/MonocleApplication;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->invokeLater(Ljava/lang/Runnable;)V

    .line 114
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleApplication$$Lambda$3;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v5

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v2, v5

    .line 117
    .local v2, "stackSize":J
    new-instance v5, Ljava/lang/Thread;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    new-instance v7, Ljava/lang/ThreadGroup;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "Event"

    invoke-direct {v8, v9}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/glass/ui/monocle/MonocleApplication;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    const-string v9, "Event Thread"

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    move-object v4, v5

    .line 122
    .local v4, "t":Ljava/lang/Thread;
    move-object v5, v4

    invoke-static {v5}, Lcom/sun/glass/ui/monocle/MonocleApplication;->setEventThread(Ljava/lang/Thread;)V

    .line 123
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 124
    move-object v5, v0

    new-instance v6, Lcom/sun/glass/ui/monocle/MonocleApplication$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    const-string v9, "Monocle shutdown hook"

    invoke-direct {v7, v8, v9}, Lcom/sun/glass/ui/monocle/MonocleApplication$1;-><init>(Lcom/sun/glass/ui/monocle/MonocleApplication;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/sun/glass/ui/monocle/MonocleApplication;->shutdownHookThread:Ljava/lang/Thread;

    .line 129
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/MonocleApplication;->shutdownHookThread:Ljava/lang/Thread;

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 130
    return-void
.end method

.method protected staticCommonDialogs_showFileChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Lcom/sun/glass/ui/CommonDialogs$ExtensionFilter;I)Lcom/sun/glass/ui/CommonDialogs$FileChooserResult;
    .locals 12

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object v2, p2

    .local v2, "folder":Ljava/lang/String;
    move-object v3, p3

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
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v9
.end method

.method protected staticCommonDialogs_showFolderChooser(Lcom/sun/glass/ui/Window;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, p1

    .local v1, "owner":Lcom/sun/glass/ui/Window;
    move-object v2, p2

    .local v2, "folder":Ljava/lang/String;
    move-object v3, p3

    .local v3, "title":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 303
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method protected staticCursor_getBestSize(II)Lcom/sun/glass/ui/Size;
    .locals 5

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/NativePlatform;->getCursor()Lcom/sun/glass/ui/monocle/NativeCursor;

    move-result-object v4

    move-object v3, v4

    .line 187
    .local v3, "cursor":Lcom/sun/glass/ui/monocle/NativeCursor;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/NativeCursor;->getBestSize()Lcom/sun/glass/ui/Size;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v0
.end method

.method protected staticCursor_setVisible(Z)V
    .locals 6

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move v1, p1

    .local v1, "visible":Z
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/NativePlatform;->getCursor()Lcom/sun/glass/ui/monocle/NativeCursor;

    move-result-object v3

    move-object v2, v3

    .line 181
    .local v2, "cursor":Lcom/sun/glass/ui/monocle/NativeCursor;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleApplication;->deviceFlags:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/NativeCursor;->setVisibility(Z)V

    .line 182
    return-void

    .line 181
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected staticPixels_getNativeFormat()I
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/MonocleApplication;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/glass/ui/monocle/NativeScreen;->getNativeFormat()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0
.end method

.method protected staticScreen_getScreens()[Lcom/sun/glass/ui/Screen;
    .locals 13

    .prologue
    .line 223
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    const/4 v6, 0x0

    move-object v2, v6

    .line 225
    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    move-object v6, v1

    :try_start_0
    iget-object v6, v6, Lcom/sun/glass/ui/monocle/MonocleApplication;->platform:Lcom/sun/glass/ui/monocle/NativePlatform;

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v6

    move-object v3, v6

    .line 226
    .local v3, "ns":Lcom/sun/glass/ui/monocle/NativeScreen;
    new-instance v6, Lcom/sun/glass/ui/monocle/MonocleApplication$2;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/monocle/MonocleApplication$2;-><init>(Lcom/sun/glass/ui/monocle/MonocleApplication;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    move-object v4, v6

    .line 248
    .local v4, "c":Ljava/lang/reflect/Constructor;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 249
    move-object v6, v4

    const/16 v7, 0xe

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-wide/16 v10, 0x1

    .line 250
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v3

    .line 251
    invoke-interface {v10}, Lcom/sun/glass/ui/monocle/NativeScreen;->getDepth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 252
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x4

    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v3

    invoke-interface {v11}, Lcom/sun/glass/ui/monocle/NativeScreen;->getScale()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x5

    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v10

    int-to-float v10, v10

    move-object v11, v3

    invoke-interface {v11}, Lcom/sun/glass/ui/monocle/NativeScreen;->getScale()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x6

    const/4 v10, 0x0

    .line 253
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/16 v9, 0x8

    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/16 v9, 0x9

    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/16 v9, 0xa

    move-object v10, v3

    .line 254
    invoke-interface {v10}, Lcom/sun/glass/ui/monocle/NativeScreen;->getDPI()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/16 v9, 0xb

    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/glass/ui/monocle/NativeScreen;->getDPI()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/16 v9, 0xc

    move-object v10, v3

    .line 255
    invoke-interface {v10}, Lcom/sun/glass/ui/monocle/NativeScreen;->getScale()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/16 v9, 0xd

    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/glass/ui/monocle/NativeScreen;->getScale()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    .line 249
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/glass/ui/Screen;

    move-object v2, v6

    .line 257
    new-instance v6, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    move-object v5, v6

    .line 258
    .local v5, "mouseState":Lcom/sun/glass/ui/monocle/MouseState;
    move-object v6, v5

    move-object v7, v3

    invoke-interface {v7}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/MouseState;->setX(I)V

    .line 259
    move-object v6, v5

    move-object v7, v3

    invoke-interface {v7}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/MouseState;->setY(I)V

    .line 260
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v6

    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 266
    .line 267
    .end local v3    # "ns":Lcom/sun/glass/ui/monocle/NativeScreen;
    .end local v4    # "c":Ljava/lang/reflect/Constructor;
    .end local v5    # "mouseState":Lcom/sun/glass/ui/monocle/MouseState;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/sun/glass/ui/Screen;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-object v1

    .line 262
    .restart local v1    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 263
    .local v3, "e":Ljava/lang/Exception;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    goto :goto_0

    .line 264
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 265
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method protected staticScreen_getVideoRefreshPeriod()D
    .locals 3

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-wide v0
.end method

.method protected staticTimer_getMaxPeriod()I
    .locals 2

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleTimer;->getMaxPeriod_impl()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0
.end method

.method protected staticTimer_getMinPeriod()I
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleTimer;->getMinPeriod_impl()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0
.end method

.method protected staticView_getMultiClickMaxX()I
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleView;->_getMultiClickMaxX()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0
.end method

.method protected staticView_getMultiClickMaxY()I
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleView;->_getMultiClickMaxY()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return v0
.end method

.method protected staticView_getMultiClickTime()J
    .locals 3

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MonocleView;->_getMultiClickTime()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleApplication;
    return-wide v0
.end method
