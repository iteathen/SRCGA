.class Ljavafxports/android/FXDalvikEntity$2;
.super Ljava/lang/Object;
.source "FXDalvikEntity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafxports/android/FXDalvikEntity;->jfxEventsLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafxports/android/FXDalvikEntity;


# direct methods
.method constructor <init>(Ljavafxports/android/FXDalvikEntity;)V
    .locals 4

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/FXDalvikEntity;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafxports/android/FXDalvikEntity$2;->this$0:Ljavafxports/android/FXDalvikEntity;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafxports/android/FXDalvikEntity$2;->this$0:Ljavafxports/android/FXDalvikEntity;

    invoke-static {v1}, Ljavafxports/android/FXDalvikEntity;->access$100(Ljavafxports/android/FXDalvikEntity;)V

    .line 314
    const-string v1, "FXEntity"

    const-string v2, "FXActivityEventsLoop finished."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 315
    # getter for: Ljavafxports/android/FXDalvikEntity;->cdlEvLoopFinished:Ljava/util/concurrent/CountDownLatch;
    invoke-static {}, Ljavafxports/android/FXDalvikEntity;->access$000()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 316
    return-void
.end method
