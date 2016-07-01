.class public Ljavafx/concurrent/WorkerStateEvent;
.super Ljavafx/event/Event;
.source "WorkerStateEvent.java"


# static fields
.field public static final ANY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKER_STATE_CANCELLED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKER_STATE_FAILED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKER_STATE_READY:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKER_STATE_RUNNING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKER_STATE_SCHEDULED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKER_STATE_SUCCEEDED:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "WORKER_STATE"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/concurrent/WorkerStateEvent;->ANY:Ljavafx/event/EventType;

    .line 49
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/concurrent/WorkerStateEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WORKER_STATE_READY"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_READY:Ljavafx/event/EventType;

    .line 56
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/concurrent/WorkerStateEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WORKER_STATE_SCHEDULED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_SCHEDULED:Ljavafx/event/EventType;

    .line 63
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/concurrent/WorkerStateEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WORKER_STATE_RUNNING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_RUNNING:Ljavafx/event/EventType;

    .line 70
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/concurrent/WorkerStateEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WORKER_STATE_SUCCEEDED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_SUCCEEDED:Ljavafx/event/EventType;

    .line 77
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/concurrent/WorkerStateEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WORKER_STATE_CANCELLED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_CANCELLED:Ljavafx/event/EventType;

    .line 84
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/concurrent/WorkerStateEvent;->ANY:Ljavafx/event/EventType;

    const-string v3, "WORKER_STATE_FAILED"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/concurrent/WorkerStateEvent;->WORKER_STATE_FAILED:Ljavafx/event/EventType;

    return-void
.end method

.method public constructor <init>(Ljavafx/concurrent/Worker;Ljavafx/event/EventType;)V
    .locals 7
    .param p1    # Ljavafx/concurrent/Worker;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "worker"
        .end annotation
    .end param
    .param p2    # Ljavafx/event/EventType;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventType"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/concurrent/Worker;",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/concurrent/WorkerStateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/WorkerStateEvent;
    move-object v1, p1

    .local v1, "worker":Ljavafx/concurrent/Worker;
    move-object v2, p2

    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/concurrent/WorkerStateEvent;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    instance-of v5, v5, Ljavafx/event/EventTarget;

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Ljavafx/event/EventTarget;

    :goto_0
    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Ljavafx/event/Event;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)V

    .line 97
    return-void

    .line 96
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/WorkerStateEvent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/concurrent/WorkerStateEvent;->getSource()Ljavafx/concurrent/Worker;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/WorkerStateEvent;
    return-object v0
.end method

.method public getSource()Ljavafx/concurrent/Worker;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/concurrent/WorkerStateEvent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/event/Event;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/concurrent/Worker;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/concurrent/WorkerStateEvent;
    return-object v0
.end method
