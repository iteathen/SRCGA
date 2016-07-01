.class Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;
.super Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
.source "X11InputDeviceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;,
        Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonReleaseProcessor;,
        Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;
    }
.end annotation


# static fields
.field private static xLib:Lcom/sun/glass/ui/monocle/X;


# instance fields
.field private state:Lcom/sun/glass/ui/monocle/MouseState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/sun/glass/ui/monocle/X;->getX()Lcom/sun/glass/ui/monocle/X;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->xLib:Lcom/sun/glass/ui/monocle/X;

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/InputDeviceRegistry;-><init>()V

    .line 40
    new-instance v3, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$1;-><init>(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;)V

    move-object v1, v3

    .line 67
    .local v1, "device":Lcom/sun/glass/ui/monocle/InputDevice;
    new-instance v3, Ljava/lang/Thread;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$$Lambda$1;->lambdaFactory$(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;Lcom/sun/glass/ui/monocle/InputDevice;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v2, v3

    .line 88
    .local v2, "x11InputThread":Ljava/lang/Thread;
    move-object v3, v2

    const-string v4, "X11 Input"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 89
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 90
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;)Lcom/sun/glass/ui/monocle/MouseState;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "x0":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->state:Lcom/sun/glass/ui/monocle/MouseState;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;
    return-object v0
.end method

.method static synthetic access$100(I)I
    .locals 2

    .prologue
    .line 34
    move v0, p0

    .local v0, "x0":I
    move v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->buttonToGlassButton(I)I

    move-result v1

    move v0, v1

    .end local v0    # "x0":I
    return v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;Lcom/sun/glass/ui/monocle/InputDevice;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->lambda$new$120(Lcom/sun/glass/ui/monocle/InputDevice;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;Lcom/sun/glass/ui/monocle/InputDevice;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->lambda$null$119(Lcom/sun/glass/ui/monocle/InputDevice;)V

    return-void
.end method

.method private static buttonToGlassButton(I)I
    .locals 2

    .prologue
    .line 177
    move v0, p0

    .local v0, "button":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 181
    const/16 v1, 0xd3

    move v0, v1

    .end local v0    # "button":I
    :goto_0
    return v0

    .line 178
    .restart local v0    # "button":I
    :pswitch_0
    const/16 v1, 0xd4

    move v0, v1

    goto :goto_0

    .line 179
    :pswitch_1
    const/16 v1, 0xd6

    move v0, v1

    goto :goto_0

    .line 180
    :pswitch_2
    const/16 v1, 0xd5

    move v0, v1

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic lambda$new$120(Lcom/sun/glass/ui/monocle/InputDevice;)V
    .locals 16

    .prologue
    .line 69
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;
    move-object/from16 v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/InputDevice;
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v10

    move-object v2, v10

    .line 70
    .local v2, "platform":Lcom/sun/glass/ui/monocle/NativePlatform;
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v10

    check-cast v10, Lcom/sun/glass/ui/monocle/X11Screen;

    move-object v3, v10

    .line 71
    .local v3, "screen":Lcom/sun/glass/ui/monocle/X11Screen;
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/X11Screen;->getDisplay()J

    move-result-wide v10

    move-wide v4, v10

    .line 72
    .local v4, "display":J
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/X11Screen;->getNativeHandle()J

    move-result-wide v10

    move-wide v6, v10

    .line 73
    .local v6, "window":J
    move-object v10, v2

    .line 74
    invoke-virtual {v10}, Lcom/sun/glass/ui/monocle/NativePlatform;->getRunnableProcessor()Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-result-object v10

    move-object v8, v10

    .line 75
    .local v8, "runnableProcessor":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    move-object v10, v8

    move-object v11, v0

    move-object v12, v1

    invoke-static {v11, v12}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$$Lambda$2;->lambdaFactory$(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;Lcom/sun/glass/ui/monocle/InputDevice;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->invokeLater(Ljava/lang/Runnable;)V

    .line 78
    move-object v10, v0

    new-instance v11, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    iput-object v11, v10, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->state:Lcom/sun/glass/ui/monocle/MouseState;

    .line 79
    new-instance v10, Lcom/sun/glass/ui/monocle/X$XEvent;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lcom/sun/glass/ui/monocle/X$XEvent;-><init>()V

    move-object v9, v10

    .line 81
    .local v9, "event":Lcom/sun/glass/ui/monocle/X$XEvent;
    :goto_0
    sget-object v10, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-wide v11, v4

    move-object v13, v9

    iget-wide v13, v13, Lcom/sun/glass/ui/monocle/X$XEvent;->p:J

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/sun/glass/ui/monocle/X;->XNextEvent(JJ)V

    .line 82
    move-object v10, v9

    iget-wide v10, v10, Lcom/sun/glass/ui/monocle/X$XEvent;->p:J

    invoke-static {v10, v11}, Lcom/sun/glass/ui/monocle/X$XEvent;->getWindow(J)J

    move-result-wide v10

    move-wide v12, v6

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    move-object v10, v0

    move-object v11, v9

    move-object v12, v8

    invoke-direct {v10, v11, v12}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->processXEvent(Lcom/sun/glass/ui/monocle/X$XEvent;Lcom/sun/glass/ui/monocle/RunnableProcessor;)V

    goto :goto_0
.end method

.method private synthetic lambda$null$119(Lcom/sun/glass/ui/monocle/InputDevice;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/InputDevice;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;->devices:Ljavafx/collections/ObservableSet;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableSet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 77
    return-void
.end method

.method private processXEvent(Lcom/sun/glass/ui/monocle/X$XEvent;Lcom/sun/glass/ui/monocle/RunnableProcessor;)V
    .locals 13

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;
    move-object v1, p1

    .local v1, "event":Lcom/sun/glass/ui/monocle/X$XEvent;
    move-object v2, p2

    .local v2, "runnableProcessor":Lcom/sun/glass/ui/monocle/RunnableProcessor;
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/X$XEvent;->p:J

    invoke-static {v6, v7}, Lcom/sun/glass/ui/monocle/X$XEvent;->getType(J)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 102
    :pswitch_0
    new-instance v6, Lcom/sun/glass/ui/monocle/X$XButtonEvent;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/monocle/X$XButtonEvent;-><init>(Lcom/sun/glass/ui/monocle/X$XEvent;)V

    move-object v3, v6

    .line 103
    .local v3, "buttonEvent":Lcom/sun/glass/ui/monocle/X$XButtonEvent;
    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/X$XButtonEvent;->p:J

    invoke-static {v6, v7}, Lcom/sun/glass/ui/monocle/X$XButtonEvent;->getButton(J)I

    move-result v6

    move v4, v6

    .line 104
    .local v4, "button":I
    move-object v6, v2

    new-instance v7, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move v10, v4

    invoke-direct {v8, v9, v10}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonPressProcessor;-><init>(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;I)V

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->invokeLater(Ljava/lang/Runnable;)V

    .line 105
    goto :goto_0

    .line 108
    .end local v3    # "buttonEvent":Lcom/sun/glass/ui/monocle/X$XButtonEvent;
    .end local v4    # "button":I
    :pswitch_1
    new-instance v6, Lcom/sun/glass/ui/monocle/X$XButtonEvent;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/monocle/X$XButtonEvent;-><init>(Lcom/sun/glass/ui/monocle/X$XEvent;)V

    move-object v3, v6

    .line 109
    .restart local v3    # "buttonEvent":Lcom/sun/glass/ui/monocle/X$XButtonEvent;
    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/X$XButtonEvent;->p:J

    invoke-static {v6, v7}, Lcom/sun/glass/ui/monocle/X$XButtonEvent;->getButton(J)I

    move-result v6

    move v4, v6

    .line 110
    .restart local v4    # "button":I
    move-object v6, v2

    new-instance v7, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonReleaseProcessor;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move v10, v4

    invoke-direct {v8, v9, v10}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$ButtonReleaseProcessor;-><init>(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;I)V

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->invokeLater(Ljava/lang/Runnable;)V

    .line 112
    goto :goto_0

    .line 115
    .end local v3    # "buttonEvent":Lcom/sun/glass/ui/monocle/X$XButtonEvent;
    .end local v4    # "button":I
    :pswitch_2
    new-instance v6, Lcom/sun/glass/ui/monocle/X$XMotionEvent;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/glass/ui/monocle/X$XMotionEvent;-><init>(Lcom/sun/glass/ui/monocle/X$XEvent;)V

    move-object v3, v6

    .line 116
    .local v3, "motionEvent":Lcom/sun/glass/ui/monocle/X$XMotionEvent;
    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/X$XMotionEvent;->p:J

    invoke-static {v6, v7}, Lcom/sun/glass/ui/monocle/X$XMotionEvent;->getX(J)I

    move-result v6

    move v4, v6

    .line 117
    .local v4, "x":I
    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/X$XMotionEvent;->p:J

    invoke-static {v6, v7}, Lcom/sun/glass/ui/monocle/X$XMotionEvent;->getY(J)I

    move-result v6

    move v5, v6

    .line 118
    .local v5, "y":I
    move-object v6, v2

    new-instance v7, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move v10, v4

    move v11, v5

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry$MotionProcessor;-><init>(Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;II)V

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->invokeLater(Ljava/lang/Runnable;)V

    .line 119
    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
