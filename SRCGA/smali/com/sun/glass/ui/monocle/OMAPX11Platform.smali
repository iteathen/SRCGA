.class Lcom/sun/glass/ui/monocle/OMAPX11Platform;
.super Lcom/sun/glass/ui/monocle/OMAPPlatform;
.source "OMAPX11Platform.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPX11Platform;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/OMAPPlatform;-><init>()V

    return-void
.end method


# virtual methods
.method protected createScreen()Lcom/sun/glass/ui/monocle/NativeScreen;
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPX11Platform;
    new-instance v1, Lcom/sun/glass/ui/monocle/X11Screen;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/X11Screen;-><init>(Z)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/OMAPX11Platform;
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
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/OMAPX11Platform;
    move-object v1, p1

    .local v1, "attributes":[I
    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/glass/ui/monocle/OMAPX11Platform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    if-nez v2, :cond_0

    .line 39
    move-object v2, v0

    new-instance v3, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;-><init>([I)V

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/OMAPX11Platform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    .line 41
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/OMAPX11Platform;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/OMAPX11Platform;
    monitor-exit v6

    return-object v0

    .line 38
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/OMAPX11Platform;
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/OMAPX11Platform;
    throw v0
.end method
