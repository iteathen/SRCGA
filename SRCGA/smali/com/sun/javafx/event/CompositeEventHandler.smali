.class public final Lcom/sun/javafx/event/CompositeEventHandler;
.super Ljava/lang/Object;
.source "CompositeEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;,
        Lcom/sun/javafx/event/CompositeEventHandler$NormalEventFilterRecord;,
        Lcom/sun/javafx/event/CompositeEventHandler$WeakEventHandlerRecord;,
        Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;,
        Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/event/Event;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private eventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private firstRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord",
            "<TT;>;"
        }
    .end annotation
.end field

.field private lastRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private append(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord",
            "<TT;>;",
            "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "prevRecord":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    move-object v2, p2

    .local v2, "newRecord":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 153
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$000(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    move-object v3, v4

    .line 154
    .local v3, "nextRecord":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$002(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    .line 160
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 161
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$102(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    .line 166
    :goto_1
    move-object v4, v2

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$102(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    .line 167
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$002(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    .line 168
    return-void

    .line 156
    .end local v3    # "nextRecord":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/CompositeEventHandler;->firstRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-object v3, v4

    .line 157
    .restart local v3    # "nextRecord":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/event/CompositeEventHandler;->firstRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    goto :goto_0

    .line 163
    :cond_1
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/event/CompositeEventHandler;->lastRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    goto :goto_1
.end method

.method private createEventFilterRecord(Ljavafx/event/EventHandler;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)",
            "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v2, v1

    instance-of v2, v2, Ljavafx/event/WeakEventHandler;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Ljavafx/event/WeakEventHandler;

    invoke-direct {v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler$WeakEventFilterRecord;-><init>(Ljavafx/event/WeakEventHandler;)V

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    :cond_0
    new-instance v2, Lcom/sun/javafx/event/CompositeEventHandler$NormalEventFilterRecord;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler$NormalEventFilterRecord;-><init>(Ljavafx/event/EventHandler;)V

    goto :goto_0
.end method

.method private createEventHandlerRecord(Ljavafx/event/EventHandler;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)",
            "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v2, v1

    instance-of v2, v2, Ljavafx/event/WeakEventHandler;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sun/javafx/event/CompositeEventHandler$WeakEventHandlerRecord;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    check-cast v4, Ljavafx/event/WeakEventHandler;

    invoke-direct {v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler$WeakEventHandlerRecord;-><init>(Ljavafx/event/WeakEventHandler;)V

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    :cond_0
    new-instance v2, Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler$NormalEventHandlerRecord;-><init>(Ljavafx/event/EventHandler;)V

    goto :goto_0
.end method

.method private find(Ljavafx/event/EventHandler;Z)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;Z)",
            "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "eventProcessor":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move v2, p2

    .local v2, "isFilter":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/CompositeEventHandler;->firstRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-object v3, v4

    .line 174
    .local v3, "record":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 175
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->isDisconnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->remove(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)V

    .line 181
    :cond_0
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$000(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 177
    :cond_1
    move-object v4, v3

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->stores(Ljavafx/event/EventHandler;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    move-object v4, v3

    move-object v0, v4

    .line 184
    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    :goto_1
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private remove(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "record":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$100(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    move-object v2, v4

    .line 132
    .local v2, "prevRecord":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$000(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    move-object v3, v4

    .line 134
    .local v3, "nextRecord":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 135
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$002(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    .line 140
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 141
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$102(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    .line 147
    :goto_1
    return-void

    .line 137
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/event/CompositeEventHandler;->firstRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    goto :goto_0

    .line 143
    :cond_1
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/event/CompositeEventHandler;->lastRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    goto :goto_1
.end method


# virtual methods
.method public addEventFilter(Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler;->find(Ljavafx/event/EventHandler;Z)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v2

    if-nez v2, :cond_0

    .line 61
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/event/CompositeEventHandler;->lastRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->createEventFilterRecord(Ljavafx/event/EventHandler;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler;->append(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)V

    .line 63
    :cond_0
    return-void
.end method

.method public addEventHandler(Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler;->find(Ljavafx/event/EventHandler;Z)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v2

    if-nez v2, :cond_0

    .line 48
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/event/CompositeEventHandler;->lastRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->createEventHandlerRecord(Ljavafx/event/EventHandler;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler;->append(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)V

    .line 50
    :cond_0
    return-void
.end method

.method containsFilter(Ljavafx/event/EventHandler;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler;->find(Ljavafx/event/EventHandler;Z)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method containsHandler(Ljavafx/event/EventHandler;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler;->find(Ljavafx/event/EventHandler;Z)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispatchBubblingEvent(Ljavafx/event/Event;)V
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v4, v1

    move-object v2, v4

    .line 75
    .local v2, "specificEvent":Ljavafx/event/Event;, "TT;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/CompositeEventHandler;->firstRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-object v3, v4

    .line 76
    .local v3, "record":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 77
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->isDisconnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->remove(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)V

    .line 82
    :goto_1
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$000(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 80
    :cond_0
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->handleBubblingEvent(Ljavafx/event/Event;)V

    goto :goto_1

    .line 85
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/CompositeEventHandler;->eventHandler:Ljavafx/event/EventHandler;

    if-eqz v4, :cond_2

    .line 86
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/CompositeEventHandler;->eventHandler:Ljavafx/event/EventHandler;

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 88
    :cond_2
    return-void
.end method

.method public dispatchCapturingEvent(Ljavafx/event/Event;)V
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v4, v1

    move-object v2, v4

    .line 93
    .local v2, "specificEvent":Ljavafx/event/Event;, "TT;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/CompositeEventHandler;->firstRecord:Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-object v3, v4

    .line 94
    .local v3, "record":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 95
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->isDisconnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->remove(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)V

    .line 100
    :goto_1
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->access$000(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 98
    :cond_0
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;->handleCapturingEvent(Ljavafx/event/Event;)V

    goto :goto_1

    .line 102
    :cond_1
    return-void
.end method

.method public getEventHandler()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/event/CompositeEventHandler;->eventHandler:Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    return-object v0
.end method

.method public removeEventFilter(Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->find(Ljavafx/event/EventHandler;Z)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v3

    move-object v2, v3

    .line 67
    .local v2, "record":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 68
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler;->remove(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)V

    .line 70
    :cond_0
    return-void
.end method

.method public removeEventHandler(Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/event/CompositeEventHandler;->find(Ljavafx/event/EventHandler;Z)Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;

    move-result-object v3

    move-object v2, v3

    .line 54
    .local v2, "record":Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;, "Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 55
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/event/CompositeEventHandler;->remove(Lcom/sun/javafx/event/CompositeEventHandler$EventProcessorRecord;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setEventHandler(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/CompositeEventHandler;, "Lcom/sun/javafx/event/CompositeEventHandler<TT;>;"
    move-object v1, p1

    .local v1, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/event/CompositeEventHandler;->eventHandler:Ljavafx/event/EventHandler;

    .line 40
    return-void
.end method
