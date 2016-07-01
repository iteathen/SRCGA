.class Lcom/sun/glass/ui/monocle/X11Platform;
.super Lcom/sun/glass/ui/monocle/NativePlatform;
.source "X11Platform.java"


# instance fields
.field private final x11Input:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Platform;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/NativePlatform;-><init>()V

    .line 39
    invoke-static {}, Lcom/sun/glass/ui/monocle/LinuxSystem;->getLinuxSystem()Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/LinuxSystem;->loadLibrary()V

    .line 40
    move-object v1, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/X11Platform$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/X11Platform;->x11Input:Z

    .line 42
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/X11Platform;->lambda$new$121()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$121()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 41
    const-string v0, "x11.input"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createCursor()Lcom/sun/glass/ui/monocle/NativeCursor;
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Platform;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/monocle/X11Platform;->x11Input:Z

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Lcom/sun/glass/ui/monocle/X11Cursor;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/X11Cursor;-><init>()V

    move-object v0, v1

    .line 67
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Platform;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/X11Platform;
    :cond_0
    new-instance v1, Lcom/sun/glass/ui/monocle/X11WarpingCursor;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/X11WarpingCursor;-><init>()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected createInputDeviceRegistry()Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Platform;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/glass/ui/monocle/X11Platform;->x11Input:Z

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/X11InputDeviceRegistry;-><init>()V

    move-object v0, v1

    .line 54
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Platform;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/X11Platform;
    :cond_0
    new-instance v1, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/LinuxInputDeviceRegistry;-><init>(Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected createScreen()Lcom/sun/glass/ui/monocle/NativeScreen;
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Platform;
    new-instance v1, Lcom/sun/glass/ui/monocle/X11Screen;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/glass/ui/monocle/X11Platform;->x11Input:Z

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/X11Screen;-><init>(Z)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Platform;
    return-object v0
.end method

.method public declared-synchronized getAcceleratedScreen([I)Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/glass/ui/monocle/GLException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11Platform;
    move-object v1, p1

    .local v1, "attributes":[I
    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/glass/ui/monocle/X11Platform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    if-nez v2, :cond_0

    .line 87
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;-><init>([I)V

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/X11Platform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    .line 89
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/X11Platform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Platform;
    monitor-exit v6

    return-object v0

    .line 86
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/X11Platform;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11Platform;
    throw v0
.end method
