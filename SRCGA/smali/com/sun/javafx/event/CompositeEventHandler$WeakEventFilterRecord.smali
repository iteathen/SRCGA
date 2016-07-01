.class final Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;
.super Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
.source "CompositeEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/event/CompositeEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakEventFilterRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/event/Event;",
        ">",
        "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final weakEventFilter:Ljavafx/event/WeakEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/WeakEventHandler",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/event/WeakEventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/WeakEventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord<TT;>;"
    move-object v1, p1

    .local v1, "weakEventFilter":Ljavafx/event/WeakEventHandler;, "Ljavafx/event/WeakEventHandler<-TT;>;"
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;-><init>(Lcom/sun/javafx/event/CompositeEventHandler$1;)V

    .line 297
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;->weakEventFilter:Ljavafx/event/WeakEventHandler;

    .line 298
    return-void
.end method


# virtual methods
.method public handleBubblingEvent(Ljavafx/event/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord<TT;>;"
    .local p1, "event":Ljavafx/event/Event;, "TT;"
    return-void
.end method

.method public handleCapturingEvent(Ljavafx/event/Event;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;->weakEventFilter:Ljavafx/event/WeakEventHandler;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/event/WeakEventHandler;->handle(Ljavafx/event/Event;)V

    .line 313
    return-void
.end method

.method public isDisconnected()Z
    .locals 2

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;->weakEventFilter:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v1}, Ljavafx/event/WeakEventHandler;->wasGarbageCollected()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord<TT;>;"
    return v0
.end method

.method public stores(Ljavafx/event/EventHandler;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord<TT;>;"
    move-object v1, p1

    .local v1, "eventProcessor":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move v2, p2

    .local v2, "isFilter":Z
    move v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;->weakEventFilter:Ljavafx/event/WeakEventHandler;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord<TT;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
