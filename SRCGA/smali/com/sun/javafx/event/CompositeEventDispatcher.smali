.class public abstract Lcom/sun/javafx/event/CompositeEventDispatcher;
.super Lcom/sun/javafx/event/BasicEventDispatcher;
.source "CompositeEventDispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventDispatcher;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/event/BasicEventDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchBubblingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventDispatcher;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/event/CompositeEventDispatcher;->getLastDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;

    move-result-object v3

    move-object v2, v3

    .line 58
    .local v2, "childDispatcher":Lcom/sun/javafx/event/BasicEventDispatcher;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 59
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/event/BasicEventDispatcher;->dispatchBubblingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v1, v3

    .line 60
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->isConsumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    .line 67
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventDispatcher;
    return-object v0

    .line 64
    .restart local v0    # "this":Lcom/sun/javafx/event/CompositeEventDispatcher;
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/event/BasicEventDispatcher;->getPreviousDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public final dispatchCapturingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventDispatcher;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/event/CompositeEventDispatcher;->getFirstDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;

    move-result-object v3

    move-object v2, v3

    .line 42
    .local v2, "childDispatcher":Lcom/sun/javafx/event/BasicEventDispatcher;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 43
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/event/BasicEventDispatcher;->dispatchCapturingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v1, v3

    .line 44
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->isConsumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    .line 51
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventDispatcher;
    return-object v0

    .line 48
    .restart local v0    # "this":Lcom/sun/javafx/event/CompositeEventDispatcher;
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/event/BasicEventDispatcher;->getNextDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public abstract getFirstDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;
.end method

.method public abstract getLastDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;
.end method
