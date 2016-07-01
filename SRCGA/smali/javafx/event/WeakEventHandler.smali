.class public final Ljavafx/event/WeakEventHandler;
.super Ljava/lang/Object;
.source "WeakEventHandler.java"

# interfaces
.implements Ljavafx/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/event/Event;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/event/EventHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final weakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/event/EventHandler",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/event/EventHandler;)V
    .locals 7
    .param p1    # Ljavafx/event/EventHandler;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "eventHandler"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/event/WeakEventHandler;, "Ljavafx/event/WeakEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/event/WeakEventHandler;->weakRef:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/event/WeakEventHandler;, "Ljavafx/event/WeakEventHandler<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/event/WeakEventHandler;->weakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 86
    return-void
.end method

.method public handle(Ljavafx/event/Event;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/event/WeakEventHandler;, "Ljavafx/event/WeakEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;, "TT;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/event/WeakEventHandler;->weakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventHandler;

    move-object v2, v3

    .line 78
    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 79
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 81
    :cond_0
    return-void
.end method

.method public wasGarbageCollected()Z
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/event/WeakEventHandler;, "Ljavafx/event/WeakEventHandler<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/event/WeakEventHandler;->weakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/event/WeakEventHandler;, "Ljavafx/event/WeakEventHandler<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/event/WeakEventHandler;, "Ljavafx/event/WeakEventHandler<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
