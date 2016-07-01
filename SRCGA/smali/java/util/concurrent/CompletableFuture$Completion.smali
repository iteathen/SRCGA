.class abstract Ljava/util/concurrent/CompletableFuture$Completion;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Completion"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$Completion;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    return-void
.end method
