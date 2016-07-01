.class final Lcom/sun/javafx/application/LauncherImpl$1;
.super Ljava/lang/Object;
.source "LauncherImpl.java"

# interfaces
.implements Lcom/sun/javafx/application/PlatformImpl$FinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/application/LauncherImpl;->launchApplication1(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$exitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$pShutdownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$pStartCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$shutdownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$startCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 8

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/LauncherImpl$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/application/LauncherImpl$1;->val$startCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/javafx/application/LauncherImpl$1;->val$shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/javafx/application/LauncherImpl$1;->val$pStartCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/javafx/application/LauncherImpl$1;->val$pShutdownLatch:Ljava/util/concurrent/CountDownLatch;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/javafx/application/LauncherImpl$1;->val$exitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitCalled()V
    .locals 3

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/LauncherImpl$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/application/LauncherImpl$1;->val$exitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 737
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/application/LauncherImpl$1;->val$shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 738
    return-void
.end method

.method public idle(Z)V
    .locals 3

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/LauncherImpl$1;
    move v1, p1

    .local v1, "implicitExit":Z
    move v2, v1

    if-nez v2, :cond_0

    .line 723
    .line 732
    :goto_0
    return-void

    .line 727
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/LauncherImpl$1;->val$startCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 728
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/LauncherImpl$1;->val$shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 732
    :cond_1
    :goto_1
    goto :goto_0

    .line 729
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/LauncherImpl$1;->val$pStartCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 730
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/LauncherImpl$1;->val$pShutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1
.end method
