.class public Ljavax/xml/stream/util/EventReaderDelegate;
.super Ljava/lang/Object;
.source "EventReaderDelegate.java"

# interfaces
.implements Ljavax/xml/stream/XMLEventReader;


# instance fields
.field private reader:Ljavax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLEventReader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->close()V

    .line 82
    return-void
.end method

.method public getElementText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->getElementText()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/EventReaderDelegate;
    return-object v0
.end method

.method public getParent()Ljavax/xml/stream/XMLEventReader;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/EventReaderDelegate;
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLEventReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/EventReaderDelegate;
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/EventReaderDelegate;
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/EventReaderDelegate;
    return-object v0
.end method

.method public nextEvent()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/EventReaderDelegate;
    return-object v0
.end method

.method public nextTag()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->nextTag()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/EventReaderDelegate;
    return-object v0
.end method

.method public peek()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/EventReaderDelegate;
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->remove()V

    .line 104
    return-void
.end method

.method public setParent(Ljavax/xml/stream/XMLEventReader;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/EventReaderDelegate;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLEventReader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/stream/util/EventReaderDelegate;->reader:Ljavax/xml/stream/XMLEventReader;

    .line 47
    return-void
.end method
