.class final Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;
.super Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
.source "CompositeEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/event/CompositeEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NormalEventHandlerRecord"
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
.field private final eventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord<TT;>;"
    move-object v1, p1

    .local v1, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;-><init>(Lcom/sun/javafx/event/CompositeEventHandler$1;)V

    .line 207
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;->eventHandler:Ljavafx/event/EventHandler;

    .line 208
    return-void
.end method


# virtual methods
.method public handleBubblingEvent(Ljavafx/event/Event;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;->eventHandler:Ljavafx/event/EventHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 219
    return-void
.end method

.method public handleCapturingEvent(Ljavafx/event/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord<TT;>;"
    .local p1, "event":Ljavafx/event/Event;, "TT;"
    return-void
.end method

.method public isDisconnected()Z
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord<TT;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord<TT;>;"
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
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord<TT;>;"
    move-object v1, p1

    .local v1, "eventProcessor":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move v2, p2

    .local v2, "isFilter":Z
    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;->eventHandler:Ljavafx/event/EventHandler;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord<TT;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
