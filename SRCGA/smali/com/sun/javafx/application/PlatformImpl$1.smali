.class final Lcom/sun/javafx/application/PlatformImpl$1;
.super Ljava/lang/Object;
.source "PlatformImpl.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/application/PlatformImpl;->startup(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/PlatformImpl$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedTopLevelWindows(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/tk/TKStage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/PlatformImpl$1;
    move-object v1, p1

    .local v1, "windows":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/tk/TKStage;>;"
    # getter for: Lcom/sun/javafx/application/PlatformImpl;->numWindows:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 201
    # invokes: Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->access$100()V

    .line 202
    return-void
.end method

.method public exitedLastNestedLoop()V
    .locals 0

    .prologue
    .line 206
    # invokes: Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->access$100()V

    .line 207
    return-void
.end method
