.class Lcom/sun/glass/ui/monocle/DispmanPlatform;
.super Lcom/sun/glass/ui/monocle/LinuxPlatform;
.source "DispmanPlatform.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanPlatform;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/LinuxPlatform;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCursor()Lcom/sun/glass/ui/monocle/NativeCursor;
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanPlatform;
    new-instance v1, Lcom/sun/glass/ui/monocle/DispmanCursor;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/DispmanCursor;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/DispmanPlatform;
    return-object v0
.end method

.method protected createScreen()Lcom/sun/glass/ui/monocle/NativeScreen;
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanPlatform;
    new-instance v1, Lcom/sun/glass/ui/monocle/DispmanScreen;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/glass/ui/monocle/DispmanScreen;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/DispmanPlatform;
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
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/DispmanPlatform;
    move-object v1, p1

    .local v1, "attributes":[I
    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/glass/ui/monocle/DispmanPlatform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    if-nez v2, :cond_0

    .line 43
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/monocle/DispmanAcceleratedScreen;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/DispmanAcceleratedScreen;-><init>([I)V

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/DispmanPlatform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    .line 45
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/DispmanPlatform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/DispmanPlatform;
    monitor-exit v6

    return-object v0

    .line 42
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/DispmanPlatform;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/DispmanPlatform;
    throw v0
.end method
