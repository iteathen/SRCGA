.class public abstract Lcom/sun/javafx/event/BasicEventDispatcher;
.super Ljava/lang/Object;
.source "BasicEventDispatcher.java"

# interfaces
.implements Ljavafx/event/EventDispatcher;


# instance fields
.field private nextDispatcher:Lcom/sun/javafx/event/BasicEventDispatcher;

.field private previousDispatcher:Lcom/sun/javafx/event/BasicEventDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchBubblingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    return-object v0
.end method

.method public dispatchCapturingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    return-object v0
.end method

.method public dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, p2

    .local v2, "tail":Ljavafx/event/EventDispatchChain;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/event/BasicEventDispatcher;->dispatchCapturingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v1, v3

    .line 53
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->isConsumed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const/4 v3, 0x0

    move-object v0, v3

    .line 64
    .end local v0    # "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    :goto_0
    return-object v0

    .line 56
    .restart local v0    # "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v1, v3

    .line 57
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 58
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/event/BasicEventDispatcher;->dispatchBubblingEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v1, v3

    .line 59
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/Event;->isConsumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 64
    :cond_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public final getNextDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/event/BasicEventDispatcher;->nextDispatcher:Lcom/sun/javafx/event/BasicEventDispatcher;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    return-object v0
.end method

.method public final getPreviousDispatcher()Lcom/sun/javafx/event/BasicEventDispatcher;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/event/BasicEventDispatcher;->previousDispatcher:Lcom/sun/javafx/event/BasicEventDispatcher;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    return-object v0
.end method

.method public final insertNextDispatcher(Lcom/sun/javafx/event/BasicEventDispatcher;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/BasicEventDispatcher;
    move-object v1, p1

    .local v1, "newDispatcher":Lcom/sun/javafx/event/BasicEventDispatcher;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/BasicEventDispatcher;->nextDispatcher:Lcom/sun/javafx/event/BasicEventDispatcher;

    if-eqz v2, :cond_0

    .line 86
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/BasicEventDispatcher;->nextDispatcher:Lcom/sun/javafx/event/BasicEventDispatcher;

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/event/BasicEventDispatcher;->previousDispatcher:Lcom/sun/javafx/event/BasicEventDispatcher;

    .line 88
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/event/BasicEventDispatcher;->nextDispatcher:Lcom/sun/javafx/event/BasicEventDispatcher;

    iput-object v3, v2, Lcom/sun/javafx/event/BasicEventDispatcher;->nextDispatcher:Lcom/sun/javafx/event/BasicEventDispatcher;

    .line 89
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lcom/sun/javafx/event/BasicEventDispatcher;->previousDispatcher:Lcom/sun/javafx/event/BasicEventDispatcher;

    .line 90
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/event/BasicEventDispatcher;->nextDispatcher:Lcom/sun/javafx/event/BasicEventDispatcher;

    .line 91
    return-void
.end method
