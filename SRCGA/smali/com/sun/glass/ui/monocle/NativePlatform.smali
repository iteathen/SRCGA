.class public abstract Lcom/sun/glass/ui/monocle/NativePlatform;
.super Ljava/lang/Object;
.source "NativePlatform.java"


# static fields
.field private static inputDeviceRegistry:Lcom/sun/glass/ui/monocle/InputDeviceRegistry;


# instance fields
.field protected accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

.field private cursor:Lcom/sun/glass/ui/monocle/NativeCursor;

.field private final runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

.field private screen:Lcom/sun/glass/ui/monocle/NativeScreen;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/RunnableProcessor;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    .line 39
    return-void
.end method


# virtual methods
.method protected abstract createCursor()Lcom/sun/glass/ui/monocle/NativeCursor;
.end method

.method protected abstract createInputDeviceRegistry()Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
.end method

.method protected abstract createScreen()Lcom/sun/glass/ui/monocle/NativeScreen;
.end method

.method public declared-synchronized getAcceleratedScreen([I)Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/glass/ui/monocle/GLException;,
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    move-object v1, p1

    .local v1, "attributes":[I
    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/glass/ui/monocle/NativePlatform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    if-nez v2, :cond_0

    .line 127
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;-><init>([I)V

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/NativePlatform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    .line 129
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/NativePlatform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    monitor-exit v6

    return-object v0

    .line 126
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    throw v0
.end method

.method declared-synchronized getCursor()Lcom/sun/glass/ui/monocle/NativeCursor;
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->cursor:Lcom/sun/glass/ui/monocle/NativeCursor;

    if-nez v1, :cond_0

    .line 92
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/NativePlatform;->createCursor()Lcom/sun/glass/ui/monocle/NativeCursor;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->cursor:Lcom/sun/glass/ui/monocle/NativeCursor;

    .line 94
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->cursor:Lcom/sun/glass/ui/monocle/NativeCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    monitor-exit v3

    return-object v0

    .line 91
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    throw v0
.end method

.method declared-synchronized getInputDeviceRegistry()Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    move-object v2, p0

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sun/glass/ui/monocle/NativePlatform;->inputDeviceRegistry:Lcom/sun/glass/ui/monocle/InputDeviceRegistry;

    if-nez v1, :cond_0

    .line 67
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/NativePlatform;->createInputDeviceRegistry()Lcom/sun/glass/ui/monocle/InputDeviceRegistry;

    move-result-object v1

    sput-object v1, Lcom/sun/glass/ui/monocle/NativePlatform;->inputDeviceRegistry:Lcom/sun/glass/ui/monocle/InputDeviceRegistry;

    .line 69
    :cond_0
    sget-object v1, Lcom/sun/glass/ui/monocle/NativePlatform;->inputDeviceRegistry:Lcom/sun/glass/ui/monocle/InputDeviceRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    monitor-exit v2

    return-object v0

    .line 66
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    throw v0
.end method

.method getRunnableProcessor()Lcom/sun/glass/ui/monocle/RunnableProcessor;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    return-object v0
.end method

.method declared-synchronized getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->screen:Lcom/sun/glass/ui/monocle/NativeScreen;

    if-nez v1, :cond_0

    .line 111
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/NativePlatform;->createScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->screen:Lcom/sun/glass/ui/monocle/NativeScreen;

    .line 113
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->screen:Lcom/sun/glass/ui/monocle/NativeScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    monitor-exit v3

    return-object v0

    .line 110
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    throw v0
.end method

.method shutdown()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/NativePlatform;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->runnableProcessor:Lcom/sun/glass/ui/monocle/RunnableProcessor;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->shutdown()V

    .line 46
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->cursor:Lcom/sun/glass/ui/monocle/NativeCursor;

    if-eqz v1, :cond_0

    .line 47
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->cursor:Lcom/sun/glass/ui/monocle/NativeCursor;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/NativeCursor;->shutdown()V

    .line 49
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->screen:Lcom/sun/glass/ui/monocle/NativeScreen;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/NativePlatform;->screen:Lcom/sun/glass/ui/monocle/NativeScreen;

    invoke-interface {v1}, Lcom/sun/glass/ui/monocle/NativeScreen;->shutdown()V

    .line 52
    :cond_1
    return-void
.end method
