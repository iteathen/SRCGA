.class final Ljava/util/concurrent/CompletableFuture$CompletionNode;
.super Ljava/lang/Object;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompletionNode"
.end annotation


# instance fields
.field final completion:Ljava/util/concurrent/CompletableFuture$Completion;

.field volatile next:Ljava/util/concurrent/CompletableFuture$CompletionNode;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture$Completion;)V
    .locals 4

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Ljava/util/concurrent/CompletableFuture$CompletionNode;
    move-object v1, p1

    .local v1, "completion":Ljava/util/concurrent/CompletableFuture$Completion;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljava/util/concurrent/CompletableFuture$CompletionNode;->completion:Ljava/util/concurrent/CompletableFuture$Completion;

    return-void
.end method
