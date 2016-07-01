.class final Ljavafxports/android/FXDalvikEntity$1;
.super Ljava/lang/Object;
.source "FXDalvikEntity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafxports/android/FXDalvikEntity;->notify_glassShutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$1;
    :try_start_0
    # getter for: Ljavafxports/android/FXDalvikEntity;->cdlEvLoopFinished:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Ljavafxports/android/FXDalvikEntity;->access$000()Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .line 288
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
