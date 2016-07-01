.class public final Lcom/sun/javafx/event/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"


# instance fields
.field private inLoop:Z

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventQueue;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayDeque;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/event/EventQueue;->queue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public fire()V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventQueue;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/event/EventQueue;->inLoop:Z

    if-eqz v3, :cond_0

    .line 42
    .line 53
    :goto_0
    return-void

    .line 44
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/event/EventQueue;->inLoop:Z

    .line 46
    :goto_1
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/event/EventQueue;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 47
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/event/EventQueue;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/Event;

    move-object v1, v3

    .line 48
    .local v1, "top":Ljavafx/event/Event;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_1

    .line 51
    .end local v1    # "top":Ljavafx/event/Event;
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/event/EventQueue;->inLoop:Z

    .line 52
    .line 53
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/event/EventQueue;->inLoop:Z

    move-object v3, v2

    throw v3
.end method

.method public postEvent(Ljavafx/event/Event;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventQueue;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventQueue;->queue:Ljava/util/Queue;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 38
    return-void
.end method
