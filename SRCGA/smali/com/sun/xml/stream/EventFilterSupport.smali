.class public Lcom/sun/xml/stream/EventFilterSupport;
.super Ljavax/xml/stream/util/EventReaderDelegate;
.source "EventFilterSupport.java"


# instance fields
.field fEventFilter:Ljavax/xml/stream/EventFilter;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/EventFilterSupport;
    move-object v1, p1

    .local v1, "eventReader":Ljavax/xml/stream/XMLEventReader;
    move-object v2, p2

    .local v2, "eventFilter":Ljavax/xml/stream/EventFilter;
    move-object v3, v0

    invoke-direct {v3}, Ljavax/xml/stream/util/EventReaderDelegate;-><init>()V

    .line 64
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/EventFilterSupport;->setParent(Ljavax/xml/stream/XMLEventReader;)V

    .line 65
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/EventFilterSupport;->fEventFilter:Ljavax/xml/stream/EventFilter;

    .line 66
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/EventFilterSupport;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/xml/stream/EventFilterSupport;->peek()Ljavax/xml/stream/events/XMLEvent;
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 80
    .end local v0    # "this":Lcom/sun/xml/stream/EventFilterSupport;
    :goto_1
    return v0

    .line 78
    .restart local v0    # "this":Lcom/sun/xml/stream/EventFilterSupport;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 80
    .local v1, "ex":Ljavax/xml/stream/XMLStreamException;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/EventFilterSupport;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/xml/stream/EventFilterSupport;->nextEvent()Ljavax/xml/stream/events/XMLEvent;
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/EventFilterSupport;
    return-object v0

    .line 71
    .restart local v0    # "this":Lcom/sun/xml/stream/EventFilterSupport;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 72
    .local v1, "ex":Ljavax/xml/stream/XMLStreamException;
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public nextEvent()Ljavax/xml/stream/events/XMLEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/EventFilterSupport;
    move-object v2, v0

    invoke-super {v2}, Ljavax/xml/stream/util/EventReaderDelegate;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    move-object v2, v0

    invoke-super {v2}, Ljavax/xml/stream/util/EventReaderDelegate;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    move-object v1, v2

    .line 90
    .local v1, "event":Ljavax/xml/stream/events/XMLEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/EventFilterSupport;->fEventFilter:Ljavax/xml/stream/EventFilter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/EventFilter;->accept(Ljavax/xml/stream/events/XMLEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    move-object v2, v1

    move-object v0, v2

    .line 94
    .end local v0    # "this":Lcom/sun/xml/stream/EventFilterSupport;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/EventFilterSupport;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/EventFilterSupport;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 97
    .end local v1    # "event":Ljavax/xml/stream/events/XMLEvent;
    :cond_1
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public nextTag()Ljavax/xml/stream/events/XMLEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/EventFilterSupport;
    move-object v2, v0

    invoke-super {v2}, Ljavax/xml/stream/util/EventReaderDelegate;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    move-object v2, v0

    invoke-super {v2}, Ljavax/xml/stream/util/EventReaderDelegate;->nextTag()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    move-object v1, v2

    .line 105
    .local v1, "event":Ljavax/xml/stream/events/XMLEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/EventFilterSupport;->fEventFilter:Ljavax/xml/stream/EventFilter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/EventFilter;->accept(Ljavax/xml/stream/events/XMLEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    move-object v2, v1

    move-object v0, v2

    .line 109
    .end local v0    # "this":Lcom/sun/xml/stream/EventFilterSupport;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/EventFilterSupport;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/EventFilterSupport;->nextTag()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 112
    .end local v1    # "event":Ljavax/xml/stream/events/XMLEvent;
    :cond_1
    new-instance v2, Ljava/util/NoSuchElementException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public peek()Ljavax/xml/stream/events/XMLEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/EventFilterSupport;
    :goto_0
    move-object v2, v0

    invoke-super {v2}, Ljavax/xml/stream/util/EventReaderDelegate;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    move-object v1, v2

    .line 119
    .local v1, "event":Ljavax/xml/stream/events/XMLEvent;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 122
    .end local v0    # "this":Lcom/sun/xml/stream/EventFilterSupport;
    :goto_1
    return-object v0

    .line 121
    .restart local v0    # "this":Lcom/sun/xml/stream/EventFilterSupport;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/EventFilterSupport;->fEventFilter:Ljavax/xml/stream/EventFilter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/EventFilter;->accept(Ljavax/xml/stream/events/XMLEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    move-object v2, v1

    move-object v0, v2

    goto :goto_1

    .line 125
    :cond_1
    move-object v2, v0

    invoke-super {v2}, Ljavax/xml/stream/util/EventReaderDelegate;->next()Ljava/lang/Object;

    move-result-object v2

    .line 126
    goto :goto_0
.end method
