.class Lcom/sun/media/jfxmediaimpl/MediaPulseTask;
.super Ljava/util/TimerTask;
.source "NativeMediaPlayer.java"


# instance fields
.field playerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V
    .locals 7

    .prologue
    .line 1687
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MediaPulseTask;
    move-object v1, p1

    .local v1, "player":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/TimerTask;-><init>()V

    .line 1688
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/MediaPulseTask;->playerRef:Ljava/lang/ref/WeakReference;

    .line 1689
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1693
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MediaPulseTask;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/MediaPulseTask;->playerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-object v1, v2

    .line 1694
    .local v1, "player":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 1695
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->doMediaPulseTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1696
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/MediaPulseTask;->cancel()Z

    move-result v2

    .line 1701
    :cond_0
    :goto_0
    return-void

    .line 1699
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/MediaPulseTask;->cancel()Z

    move-result v2

    goto :goto_0
.end method
